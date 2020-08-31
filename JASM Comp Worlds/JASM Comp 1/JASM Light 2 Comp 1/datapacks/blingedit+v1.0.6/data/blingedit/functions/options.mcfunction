tellraw @s [""]
tellraw @s ["",{"text":"BlingEdit Options:"}]
tellraw @s ["",{"text":"Region Particle Outline: "},{"text":"[On]","clickEvent":{"action":"run_command","value":"/function blingedit:particles_on"},"color":"green"},{"text":" ","color":"green"},{"text":"[Off]","clickEvent":{"action":"run_command","value":"/function blingedit:particles_off"},"color":"red"}]
gamerule sendCommandFeedback false