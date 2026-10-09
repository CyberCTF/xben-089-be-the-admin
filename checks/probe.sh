#!/bin/sh
# The login endpoint answers wrong credentials in JSON.
curl -fsS --max-time 10 -d 'username=nobody&password=probe&role=employee' http://web:5003/login | grep -q 'Invalid credentials'
