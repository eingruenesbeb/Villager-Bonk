# as: [Server]; at: [worldspawn]
# Remove scoreboard objectives:
scoreboard objectives remove villagerBonk
scoreboard objectives remove eingruenesbeb.bv.entityid
scoreboard objectives remove eingruenesbeb.bv.entityid.0
scoreboard objectives remove eingruenesbeb.bv.entityid.1
scoreboard objectives remove eingruenesbeb.bv.entityid.2
scoreboard objectives remove eingruenesbeb.bv.entityid.3
scoreboard objectives remove eingruenesbeb.bv.entityid.4
scoreboard objectives remove eingruenesbeb.bv.entityid.5
scoreboard objectives remove eingruenesbeb.bv.entityid.6
scoreboard objectives remove eingruenesbeb.bv.entityid.7
scoreboard objectives remove eingruenesbeb.bv.entityid.8
scoreboard objectives remove eingruenesbeb.bv.entityid.9
scoreboard objectives remove eingruenesbeb.bv.entityid.10
scoreboard objectives remove eingruenesbeb.bv.entityid.11
scoreboard objectives remove eingruenesbeb.bv.entityid.12
scoreboard objectives remove eingruenesbeb.bv.entityid.13
scoreboard objectives remove eingruenesbeb.bv.entityid.14
scoreboard objectives remove eingruenesbeb.bv.entityid.15
scoreboard objectives remove eingruenesbeb.bv.entityid.16
scoreboard objectives remove eingruenesbeb.bv.entityid.17
scoreboard objectives remove eingruenesbeb.bv.entityid.18
scoreboard objectives remove eingruenesbeb.bv.entityid.19
scoreboard objectives remove eingruenesbeb.bv.entityid.20
scoreboard objectives remove eingruenesbeb.bv.entityid.21
scoreboard objectives remove eingruenesbeb.bv.entityid.22
scoreboard objectives remove eingruenesbeb.bv.entityid.23
scoreboard objectives remove eingruenesbeb.bv.entityid.24
scoreboard objectives remove eingruenesbeb.bv.entityid.25
scoreboard objectives remove eingruenesbeb.bv.entityid.26
scoreboard objectives remove eingruenesbeb.bv.entityid.27
scoreboard objectives remove eingruenesbeb.bv.entityid.28
scoreboard objectives remove eingruenesbeb.bv.entityid.29
scoreboard objectives remove eingruenesbeb.bv.entityid.30
scoreboard objectives remove eingruenesbeb.bv.entityid.31
scoreboard objectives remove eingruenesbeb.bv.const
scoreboard objectives remove eingruenesbeb.bv.found_ne
scoreboard objectives remove eingruenesbeb.bv.search
scoreboard objectives remove eingruenesbeb.bv.neg_gossip

# Clear storage
data remove storage eingruenesbeb.bonk_villager:gossip_system GossipType
data remove storage eingruenesbeb.bonk_villager:gossip_system LastToSearch
data remove storage eingruenesbeb.bonk_villager:gossip_system LastToSearchBackup
data remove storage eingruenesbeb.bonk_villager:gossip_system GossipsCopy
data remove storage eingruenesbeb.bonk_villager:gossip_system Target

# The tags and effects can not be removed automatically. Tell the user how to do it manually instead.
tellraw @s ["",{"text":"Removed data and objectives.","color":"green"},{"text":"\n"},{"text":"Important: ","bold":true,"color":"yellow"},{"text":"Tags and effects cannot be removed automatically. Please load affected Villagers and run the following actions by clicking:","color":"yellow"},{"text":"\n"},{"text":"- ","color":"aqua"},{"text":"Reset NoAI state","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=eingruenesbeb.bv.bonked_state] run data modify entity @s NoAI set value 0b"}},{"text":"\n- ","color":"aqua"},{"text":"Automatic Tag-Removal unavailable in this version!","color":"red"}]

# Lastly disable the datapack:
datapack disable "file/Bonk Villager v1.4-MC1.20-1.20.4.zip"
