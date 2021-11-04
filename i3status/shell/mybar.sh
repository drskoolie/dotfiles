# Send the header so that i3bar knows we want to use JSON:
echo '{ "version": 1, "click_events":true}'

# Begin the endless array
echo '['

# We send an empty first array of blocks to make the loop simpler
echo '[]'



#launched in a background process
(while :;
do
  echo ",[{\"name\":\"id_time\",\"full_text\":\"$(date)\"}]"
  sleep 1
done)&

# Listening for STDIN events
while read line;
do
  echo $line > /tmp/tmp.txt
  on click, we get from STDIN :
  {"name":"id_time","button":1,"modifiers":["Mod2"],"x":2982,"y":9,"relative_x":67,"relative_y":9,"width":95,"height":22}

  # DATE click
  if [[ $line == *"name"*"id_time"* ]]; then
    konsole --hold -e ~/.config/i3status/shell/click_time.sh &
  fi  
done
