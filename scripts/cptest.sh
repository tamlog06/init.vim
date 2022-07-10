# pyenv shell 3.9.11
pyenv shell ABC

count=0
files='./*.py'
for f in $files; do
    tmp=${f%.*}
    tmp=${tmp##*/}
    if [ $tmp == "generate" ]; then
        continue
    fi
    problem_name=$tmp
    path=$f
    count=$((count + 1))
done

if [ $count -ne 1 ]; then
    echo "Warning: There should be only one file in the current directory"
    echo "exit status 1"
    exit 1
fi

base_url=${problem_name%_*}

echo $problem_name
echo $base_url
echo $file

# make test 
oj dl https://atcoder.jp/contests/${base_url}/tasks/${problem_name//-/_}

oj test -c "python3 $path"


# rm -rf test/${problem_name}
