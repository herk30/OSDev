sudo apt update
sudo apt install nasm
sudo apt-get install qemu-system
nasm -v

curl -0 https://www.nasm.us/pub/nasm/releasebuilds/2.16.03/nasm-2.16.03.tar.gz
	
tar -xf nasm-*.tar.gz     

...
Downloads
cd nasm-*/  
./configure   
make 
sudo make install     
