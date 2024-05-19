# as: @e, if: score @s VB_entityid = $hit VB_entityid, at: @s (Here @s is the player, who hit the villager... At least I think so)
tellraw @a[distance=..6] {"text":"*BONK*","italic":true,"color":"gray"}

execute if entity @s[tag=!VB_bonked_state] run tag @s add VB_bonk_apply
execute if entity @s[tag=VB_bonked_state] run tag @s add VB_bonk_remove

execute if entity @s[tag=VB_bonk_apply] run data modify entity @s NoAI set value 1b
execute if entity @s[tag=VB_bonk_apply] run tag @s add VB_bonked_state
execute if entity @s[tag=VB_bonk_remove] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=VB_bonk_remove] run tag @s remove VB_bonked_state

# Curb negative gossip:
# Store the first entry in the list, which is checked last, of Gossips to stop the search, even if no match was found. This prevents the search function from running indefinitly.
data modify storage the_beber_bonk_villager:gossip_system LastToSearch set from entity @s Gossips[0]
data modify storage the_beber_bonk_villager:gossip_system LastToSearchBackup set from entity @s Gossips[0]
# Copy the list into storage to avoid bug MC-153392.
data modify storage the_beber_bonk_villager:gossip_system GossipsCopy set from entity @s Gossips
function the_beber_bonk_villager:search_gossip_entry

tag @s remove VB_bonk_apply
tag @s remove VB_bonk_remove

tag @p[tag=VB_to_forgive, sort=nearest] remove VB_to_forgive
