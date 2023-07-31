  sudo apt install libelf-dev
 
  sudo apt install libssl1.1=1.1.1f-1ubuntu2
  sudo apt install libssl-dev

  sudo apt install libncurses5-dev libncursesw5-dev
  sudo apt install musl-tools



  sudo ln -s /usr/include/linux /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/asm-generic /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/x86_64-linux-gnu/asm /usr/include/x86_64-linux-musl/
  sudo ln -s /usr/include/mtd/ /usr/include/x86_64-linux-musl/