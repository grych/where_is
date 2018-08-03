#!/bin/bash
kill -HUP `cat server.pid`
rm server.pid
