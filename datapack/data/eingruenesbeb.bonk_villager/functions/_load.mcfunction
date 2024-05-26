# Write here, what your pack should do, when loaded:
# Add and modify initial scoreboard objectives.
scoreboard objectives add villagerBonk trigger

scoreboard objectives add bv.entityid dummy
scoreboard objectives add bv.entityid.0 dummy
scoreboard objectives add bv.entityid.1 dummy
scoreboard objectives add bv.entityid.2 dummy
scoreboard objectives add bv.entityid.3 dummy
scoreboard objectives add bv.entityid.4 dummy
scoreboard objectives add bv.entityid.5 dummy
scoreboard objectives add bv.entityid.6 dummy
scoreboard objectives add bv.entityid.7 dummy
scoreboard objectives add bv.entityid.8 dummy
scoreboard objectives add bv.entityid.9 dummy
scoreboard objectives add bv.entityid.10 dummy
scoreboard objectives add bv.entityid.11 dummy
scoreboard objectives add bv.entityid.12 dummy
scoreboard objectives add bv.entityid.13 dummy
scoreboard objectives add bv.entityid.14 dummy
scoreboard objectives add bv.entityid.15 dummy
scoreboard objectives add bv.entityid.16 dummy
scoreboard objectives add bv.entityid.17 dummy
scoreboard objectives add bv.entityid.18 dummy
scoreboard objectives add bv.entityid.19 dummy
scoreboard objectives add bv.entityid.20 dummy
scoreboard objectives add bv.entityid.21 dummy
scoreboard objectives add bv.entityid.22 dummy
scoreboard objectives add bv.entityid.23 dummy
scoreboard objectives add bv.entityid.24 dummy
scoreboard objectives add bv.entityid.25 dummy
scoreboard objectives add bv.entityid.26 dummy
scoreboard objectives add bv.entityid.27 dummy
scoreboard objectives add bv.entityid.28 dummy
scoreboard objectives add bv.entityid.29 dummy
scoreboard objectives add bv.entityid.30 dummy
scoreboard objectives add bv.entityid.31 dummy
scoreboard players set #loaded bv.entityid 1

scoreboard objectives add bv.const dummy
scoreboard players set 2 bv.const 2
scoreboard players set -1 bv.const -1

# Initialize the storage and scoreboard for the gossip system:
data modify storage eingruenesbeb.bonk_villager:gossip_system GossipType set value "minor_negative"
scoreboard objectives add bv.found_ne dummy
scoreboard players set %bv.not_found% bv.found_ne 0
scoreboard objectives add bv.search dummy
scoreboard players set %bv.search% bv.search 0
scoreboard objectives add bv.neg_gossip dummy
scoreboard players set %bv.to_sub% bv.const 25
