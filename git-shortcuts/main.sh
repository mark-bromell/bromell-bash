# Git commit and push
gitc() {
    message=$1
    git add .
    git status
    cont
    git commit -m "$message"
    git push
}

# Git commit, push, merge, push
gitcm() {
    message=$1
    gitc $message

    from_branch=$(git branch --show-current)
    to_branch=$2
    git checkout $to_branch
    echo "Merge $from_branch into $to_branch?"
    cont
    git merge $from_branch
    git push
    git checkout $from_branch
}