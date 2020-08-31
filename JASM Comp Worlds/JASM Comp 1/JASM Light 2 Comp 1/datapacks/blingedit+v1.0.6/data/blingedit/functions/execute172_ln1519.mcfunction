scoreboard players operation Global vol = Global box_size_x
scoreboard players operation Global vol *= Global box_size_y
scoreboard players operation Global vol *= Global box_size_z
title @s actionbar ["",{"text":"Size: "},{"score":{"name":"Global","objective":"box_size_x"},"color":"gold","bold":true},{"text":"x"},{"score":{"name":"Global","objective":"box_size_y"},"color":"gold","bold":true},{"text":"x"},{"score":{"name":"Global","objective":"box_size_z"},"color":"gold","bold":true},{"text":" Volume: "},{"score":{"name":"Global","objective":"vol"},"color":"gold","bold":true}]