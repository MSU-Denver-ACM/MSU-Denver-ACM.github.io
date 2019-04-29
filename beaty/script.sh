#! /bin/bash

filenames=( \
   "git_team1" \
   "git_team2" \
   "git_team3" \
   "git_team4" \
   "git_team5" \
   "git_team6" \
   "trello_team1" \
   "trello_team2" \
   "trello_team3" \
   "trello_team4" \
   "trello_team5" \
   "trello_team6" \
)

urls=( \
"https://github.com/AllisonDLucca/3250-spring-2019-team-1/graphs/contributors" \
"https://github.com/rhill53/CS3250SpringH2KTB/graphs/contributors" \
"https://github.com/git-confused-team3/GitConfused/graphs/contributors" \
"https://github.com/msudenvercs/3250-spring-2019-team-4/graphs/contributors" \
"https://github.com/johnhshapiro/trelloship" \
"https://github.com/rykonermana/3250-spring-2019-team-6/graphs/contributors" \
    "https://trello.com/b/45CG5wWY" \
    "https://trello.com/b/ZqjlOib5" \
    "https://trello.com/b/rds2jt1w" \
    "https://trello.com/b/K4Ub1cnv" \
    "https://trello.com/b/CRCJVEAG" \
    "https://trello.com/b/Fg2LIJyP" \
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
