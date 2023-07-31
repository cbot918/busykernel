 
  sudo apt install libssl1.1=1.1.1f-1ubuntu2 -y
  sudo apt install libssl-dev libelf-dev libncurses5-dev libncursesw5-dev musl-tools -y


  sudo ln -s /usr/include/linux /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/asm-generic /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/x86_64-linux-gnu/asm /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/mtd/ /usr/include/x86_64-linux-musl/



  # killall qemu-system-x86_64