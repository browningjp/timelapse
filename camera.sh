#!/bin/bash

DEST="USER@HOST" # Configure the destination for the photos here
DATE=$(date +"%Y-%m-%d_%H%M")

raspistill -o /home/pi/$DATE.jpg

scp /home/pi/$DATE.jpg $DEST:~/roofcam/$DATE.jpg

rm /home/pi/$DATE.jpg