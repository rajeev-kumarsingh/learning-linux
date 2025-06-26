
#!/bin/bash
# nos_of_occurance_of_any_characters.sh : Consider that you want to validate the name of a person accepted through the keyboard so that it doesn't exceed, say 20 characters in length.
#
# while echo "Enter your name: \c " ; do # echo always returns true
#   read name
#   if [ `expr $name : ".*"` -gt 20 ] ; then
#     echo "Name too long"
#   else
#     break                             # terminate a loop
#   fi
# done 

# using above getting error
# Enter your name: \c 
# Rajeev Kumar Singh Rajeev Kumar Singh
# expr: syntax error
# nos_of_occurance_of_any_character.sh: line 6: [: -gt: unary operator expected

# Corrected Version

#!/bin/bash
# nos_of_occurance_of_any_characters.sh : Validate that a name entered doesn't exceed 20 characters

while echo "Enter your name: \c"; do
  read name
  if [ "$(expr "$name" : '.*')" -gt 20 ]; then
    echo "Name too long"
  else
    break
  fi
done

echo "Accepted name: $name"
