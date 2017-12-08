for device in $(cat vendor/aos/aos.devices)
do
add_lunch_combo aos_$device-userdebug
done
