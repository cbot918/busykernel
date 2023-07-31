1. 安裝實驗用的虛擬機器
- install [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- install [vagrant](https://developer.hashicorp.com/vagrant/downloads)

2. 下載 VM 設定檔
```
curl -OL https://raw.githubusercontent.com/cbot918/busykernel/master/Vagrantfile
```

3. 開 VM 然後 SSH 進去
```
vagrant up
vagrant ssh
```

4. 在 Vagrant VM裡面
- clone repo
```
git clone https://github.com/cbot918/busykernel && cd busykernel
```
- install packages
```
./pre-install.sh
```

- build kernel and busybox
```
./busyboxx.sh
```

- run kernel with qemu
```
./run.sh
```

5. other important command 
- exit kernel (因為還沒寫處理函式, 不然console會死當)
```
poweroff -f
```
- console死當的解決方式(當然也可以關掉重開啦)
```
killall qemu-system-x86_64
```