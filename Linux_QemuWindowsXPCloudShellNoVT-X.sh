wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip -o ngrok-stable-linux-amd64.zip > /dev/null 2>&1
clear
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o litexp.qcow2 https://app.vagrantup.com/daibangcam/boxes/windowsQCOW/versions/1.0/providers/qemu.box
echo "Windows XP x86 Lite On Google Cloud Shell"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo "================================"
echo "function ClickConnect() {
  console.log('Working')
  document
    .querySelector('#top-toolbar > colab-connect-button')
    .shadowRoot.querySelector('#connect')
    .click()
} 
setInterval(ClickConnect, 60000)"
echo "================================"
echo "Script by trung"
echo "Cell: +84978.39.41.43"
echo "Email: t16n@yahoo.com"
echo "Website: trung.gq"
echo "================================"
cpu=$(echo nproc | bash)
sudo qemu-system-x86_64 -vnc :0 -hda litexp.qcow2  -smp cores=$cpu  -m 3072M -machine usb=on -device usb-tablet > /dev/null 2>&1
