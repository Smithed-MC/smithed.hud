scoreboard players operation @s smithed.hud.id = #global smithed.hud.id
scoreboard players add #global smithed.hud.id 1

execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/player/init_storage with storage smithed.hud:storage temp
