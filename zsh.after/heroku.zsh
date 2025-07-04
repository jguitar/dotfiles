# heroku.sh
# Copied/Adapted from Víctor's dotfiles
h() {

    declare -A projects

    projects["PAS:uat"]="pas-uat"
    projects["PAS:pro"]="pas-production"
    projects["Funnel:uat"]="barkibu-insurance-uat"
    projects["Funnel:pro"]="barkibu-insurance-production"
    projects["GlobalAdmin:uat"]="barkibu-global-admin-staging"
    projects["GlobalAdmin:pro"]="barkibu-global-admin"
    unset project

    case $PWD in
        $HOME/Documents/source/pas* )
            project=${projects["PAS:$1"]:-$projects["PAS:pro"]}
        ;;
        $HOME/Documents/source/barkibu_insurance* )
            project=${projects["Funnel:$1"]:-$projects["Funnel:pro"]}
        ;;
        $HOME/Documents/source/global_admin* )
            project=${projects["GlobalAdmin:$1"]:-$projects["GlobalAdmin:pro"]}
        ;;
    esac

    if [[ -v project ]]; then
        echo "Running rails console in $project"
        heroku run -a $project 'rails c -- --nomultiline'
    else
        echo "ERROR: There's no project configured in this route, check the $HOME/Documents/source/dotfiles/zsh.after/heroku.sh" >&2
    fi
}
