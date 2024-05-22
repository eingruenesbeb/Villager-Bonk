# at: @s; as: victim; enchantment: the_beber_bonk_villager:bonking
# This function resets the negative impact of hitting the villager, on use of the bonk stick.
execute store result score @s the_beber_BV_neg_gossip run data get storage the_beber_bonk_villager:gossip_system GossipsCopy[0].Value
execute if score @s the_beber_BV_neg_gossip matches ..25 run scoreboard players set @s the_beber_BV_neg_gossip 0
execute if score @s the_beber_BV_neg_gossip matches 26.. run scoreboard players operation @s the_beber_BV_neg_gossip -= %the_beber_BV_to_sub% the_beber_BV_const

execute if score @s the_beber_BV_neg_gossip matches 1.. store result storage the_beber_bonk_villager:gossip_system GossipsCopy[0].Value int 1 run scoreboard players get @s the_beber_BV_neg_gossip
# The gossip data of a villager cannot be 0 or modified, if that would result in an empty list. That is due to a bug. A temporary (albeit far from perfect) solution is, to set the value to one to minimize the effect and let it decay naturally. (This takes 20 Minutes though.)
execute if score @s the_beber_BV_neg_gossip matches ..0 run data modify storage the_beber_bonk_villager:gossip_system GossipsCopy[0].Value set value 1
data modify entity @s Gossips set from storage the_beber_bonk_villager:gossip_system GossipsCopy
