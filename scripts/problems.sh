#!/bin/zsh
# zsh problems.sh ABC 240

dir=problems/$1/$2
if [ $1 = ABC ]; then
    KIND=abc$2
    if [ $2 -le 125 ]; then
        fileary=(a b c d)
    elif [ $2 -le 211 ]; then
        fileary=(a b c d e f)
    #elif [ $2 -le 232 ]; then
    else
    fileary=(a b c d e f g h)
    #fileary=(a b c d e f g ex)
    fi
    base_problem_name=${(L)1}$2
elif [ $1 = ARC ]; then
    KIND=arc$2
    fileary=(a b c d e f)
    base_problem_name=${(L)1}$2
elif [ $1 = AGC ]; then
    KIND=agc$2
    if [ $2 -le 57 ]; then
        fileary=(a b c d)
    elif [ $2 -le 103 ]; then
        fileary=(c d e f)
    else
        fileary=(a b c d e f)
    fi
    base_problem_name=${(L)1}$2
elif [ $1 = Other ]; then
    KIND=$2
    fileary=(a b c d e f)
    base_problem_name=$2
else
    echo "Error: $1"
    exit 1
fi

if [ -d $dir ]; then
    echo "Error: $dir already exists"
    exit 1
else
    mkdir $dir
fi

for i in ${fileary[@]}
do
#problem_name=${(L)1}$2_$i
problem_name=${base_problem_name}_$i
file_name=${problem_name}.py
base_url=${problem_name%_*}
echo $problem_name

mkdir ${dir}/${i}
cd ${dir}/${i}
oj-template -t main.py -f $file_name https://atcoder.jp/contests/${base_url}/tasks/${problem_name//-/_}
oj-template -t generate.py https://atcoder.jp/contests/${base_url}/tasks/${problem_name//-/_}
cd ../../../..
done
