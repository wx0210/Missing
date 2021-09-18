#!/bin/bash
marco(){
	echo "$(pwd)" > ~/marco_history.log
	echo "save pwd $(pwd)"
}
polo(){
	cd "$(cat ~/marco_history.log)"
}
