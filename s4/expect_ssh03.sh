#!/usr/bin/expect
set ip [lindex $argv 0]
set user root
set password 123

spawn ssh $user@$ip

expect {
	"yes/no" { send "yes\r"; exp_continue }
	"password" { send "$password\r" };
}
#interact
expect "#"
send "ip a\r"
send "exit\r"
expect eof
