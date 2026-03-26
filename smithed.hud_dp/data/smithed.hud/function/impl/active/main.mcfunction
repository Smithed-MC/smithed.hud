execute if entity @s[gamemode=survival] run scoreboard players set #gamemode smithed.hud.dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #gamemode smithed.hud.dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #gamemode smithed.hud.dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set #gamemode smithed.hud.dummy 3

execute unless score @s smithed.hud.dummy = #gamemode smithed.hud.dummy run function smithed.hud:impl/active/gamemode

execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/active/check with storage smithed.hud:storage temp