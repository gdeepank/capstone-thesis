#!/bin/bash
for img in $(ls -LR *.jpg); do
	name=${img%.*};
	img2dcm "$name.jpg" "$name.dcm";
done
