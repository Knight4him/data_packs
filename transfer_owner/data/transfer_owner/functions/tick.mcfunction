schedule function transfer_owner:tick 1t
execute as @a[scores={transfer_owner=1..}] at @s run function transfer_owner:trigger
