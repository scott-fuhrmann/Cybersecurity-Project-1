#! /bin/bash

# Execute this script to find the name of the roulette dealer who is working at a specific date and time
# Argument 1 = Date (MMDD)
# Argument 2 = Time ('HH:MM:SS AM' or 'HH:MM:SS PM')

grep "$2" $1_Dealer_schedule | awk -F'\t' '{ print $3 }'


