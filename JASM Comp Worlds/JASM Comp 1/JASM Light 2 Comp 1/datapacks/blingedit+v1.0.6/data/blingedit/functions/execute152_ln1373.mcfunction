scoreboard players set @s holding_item 1
execute unless entity @s[nbt={SelectedItem:{}}] run scoreboard players set @s holding_item 0
execute unless score @s holding_item matches 1.. run function blingedit:execute151_ln1376