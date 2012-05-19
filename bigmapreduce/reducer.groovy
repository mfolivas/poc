#!/usr/bin/env groovy

String previous_key = null
int total = 0
System.in.text.eachLine { line ->
	keyvalue = line.split("\t")
	key = keyvalue[0]
	int value = Integer.valueOf(keyvalue[1]).intValue()
	if (key != previous_key) {
			output(previous_key, total)
			previous_key = key
			total = 0
	}
	total += value
}
output(previous_key, total)

public static output(previous_key, total) {
	if(previous_key != null) {
		println previous_key + " was found " + total + " times"
	}
}