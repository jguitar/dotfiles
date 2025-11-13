# heroku-backup.zsh

deploy-to-staging() {
    echo "Merging current branch into staging..."
    # store current branch in a variable
    current_branch=$(git branch --show-current)
    git checkout staging
    git merge $current_branch
    echo "Pushing to staging..."
    git push
    git checkout $current_branch
    git branch -D staging
    echo "Done"
}
