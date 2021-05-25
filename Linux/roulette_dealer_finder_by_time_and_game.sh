#! /bin/bash

# Execute this script to find the name of the roulette dealer who is working at a specific date and time
# Argument 1 = Time ('HH:MM:SS AM' or 'HH:MM:SS PM')
# Argument 2 = Date (MMDD)
# Argument 3 = Casino game being played (optional)

case $3 in

  "BlackJack")
    echo -n 'The Black Jack dealer working at' $1 'on' $2 'was '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $2 }'
    ;;

  "Roulette")
    echo -n 'The Roulette dealer working at' $1 'on' $2 'was '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $3 }'
    ;;

  "Texas_Hold_EM")
    echo -n 'The Texas Hold EM dealer working at' $1 'on' $2 'was '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $4 }'
    ;;

  *)
    echo 'The dealers working at' $1 'on' $2 'were'
    echo -n 'Black Jack dealer - '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $2 }'
    echo -n 'Roulette dealer - '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $3 }'
    echo -n 'Texas Hold EM dealer - '
    grep "$1" $2_Dealer_schedule | awk -F'\t' '{ print $4 }'
    ;;
esac


