git add .

echo "Please enter commit message"

read commit
var=$(git log -1 --pretty=format:%s)


if [ $var == $commit ]
then
    echo "Everything is updated"
else
    git commit -m $commit
    git push
    echo "All pushed"
fi
    echo "Something went wrong, please check the log file that I'll generate"
    echo "Generating the file..."
    git log > git-log.txt
    echo "Git log stored in git-log.txt"

