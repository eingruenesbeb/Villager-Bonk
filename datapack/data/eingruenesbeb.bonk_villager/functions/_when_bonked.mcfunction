# as: @e, if: score @s eingruenesbeb.bv.entityid = $hit eingruenesbeb.bv.entityid, at: @s (Here @s is the player, who hit the villager... At least I think so)
tellraw @a[distance=..6] {"text":"*BONK*","italic":true,"color":"gray"}
execute at @s run playsound eingruenesbeb:bonk_villager.bonk neutral @a[distance=..6] ~ ~ ~

execute as @s[tag=VB_bonked_state] run function eingruenesbeb.bonk_villager:_upgrade_tags

execute if entity @s[tag=!eingruenesbeb.bv.bonked_state] run tag @s add eingruenesbeb.bv.bonk_apply
execute if entity @s[tag=eingruenesbeb.bv.bonked_state] run tag @s add eingruenesbeb.bv.bonk_remove

execute if entity @s[tag=eingruenesbeb.bv.bonk_apply] run data modify entity @s NoAI set value 1b
execute if entity @s[tag=eingruenesbeb.bv.bonk_apply] run tag @s add eingruenesbeb.bv.bonked_state
execute if entity @s[tag=eingruenesbeb.bv.bonk_remove] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=eingruenesbeb.bv.bonk_remove] run tag @s remove eingruenesbeb.bv.bonked_state

# Curb negative gossip:
# Store the first entry in the list, which is checked last, of Gossips to stop the search, even if no match was found. This prevents the search function from running indefinitly.
data modify storage eingruenesbeb.bonk_villager:gossip_system LastToSearch set from entity @s Gossips[0]
data modify storage eingruenesbeb.bonk_villager:gossip_system LastToSearchBackup set from entity @s Gossips[0]
# Copy the list into storage to avoid bug MC-153392.
data modify storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy set from entity @s Gossips
function eingruenesbeb.bonk_villager:gossip/_search_gossip_entry

tag @s remove eingruenesbeb.bv.bonk_apply
tag @s remove eingruenesbeb.bv.bonk_remove
