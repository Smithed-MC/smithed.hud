$execute if data storage smithed.hud:storage players.$(pid).index[{id:"$(id)"}] run return run data modify storage smithed.hud:storage players.$(pid).index[{id:"$(id)"}] set value {value:$(value),width:$(width)}
$data modify storage smithed.hud:storage players.$(pid).index append value {id:"$(id)",value:$(value),width:$(width)}
function smithed.hud:build/main with storage smithed.hud:storage temp