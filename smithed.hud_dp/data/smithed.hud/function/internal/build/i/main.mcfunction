scoreboard players set #gamemode smithed.hud.dummy 0

execute unless data storage smithed.hud:storage temp.index[0].gamemodes run scoreboard players set #gamemode smithed.hud.dummy 1
execute if data storage smithed.hud:storage temp.index[0].gamemodes{survival:true} if entity @s[gamemode=survival] run scoreboard players set #gamemode smithed.hud.dummy 1
execute if data storage smithed.hud:storage temp.index[0].gamemodes{creative:true} if entity @s[gamemode=creative] run scoreboard players set #gamemode smithed.hud.dummy 1
execute if data storage smithed.hud:storage temp.index[0].gamemodes{adventure:true} if entity @s[gamemode=adventure] run scoreboard players set #gamemode smithed.hud.dummy 1
execute if data storage smithed.hud:storage temp.index[0].gamemodes{spectator:true} if entity @s[gamemode=spectator] run scoreboard players set #gamemode smithed.hud.dummy 1

execute if score #gamemode smithed.hud.dummy matches 1 run function smithed.hud:internal/build/i/build

data remove storage smithed.hud:storage temp.index[0]
execute if data storage smithed.hud:storage temp.index[0] run function smithed.hud:internal/build/i/main

