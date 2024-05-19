# Write here, what your pack should do, when loaded:
# Add and modify initial scoreboard objectives.
scoreboard objectives add villagerBonk trigger

scoreboard objectives add VB_entityid dummy
scoreboard objectives add VB_entityid.0 dummy
scoreboard objectives add VB_entityid.1 dummy
scoreboard objectives add VB_entityid.2 dummy
scoreboard objectives add VB_entityid.3 dummy
scoreboard objectives add VB_entityid.4 dummy
scoreboard objectives add VB_entityid.5 dummy
scoreboard objectives add VB_entityid.6 dummy
scoreboard objectives add VB_entityid.7 dummy
scoreboard objectives add VB_entityid.8 dummy
scoreboard objectives add VB_entityid.9 dummy
scoreboard objectives add VB_entityid.10 dummy
scoreboard objectives add VB_entityid.11 dummy
scoreboard objectives add VB_entityid.12 dummy
scoreboard objectives add VB_entityid.13 dummy
scoreboard objectives add VB_entityid.14 dummy
scoreboard objectives add VB_entityid.15 dummy
scoreboard objectives add VB_entityid.16 dummy
scoreboard objectives add VB_entityid.17 dummy
scoreboard objectives add VB_entityid.18 dummy
scoreboard objectives add VB_entityid.19 dummy
scoreboard objectives add VB_entityid.20 dummy
scoreboard objectives add VB_entityid.21 dummy
scoreboard objectives add VB_entityid.22 dummy
scoreboard objectives add VB_entityid.23 dummy
scoreboard objectives add VB_entityid.24 dummy
scoreboard objectives add VB_entityid.25 dummy
scoreboard objectives add VB_entityid.26 dummy
scoreboard objectives add VB_entityid.27 dummy
scoreboard objectives add VB_entityid.28 dummy
scoreboard objectives add VB_entityid.29 dummy
scoreboard objectives add VB_entityid.30 dummy
scoreboard objectives add VB_entityid.31 dummy
scoreboard players set #loaded VB_entityid 1

scoreboard objectives add VB_const dummy
scoreboard players set 2 VB_const 2
scoreboard players set -1 VB_const -1

# Initialize the storage and scoreboard for the gossip system:
data modify storage the_beber_bonk_villager:gossip_system GossipType set value "minor_negative"
scoreboard objectives add VB_found_ne dummy
scoreboard players set %VB_found_nentry% VB_found_ne 0
scoreboard objectives add VB_search dummy
scoreboard players set %VB_search% VB_search 0
scoreboard objectives add VB_neg_gossip dummy
scoreboard players set %VB_to_sub% VB_const 25

# Reapply the "bonked state" to villagers, that have the tag, but might have lost it during unloading of the datapack:
execute as @e[tag=VB_bonked_state] run data modify entity @s NoAI set value 1b
