# Write here, what your pack should do, when loaded:
# Add and modify initial scoreboard objectives.
scoreboard objectives add villagerBonk trigger

scoreboard objectives add eingruenesbeb.vb.entityid dummy
scoreboard objectives add eingruenesbeb.vb.entityid.0 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.1 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.2 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.3 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.4 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.5 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.6 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.7 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.8 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.9 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.10 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.11 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.12 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.13 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.14 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.15 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.16 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.17 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.18 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.19 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.20 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.21 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.22 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.23 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.24 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.25 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.26 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.27 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.28 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.29 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.30 dummy
scoreboard objectives add eingruenesbeb.vb.entityid.31 dummy
scoreboard players set #loaded eingruenesbeb.vb.entityid 1

scoreboard objectives add eingruenesbeb.vb.const dummy
scoreboard players set 2 eingruenesbeb.vb.const 2
scoreboard players set -1 eingruenesbeb.vb.const -1

# Initialize the storage and scoreboard for the gossip system:
data modify storage eingruenesbeb.bonk_villager:gossip_system GossipType set value "minor_negative"
scoreboard objectives add eingruenesbeb.vb.found_ne dummy
scoreboard players set %eingruenesbeb.vb.found_nentry% eingruenesbeb.vb.found_ne 0
scoreboard objectives add eingruenesbeb.vb.search dummy
scoreboard players set %eingruenesbeb.vb.search% eingruenesbeb.vb.search 0
scoreboard objectives add eingruenesbeb.vb.neg_gossip dummy
scoreboard players set %eingruenesbeb.vb.to_sub% eingruenesbeb.vb.const 25
