#!/bin/bash

if [ $1 ]
then
	echo `ls -S $1`
fi
