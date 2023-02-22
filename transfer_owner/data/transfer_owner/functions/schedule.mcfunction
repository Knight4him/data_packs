schedule function transfer_owner:schedule 1s
scoreboard players enable @a transfer_owner
scoreboard players add @e[scores={timer=..300}] timer 1
tellraw @a[scores={timer=301}] ["",{"text":"[UNDO] ","bold":true,"color":"dark_red"},"has timed out."]
execute as @e[scores={timer=301}] run scoreboard players reset @s timer