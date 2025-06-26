#!/bin/bash
# locating_position_of_a_character.sh : uses [^d]*d to locate the posititon of d in $stg
#
stg=abcdefghij ; expr "$stg" : '[^d]*d'
expr "$stg" : '[^e]*e'
expr "$stg" : '[^i]*i'