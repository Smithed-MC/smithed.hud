execute store result score #input_width smithed.hud.dummy run data get storage smithed.hud:storage temp.index[0].width

# Set prefix to width / 2
scoreboard players operation #space.prefix smithed.hud.dummy = #input_width smithed.hud.dummy
scoreboard players operation #space.prefix smithed.hud.dummy /= #con.2 smithed.hud.dummy
# Set suffix to the same and remove 1
scoreboard players operation #space.suffix smithed.hud.dummy = #space.prefix smithed.hud.dummy
execute store result storage smithed.hud:storage temp.entry.suffix int 1 run scoreboard players remove #space.suffix smithed.hud.dummy 1
# Make prefix negative
execute store result storage smithed.hud:storage temp.entry.prefix int 1 run scoreboard players operation #space.prefix smithed.hud.dummy *= #con.-1 smithed.hud.dummy
# Set symbol to negative width
scoreboard players operation #space.symbol smithed.hud.dummy = #input_width smithed.hud.dummy
execute store result storage smithed.hud:storage temp.entry.symbol int 1 run scoreboard players operation #space.symbol smithed.hud.dummy *= #con.-1 smithed.hud.dummy

data modify storage smithed.hud:storage temp.entry.value set from storage smithed.hud:storage temp.index[0].value
data modify storage smithed.hud:storage temp.entry.pid set from storage smithed.hud:storage temp.pid

function smithed.hud:internal/build/i/append with storage smithed.hud:storage temp.entry