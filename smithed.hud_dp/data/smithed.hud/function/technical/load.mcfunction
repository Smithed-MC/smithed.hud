scoreboard objectives add smithed.hud.dummy dummy
scoreboard players set #con.-1 smithed.hud.dummy -1
scoreboard players set #con.2 smithed.hud.dummy 2

scoreboard objectives add smithed.hud.id dummy
execute unless score #global smithed.hud.id matches -2147483648..2147483647 run scoreboard players set #global smithed.hud.id 0