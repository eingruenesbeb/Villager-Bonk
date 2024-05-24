# Write here, what your pack should do, when loaded:
# Initialize trigger objective:
scoreboard objectives add villagerBonk trigger

# Initialize the storage and scoreboard for the gossip system:
data modify storage eingruenesbeb.bonk_villager:gossip_system GossipType set value "minor_negative"

scoreboard objectives add eingruenesbeb.bv.found_ne dummy
scoreboard players set %eingruenesbeb.bv.found_nentry% eingruenesbeb.bv.found_ne 0

scoreboard objectives add eingruenesbeb.bv.search dummy
scoreboard players set %eingruenesbeb.bv.search% eingruenesbeb.bv.search 0

scoreboard objectives add eingruenesbeb.bv.neg_gossip dummy

scoreboard objectives add eingruenesbeb.bv.const dummy
scoreboard players set %eingruenesbeb.bv.to_sub% eingruenesbeb.bv.const 25
