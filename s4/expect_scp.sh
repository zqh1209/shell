#!/usr/bin/bash
ip=$1
user=root
password=123

/usr/bin/expect <<-EOF
spawn scp -r /etc/hosts $user@$ip:/tmp

expect {
	"yes/no" { send "yes\r"; exp_continue }
	"password" { send "$password\r" };
}
#interact
expect eof
EOF
