!#/bin/bash

s='./Touch'
d='./'

echo "Do you want to copy to touch (Y) or copy from touch, (Z)" 
read Reply

if [ "$Reply" = Y ]; then
    rsync -av --exclude='Touch' $d* $s
    echo "Congrats, you have copied to touch"

elif [ "$Reply" = Z ]; then
    cp -r $s/* $d
    echo "Congrats, you have copied from touch"

else 

       echo "Invalid option. Please type Y or Z."
fi

exit 0

