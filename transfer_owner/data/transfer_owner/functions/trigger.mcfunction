execute if score @s transfer_owner matches 1 as @e[type=#transfer_owner:tameable,limit=1,sort=nearest,distance=..10] if entity @p[distance=1..10] run function transfer_owner:transfer_owner

execute if score @s transfer_owner matches 1 unless entity @p[distance=1..10] run tellraw @s {"text":"there is not a player nearby","color":"red"}

execute if score @s transfer_owner matches 1 unless entity @e[type=#transfer_owner:tameable,limit=1,sort=nearest,distance=..10] run tellraw @s {"text":"there is not a pet nearby","color":"red"}

scoreboard players set @s transfer_owner 0

scoreboard players enable @s transfer_owner