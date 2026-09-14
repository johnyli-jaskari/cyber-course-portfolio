# Your final script
```
#!/bin/bash

read -p "Enter a directory name: " dir_name

if [ -z "$dir_name" ]; then
    echo "Error: no name was given."
    exit 1
fi

read -p "How many files? " count

mkdir -p "$dir_name"
echo "Created directory: $dir_name"

for i in $(seq 1 "$count"); do
    touch "$dir_name/file$i.txt"
done

echo "Created $count files in $dir_name"
```
