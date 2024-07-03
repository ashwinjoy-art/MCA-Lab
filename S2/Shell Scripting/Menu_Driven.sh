#!/usr/bin/bash

while true; do
    echo "Menu:"
    echo "a) All ordinary files"
    echo "b) All directory files"
    echo "c) All special files"
    echo "d) All files readable to UGO"
    echo "e) All files writable to UGO"
    echo "f) All files executable to UGO"
    echo "q) Quit"
    echo "Enter your choice:"

    read choice

    case $choice in
        a)
            echo "All ordinary files:"
            ls -l | grep "^-"
            ;;
        b)
            echo "All directory files:"
            ls -l | grep "^d"
            ;;
        c)
            echo "All special files:"
            ls -l | grep "^[^d-]"
            ;;
        d)
            echo "All files readable to UGO:"
            ls -l | grep -E "^-[r-]{3}"
            ;;
        e)
            echo "All files writable to UGO:"
            ls -l | grep -E "^-[w-]{3}"
            ;;
        f)
            echo "All files executable to UGO:"
            ls -l | grep -E "^-[x-]{3}"
            ;;
        q)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac
done
