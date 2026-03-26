function smithed.hud:impl/build/main with storage smithed.hud:storage temp
execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
data remove storage smithed.hud:storage temp