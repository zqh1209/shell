#!/usr/bin/expect
set ip 192.168.46.15
set user root
set password 123

spawn ssh $user@$ip

expect {
	"yes/no" { send "yes\r"; exp_continue }
	"password" { send "$password\r" };
}
interact
