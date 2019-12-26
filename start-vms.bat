
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Server poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node1 poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node2 poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node3 poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node4 poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node5 poweroff soft
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  test poweroff soft

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Server reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node1 reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node2 reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node3 reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node4 reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  Ansible-Node5 reset
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm  test reset

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Server --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Node1 --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Node2 --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Node3 --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Node4 --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm Ansible-Node5 --type headless
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm test --type headless