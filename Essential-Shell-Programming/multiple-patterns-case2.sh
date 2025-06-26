# another way
#!/bin/bash
# multiple-patterns-case.sh : Keeps asking the user to continue until a valid response is given.

while true; do
  echo -n "Do you wish to continue? (yes/no): "
  read answer

  case "$answer" in
    [yY][eE][sS]*)
      echo "Welcome to multioption case"
      break
      ;;
    [nN][oO])
      echo "Exiting... Goodbye!"
      exit
      ;;
    *)
      echo "Invalid response. Please enter yes or no."
      ;;
  esac
done
