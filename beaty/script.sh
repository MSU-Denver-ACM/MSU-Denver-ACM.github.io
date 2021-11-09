#! /bin/bash

urls=( \
    "https://github.com/Dandle-App/Dandle-Backend/graphs/contributors" \
    "https://github.com/Dandle-App/Dandle-Frontend/graphs/contributors" \
    "https://github.com/MSU-CS4360-Nuclear/nuclear/graphs/contributors" \
    "https://github.com/freyakgray/TwinPrimes/graphs/contributors" \
)

length=$((${#urls[@]} - 1))
for i in $(eval echo "{0..$length}")
do
    rm -f ${i}.png
    pageres --filename=${i} --scale='.5' ${urls[${i}]}
    echo "https://raw.githubusercontent.com/MSU-Denver-ACM/MSU-Denver-ACM.github.io/beaty_web_images/beaty/${i}.png"
done
