execute as @a[distance=1..] at @e[type=#transfer_owner:tameable,sort=nearest,limit=1] run function transfer_owner:undo_message

data modify entity @s Owner set from entity @p UUID

scoreboard players reset @p timer

scoreboard players reset @s timer

data merge entity @s {Sitting:0b}

tellraw @p {"text":"you have taken your pet ","extra":[{"selector":"@s"},{"text":" back!"}],"color":"dark_red","bold":true}