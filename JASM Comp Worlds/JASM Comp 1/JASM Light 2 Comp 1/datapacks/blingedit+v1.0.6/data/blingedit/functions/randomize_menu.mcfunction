tellraw @s [""]
tellraw @s ["",{"text":"Randomization Options:","color":"dark_aqua"}]
tellraw @s ["",{"text":"[Store Selected Region as Random Block Pool]","clickEvent":{"action":"run_command","value":"/function blingedit:store_random"},"color":"aqua"}]
tellraw @s ["",{"text":"[Fill Selected Region from Random Block Pool]","clickEvent":{"action":"run_command","value":"/function blingedit:fill_random"},"color":"aqua"}]
tellraw @s ["",{"text":"[Replace in Selected Region from Random Block Pool]","clickEvent":{"action":"run_command","value":"/function blingedit:replace_random"},"color":"aqua"}]
gamerule sendCommandFeedback false