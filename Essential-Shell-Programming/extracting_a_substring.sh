#!/bin/bash
# extracting_a_substring.sh: `expr` can extract a string enclosed by the escaped characters \ ( and \ ).
#
stg=2003
stg1=123456
stg2=12345678
expr "$stg" : '..\(..\)'      # Extract last 2 characters
expr "$stg1" : '...\(...\)'   # Extract last 3 characters
expr "$stg2" : '....\(....\)' # Extract last 4 characters