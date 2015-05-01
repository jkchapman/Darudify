#!/bin/bash
osascript <<EOD
	set noteValues to {60, 90, 75, 50, 60, 90, 60, 90}

	set syllables to {"du du du du du der, du du du du du du du der", "du du du du du du du der", "du du du du du du du der", "dudu", "du du du du du der, du du du du du du du der", "dudu", "du du du du du der, du du du du du du du der", "dudu"}

	set thisRate to {250, 250, 250, 250, 250, 250, 250, 250}

	repeat
		repeat with i from 1 to the length of noteValues
			set thisValue to item i of noteValues
			set thisSyllable to item i of syllables
			set speakingRate to item i of thisRate
			say thisSyllable pitch thisValue using "boing" speaking rate speakingRate modulation 0 with waiting until completion without stopping current speech
		end repeat
	end repeat
EOD
