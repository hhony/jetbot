# copy all the rules
sudo cp *.rules /etc/udev/rules.d/
sudo udevadm control --reload

# add notify-send script for popup when hotplugged
#local_dir="/usr/local/bin"
#notify_push="sensor-notify-send"
#notify_call="notify-sensor"
#sudo cp $notify_push $local_dir
#sudo chmod 755 $local_dir/$notify_push
#sudo cp $notify_call $HOME
#sudo chmod 755 $HOME/$notify_call

