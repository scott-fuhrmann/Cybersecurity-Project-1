#!/bin/bash

us_states=('Massechussetts' 'New Jersey' 'New York' 'California' 'Tennessee')

for us_state in "${us_states[@]}"
do
  if [ "$us_state" == 'New Jersey' ]
  then
    nj_is_there = 'Yes'
  fi
done

if [ $nj_is_there == 'Yes' ]
then
  echo 'New Jersey is the best!'
else
  echo "I'm not fond of New Jersey"
fi
