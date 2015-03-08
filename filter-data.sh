INPUT_FILE="household_power_consumption.txt"
OUTPUT_FILE="household_power_consumption-2.1.2007-2.2.2007.txt"

HEADERS="`head -n 1 $INPUT_FILE`"
HEADERS=`echo "$HEADERS" | sed "s/Date;Time;/Date_time;/"` #combine the date and time headers into 1 column called Date_Time

DATA="`cat $INPUT_FILE | grep '^[12]/2/2007'`"
DATA="`echo \"$DATA\" | sed "s/;/ /1"`" #combine the date and time columns into one by removing the semicolon between them


echo "$HEADERS" > $OUTPUT_FILE #add headers to output file
echo "$DATA" >> $OUTPUT_FILE #add data to output file