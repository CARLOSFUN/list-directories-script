#!/bin/bash

# List of directories to open
directories=(/boot /proc /sys /var /usr /lib /dev /etc /opt /bin /sbin /home /media /mnt /root /tmp)

# Function to list the contents of a directory and pause
list_directory() {
    local dir=$1
    echo "Contents of $dir:"
    ls "$dir"
    echo
    read -p "Press Enter to continue to the next directory..."
}

# Iterate through each directory and list its contents
for dir in "${directories[@]}"; do
    list_directory "$dir"
done

