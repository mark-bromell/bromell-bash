gitc() {
    message=$1
    git add .
    git status
    cont
    git commit -m message
    git push
}