sudo apt update
sudo apt install build-essential bison flex libgmp3-dev libmpc-dev libmpfr-dev texinfo
mkdir ~/cross-compiler
cd ~/cross-compiler
git clone https://gcc.gnu.org/git/gcc.git
git clone https://sourceware.org/git/binutils-gdb.git
mkdir build-binutils
cd build-binutils
../binutils-gdb/configure --target=i686-elf --prefix=/usr/local/cross --disable-nls
sudo make
sudo make install
cd ~/cross-compiler
mkdir build-gcc
cd build-gcc
../gcc/configure --target=i686-elf --prefix=/usr/local/cross --disable-nls --enable-languages=c,c++ --without-headers
sudo make all-gcc
sudo make install-gcc
sudo make all-target-libgcc
sudo make install-target-libgcc
nano ~/.zshrc

export PATH=/usr/local/cross/bin:$PATH
source ~/.zshrc
echo $PATH

i686-elf-gcc --version
i686-elf-as --version
