data remove storage transfer_owner:owner UUID

data modify storage transfer_owner:owner UUID set from entity @e[type=#transfer_owner:tameable,sort=nearest,limit=1] Owner

execute store success score %bool owner run data modify storage transfer_owner:owner UUID set from entity @s UUID

execute if score %bool owner matches 0 run tellraw @s {"text":"your pet ","extra":[{"selector":"@e[type=#transfer_owner:tameable,sort=nearest,limit=1]"},{"text":" has been taken back!"}],"color":"dark_red","bold":true}