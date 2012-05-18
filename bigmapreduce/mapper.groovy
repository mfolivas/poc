#!/usr/bin/env groovy

new File(args[0]).eachLine{ line -> 
	words = line.split()
	words.each{ word ->
		println word + "\t" + "1"
	}
}
