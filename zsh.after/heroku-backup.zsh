# heroku-backup.zsh

hbackup() {

    declare -A apps

    apps["PAS:pre"]="pas-uat"
    apps["PAS:pro"]="pas-production"
    apps["Funnel:pre"]="barkibu-insurance-uat"
    apps["Funnel:pro"]="barkibu-insurance-production"
    apps["GlobalAdmin:pre"]="barkibu-global-admin-staging"
    apps["GlobalAdmin:pro"]="barkibu-global-admin"
    unset app

    case $PWD in
        $HOME/Documents/source/pas* )
            app=${apps["PAS:$1"]:-$apps["PAS:pre"]}
            project=pas
            db_user=pas_system
            db_name=pas_dev
            docker_db_container=pas-db-1
        ;;
        $HOME/Documents/source/barkibu_insurance* )
            app=${apps["Funnel:$1"]:-$apps["Funnel:pre"]}
            project=barkibu_insurance
            db_user=postgres
            db_name=barkibu_insurance_dev
            docker_db_container=barkibu_insurance-postgres-1
        ;;
        $HOME/Documents/source/global_admin* )
            app=${apps["GlobalAdmin:$1"]:-$apps["GlobalAdmin:pre"]}
            project=global_admin
            db_user=postgres
            db_name=global_admin_development
            docker_db_container=global_admin-db-1
        ;;
    esac

    if [[ -v app ]]; then
        echo "App: $app"
        echo "Creating backup..."
        heroku pg:backups:capture --app $app

        echo "Downloading backup..."
        curl -o /tmp/latest-$app.dump `heroku pg:backups:url --app $app`

        echo "Copying to Docker..."
        docker cp /tmp/latest-$app.dump $docker_db_container:/latest-$app.dump

        echo "Restoring backup..."
        docker exec $docker_db_container pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $db_user -d $db_name /latest-$app.dump
    else
        echo "ERROR: There's no app configured in this route, check the $HOME/Documents/source/dotfiles/zsh.after/heroku-backup.zsh" >&2
    fi
}
