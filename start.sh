#!/bin/bash
MIX_ENV=prod elixir --detached --no-halt -e "File.write! 'server.pid', :os.getpid" -S mix run
