# as: [Server]; at: [worldspawn]
# Remove scoreboard objectives:
scoreboard objectives remove villagerBonk
scoreboard objectives remove VB_entityid
scoreboard objectives remove VB_entityid.0
scoreboard objectives remove VB_entityid.1
scoreboard objectives remove VB_entityid.2
scoreboard objectives remove VB_entityid.3
scoreboard objectives remove VB_entityid.4
scoreboard objectives remove VB_entityid.5
scoreboard objectives remove VB_entityid.6
scoreboard objectives remove VB_entityid.7
scoreboard objectives remove VB_entityid.8
scoreboard objectives remove VB_entityid.9
scoreboard objectives remove VB_entityid.10
scoreboard objectives remove VB_entityid.11
scoreboard objectives remove VB_entityid.12
scoreboard objectives remove VB_entityid.13
scoreboard objectives remove VB_entityid.14
scoreboard objectives remove VB_entityid.15
scoreboard objectives remove VB_entityid.16
scoreboard objectives remove VB_entityid.17
scoreboard objectives remove VB_entityid.18
scoreboard objectives remove VB_entityid.19
scoreboard objectives remove VB_entityid.20
scoreboard objectives remove VB_entityid.21
scoreboard objectives remove VB_entityid.22
scoreboard objectives remove VB_entityid.23
scoreboard objectives remove VB_entityid.24
scoreboard objectives remove VB_entityid.25
scoreboard objectives remove VB_entityid.26
scoreboard objectives remove VB_entityid.27
scoreboard objectives remove VB_entityid.28
scoreboard objectives remove VB_entityid.29
scoreboard objectives remove VB_entityid.30
scoreboard objectives remove VB_entityid.31
scoreboard objectives remove VB_const
scoreboard objectives remove VB_found_ne
scoreboard objectives remove VB_search
scoreboard objectives remove VB_neg_gossip

# Remove any tags except for "VB_bonked_state":
tag @e remove VB_entityidset
tag @e remove VB_entityhit.nbit0
tag @e remove VB_entityhit.bit0
tag @e remove VB_entityhit.nbit1
tag @e remove VB_entityhit.bit1
tag @e remove VB_entityhit.nbit2
tag @e remove VB_entityhit.bit2
tag @e remove VB_entityhit.nbit3
tag @e remove VB_entityhit.bit3
tag @e remove VB_entityhit.nbit4
tag @e remove VB_entityhit.bit4
tag @e remove VB_entityhit.nbit5
tag @e remove VB_entityhit.bit5
tag @e remove VB_entityhit.nbit6
tag @e remove VB_entityhit.bit6
tag @e remove VB_entityhit.nbit7
tag @e remove VB_entityhit.bit7
tag @e remove VB_entityhit.nbit8
tag @e remove VB_entityhit.bit8
tag @e remove VB_entityhit.nbit9
tag @e remove VB_entityhit.bit9
tag @e remove VB_entityhit.nbit10
tag @e remove VB_entityhit.bit10
tag @e remove VB_entityhit.nbit11
tag @e remove VB_entityhit.bit11
tag @e remove VB_entityhit.nbit12
tag @e remove VB_entityhit.bit12
tag @e remove VB_entityhit.nbit13
tag @e remove VB_entityhit.bit13
tag @e remove VB_entityhit.nbit14
tag @e remove VB_entityhit.bit14
tag @e remove VB_entityhit.nbit15
tag @e remove VB_entityhit.bit15
tag @e remove VB_entityhit.nbit16
tag @e remove VB_entityhit.bit16
tag @e remove VB_entityhit.nbit17
tag @e remove VB_entityhit.bit17
tag @e remove VB_entityhit.nbit18
tag @e remove VB_entityhit.bit18
tag @e remove VB_entityhit.nbit19
tag @e remove VB_entityhit.bit19
tag @e remove VB_entityhit.nbit20
tag @e remove VB_entityhit.bit20
tag @e remove VB_entityhit.nbit21
tag @e remove VB_entityhit.bit21
tag @e remove VB_entityhit.nbit22
tag @e remove VB_entityhit.bit22
tag @e remove VB_entityhit.nbit23
tag @e remove VB_entityhit.bit23
tag @e remove VB_entityhit.nbit24
tag @e remove VB_entityhit.bit24
tag @e remove VB_entityhit.nbit25
tag @e remove VB_entityhit.bit25
tag @e remove VB_entityhit.nbit26
tag @e remove VB_entityhit.bit26
tag @e remove VB_entityhit.nbit27
tag @e remove VB_entityhit.bit27
tag @e remove VB_entityhit.nbit28
tag @e remove VB_entityhit.bit28
tag @e remove VB_entityhit.nbit29
tag @e remove VB_entityhit.bit29
tag @e remove VB_entityhit.nbit30
tag @e remove VB_entityhit.bit30
tag @e remove VB_entityhit.nbit31
tag @e remove VB_entityhit.bit31
tag @e remove VB_to_forgive

# Reactivate the AI of "bonked" villagers:
execute as @e[tag=VB_bonked_state] run data modify entity @s NoAI set value 0b

# Lastly disable the datapack:
datapack disable "file/Bonk Villager v1.2-MC1.17+.zip"