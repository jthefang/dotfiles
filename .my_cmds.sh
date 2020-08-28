function j() {
    #opens journal for given day, else defaults to entry for current day
    if [ -z "$1" ]
        then
            TODAY=$(date +"%y-%m-%d")
            vim ~/Journal/$TODAY.txt
        else
            FILE=~/Journal/"$1".txt 
            if [ -f $FILE ]; then
                vim $FILE
            else
                echo "No journal entry for $1 exists."
            fi
    fi
}
