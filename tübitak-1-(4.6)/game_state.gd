extends Node

var unlocked_levels = {
	"deprem": true,
	"yangin": false,
	"erozyon": false
}

func unlock_level(level_name):
	unlocked_levels[level_name] = true
