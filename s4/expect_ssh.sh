#!/usr/bin/expect

spawn ssh zqh@192.168.46.12

expect {
	"yes/no" { send "yes\r"; exp_continue }
	"password" { send "123\r" };
}
interact
