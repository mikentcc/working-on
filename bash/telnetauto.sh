#!/bin/bash
telnet 192.168.121.5
sleep 2
#!/usr/bin/expect <<EOF
expect "?assword: "{send -- "remote\r";}
EOF
sleep 2