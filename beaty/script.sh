#! /bin/bash

filenames=( \
   "team1_sdlc" \
   "team1_repo" \
   "team2_repo" \
)

urls=( \
    "https://github.com/Mirroraculous/Mirroraculous/projects/1" \
    "https://github.com/Mirroraculous/Mirroraculous/graphs/contributors" \
    "https://github.com/team-discovery-channel/compose/graphs/contributors" \
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
