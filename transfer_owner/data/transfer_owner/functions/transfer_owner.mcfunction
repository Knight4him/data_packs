data remove storage transfer_owner:owner UUID

data modify storage transfer_owner:owner UUID set from entity @s Owner

execute store success score %bool owner run data modify storage transfer_owner:owner UUID set from entity @p UUID

execute if score %bool owner matches 0 run data modify entity @e[type=#transfer_owner:tameable,limit=1,sort=nearest,distance=..10] Owner set from entity @p[distance=1..10] UUID

execute if score %bool owner matches 0 run scoreboard players set @s timer 1

execute if score %bool owner matches 0 run scoreboard players set @p timer 1

execute if score %bool owner matches 0 run tellraw @p {"text":"you have given the pet ","extra":[{"selector":"@e[type=#transfer_owner:tameable,limit=1,sort=nearest,distance=..10]"},{"text":" to "},{"selector":"@p[distance=1..10]"},{"text":" [UNDO]?","bold":true,"color":"dark_red","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":" [UNDO]?","bold":true,"color":"dark_red"}},"clickEvent":{"action":"run_command","value":"/execute as @e[type=#transfer_owner:tameable,scores={timer=1..300}] if score @s timer = @p timer run function transfer_owner:undo"}}]}

execute if score %bool owner matches 0 run tellraw @p[distance=1..10] {"text":"","extra":[{"selector":"@s"},{"text":" has given you their pet "},{"selector":"@e[type=#transfer_owner:tameable,limit=1,sort=nearest,distance=..10]"}]}

execute if score %bool owner matches 1 run tellraw @p {"text":"that is not your pet","color":"red"}