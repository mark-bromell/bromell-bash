export BROMELL_BASH="$HOME/bromell-bash"

# Ask to continue or not
cont() {
    read -p "Press enter to continue (or Ctrl^C to exit)" y
}

# Iterate over directories, and source the main.sh file.
directories=($(ls -d $BROMELL_BASH/*))
for directory in ${directories[@]}; do

    # Remove traling slash
    length=${#directory}
    last_char=${directory:length-1:1}
    [[ $last_char == "/" ]] && directory=${directory:0:length-1}
    :

    if [ -e $directory/main.sh ]; then
        source $directory/main.sh
    fi
done
