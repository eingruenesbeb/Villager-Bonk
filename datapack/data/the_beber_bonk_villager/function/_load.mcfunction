# Write here, what your pack should do, when loaded:
# Initialize trigger objective:
scoreboard objectives add villagerBonk trigger

# Initialize the storage and scoreboard for the gossip system:
data modify storage the_beber_bonk_villager:gossip_system GossipType set value "minor_negative"

scoreboard objectives add the_beber_BV_found_ne dummy
scoreboard players set %the_beber_BV_found_nentry% the_beber_BV_found_ne 0

scoreboard objectives add the_beber_BV_search dummy
scoreboard players set %the_beber_BV_search% the_beber_BV_search 0

scoreboard objectives add the_beber_BV_neg_gossip dummy

scoreboard objectives add the_beber_BV_const dummy
scoreboard players set %the_beber_BV_to_sub% the_beber_BV_const 25
