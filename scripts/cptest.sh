# pyenv shell 3.9.11
pyenv shell ABC

count=0
files='./*.py'
for f in $files; do
    file=$f
    count=$((count + 1))
done

if [ $count -ne 1 ]; then
    echo "Warning: There should be only one file in the current directory"
    echo "exit status 1"
    exit 1
fi

problem_name=${file%.*}
problem_name=${problem_name##*/}
base_url=${problem_name%_*}

echo $problem_name
echo $base_url

# make test 
oj dl https://atcoder.jp/contests/${base_url}/tasks/${problem_name//-/_}

oj test -c "python3 $file"


# rm -rf test/${problem_name}
