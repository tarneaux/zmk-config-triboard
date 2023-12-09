#!/bin/sh -e

trash ~/Downloads/firmware || true

unzip ~/Downloads/firmware.zip -d ~/Downloads/firmware
cd ~/Downloads/firmware

for side in left right; do
    echo "Please plug the $side keyboard in and put it into flash mode."
    while [ ! -e /dev/disk/by-label/XIAO-SENSE ]; do
        sleep 1
    done
    echo "Thanks! Flashing $side half firmware..."
    sudo mount /dev/disk/by-label/XIAO-SENSE /mnt/usb
    sudo cp triboard_${side}-seeeduino_xiao_ble-zmk.uf2 /mnt/usb/CURRENT.UF2
    sudo umount /mnt/usb
    echo "Done flashing $side half firmware."
done

echo "Flashing complete, removing firmware files so that you don't accidentally flash the same firmware again."

# Remove those files just in case we forget to redownload the firmware next time.
trash ~/Downloads/firmware ~/Downloads/firmware.zip

echo "All done, have a nice day!"
