#! /bin/bash

filenames=( \
   "git_team1" \
   "git_team2" \
   "trello_team1" \
   "trello_team2" \
)

urls=( \
    "https://github.com/GitNickProgramming/Dork/graphs/contributors" \
    "https://github.com/team-c3250-noname/Dork/graphs/contributors" \
    "https://github.com/cs-3250/dork/graphs/contributors" \
    "https://trello.com/b/ADkrbwOr/" \
    "https://trello.com/b/UH1ZblkH/" \
    "https://trello.com/b/JcpTsXlj/" \
)

length=$((${#filenames[@]} - 1))
for i in $(eval echo "{0..$length}")
do
    filename=${filenames[$i]}
    # echo ${urls[$i]}
    rm -f ${filename}.png
    pageres \
        --filename=${filenames[$i]} \
        --scale='.5' \
        ${urls[$i]}
done

# https://raw.githubusercontent.com/MSU-Denver-ACM/MSU-Denver-ACM.github.io/beaty_web_images/beaty/git_team1.png

git commit -am `date "+%Y-%m-%d:%H:%M:%S"`
git push
