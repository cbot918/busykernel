
  sudo apt update
  # install headers anad musl-gcc 
  sudo apt install libssl1.1=1.1.1f-1ubuntu2
  sudo apt install libssl-dev libelf-dev libncurses5-dev libncursesw5-dev musl-tools make flex bison build-essential -y

  # install qemu
  sudo apt install libpixman-1-dev libcairo2-dev libpango1.0-dev libjpeg8-dev libgif-dev ninja-build qemu qemu-system-x86-64 -y

  sudo ln -s /usr/include/linux /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/asm-generic /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/x86_64-linux-gnu/asm /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/mtd/ /usr/include/x86_64-linux-musl/

