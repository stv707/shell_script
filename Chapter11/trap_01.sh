#!/bin/bash
trap "echo caught signal SIGINT" 2
trap "echo caught signal SIGQUIT" 3
trap "echo caught signal SIGTERM" 15
trap "echo caught signal SIGKILL" 9
trap "echo caught signal SIGSTOP" 19



while true

do

	echo "running....."
	sleep 2
done


