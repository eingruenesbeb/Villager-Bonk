# at: @s; as: victim; enchantment: eingruenesbeb.bonk_villager:bonking
# This function resets the negative impact of hitting the villager, on use of the bonk stick.
execute store result score @s eingruenesbeb.bv.neg_gossip run data get storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy[0].Value
execute if score @s eingruenesbeb.bv.neg_gossip matches ..25 run scoreboard players set @s eingruenesbeb.bv.neg_gossip 0
execute if score @s eingruenesbeb.bv.neg_gossip matches 26.. run scoreboard players operation @s eingruenesbeb.bv.neg_gossip -= %eingruenesbeb.bv.to_sub% eingruenesbeb.bv.const

execute if score @s eingruenesbeb.bv.neg_gossip matches 1.. store result storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy[0].Value int 1 run scoreboard players get @s eingruenesbeb.bv.neg_gossip
# The gossip data of a villager cannot be 0 or modified, if that would result in an empty list. That is due to a bug. A temporary (albeit far from perfect) solution is, to set the value to one to minimize the effect and let it decay naturally. (This takes 20 Minutes though.)
execute if score @s eingruenesbeb.bv.neg_gossip matches ..0 run data modify storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy[0].Value set value 1
data modify entity @s Gossips set from storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy
