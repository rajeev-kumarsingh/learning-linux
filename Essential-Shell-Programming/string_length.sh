#!/bin/bash
# string_length.sh : The regular expression `.*` signifies to expr that it has to print the number of characters matching the pattern
#
expr "abcdefghijklmnopqrstuvwxyz" : '.*' # Space on either side of : is required
expr "abcdefghijklmnopqrstuvwxyz" : ' .*' # The space at the beginning of ' .*' means it expects the string to start with a space, which "abcdefghijklmnopqrstuvwxyz" does not.
