# as: @e, if: score @s VB_entityid = $hit VB_entityid, at: @s (Here @s is the player, who hit the villager... At least I think so)
tellraw @a[distance=..6] {"text":"*BONK*","italic":true,"color":"gray"}

execute if entity @s[tag=!VB_bonked_state] run tag @s add VB_bonk_apply
execute if entity @s[tag=VB_bonked_state] run tag @s add VB_bonk_remove

execute if entity @s[tag=VB_bonk_apply] run data modify entity @s NoAI set value 1b
execute if entity @s[tag=VB_bonk_apply] run tag @s add VB_bonked_state
execute if entity @s[tag=VB_bonk_remove] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=VB_bonk_remove] run tag @s remove VB_bonked_state

tag @s remove VB_bonk_apply
tag @s remove VB_bonk_remove

tag @p[tag=VB_to_forgive, sort=nearest] remove VB_to_forgive
