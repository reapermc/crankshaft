# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "event_handler_basic4:reapermc/wicked_expressions/safe_load",
    "reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main"
  ]
}
```

### event_handler_basic4

`@function event_handler_basic4:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function event_handler_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$1 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic4#bool$2 reapermc.wicked_expressions
```

`@function event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_load/__bypass_fork__`

```mcfunction
function reapermc:crankshaft/lib/entity_hit_matching/load
```

`@function event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__`

```mcfunction
function reapermc:crankshaft/lib/entity_hit_matching/tick
```

`@function event_handler_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_player_attack_entity/__payload__`

```mcfunction
say 'I GOT HIT'
particle flame ~ ~ ~ 0 0 0 1 25 force
execute as @a[tag=reapermc.crankshaft.event_handler.on_player_attack_entity.attacker, limit=1] run say 'ATTACKER'
execute as @e[tag=reapermc.crankshaft.event_handler.on_player_attack_entity.child, limit=1] run say 'DIRECT'
```

`@function event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_entity_attack_player/__payload__`

```mcfunction
say 'I GOT HIT'
give @s diamond 1
execute as @e[tag=reapermc.crankshaft.event_handler.on_entity_attack_player.attacker, limit=1] run say 'ATTACKER'
execute as @e[tag=reapermc.crankshaft.event_handler.on_entity_attack_player.child, limit=1] run say 'DIRECT'
```

### reapermc

`@function reapermc:crankshaft/event_handler/builtin/on_load/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_load/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_load/__fork__
```

`@function reapermc:crankshaft/lib/entity_hit_matching/load`

```mcfunction
scoreboard objectives add reapermc.crankshaft.lib.ehm.id dummy
scoreboard players set #3 reapermc.crankshaft.lib.ehm.id 3
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.0 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.1 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.2 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.3 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.4 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.5 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.6 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.7 dummy
scoreboard objectives add reapermc.crankshaft.lib.ehm.id.8 dummy
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```

`@function reapermc:crankshaft/lib/entity_hit_matching/tick`

```mcfunction
execute as @e unless score @s reapermc.crankshaft.lib.ehm.id = @s reapermc.crankshaft.lib.ehm.id run function reapermc:crankshaft/lib/entity_hit_matching/id/filter
```

`@function reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_load/__trigger__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@function reapermc:crankshaft/lib/entity_hit_matching/id/assign`

```mcfunction
function reapermc:crankshaft/lib/entity_hit_matching/id/remove_tags
execute if score #next_id reapermc.crankshaft.lib.ehm.id matches 19683.. run function reapermc:crankshaft/lib/entity_hit_matching/id/reset_all
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id = #next_id reapermc.crankshaft.lib.ehm.id
scoreboard players add #next_id reapermc.crankshaft.lib.ehm.id 1
scoreboard players operation #_temp_id reapermc.crankshaft.lib.ehm.id = @s reapermc.crankshaft.lib.ehm.id
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.0 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.0_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.0_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.0_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.1 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.1_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.1_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.1_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.2 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.2_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.2_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.2_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.3 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.3_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.3_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.3_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.4 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.4_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.4_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.4_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.5 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.5_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.5_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.5_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.6 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.6_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.6_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.6_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.7 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.7_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.7_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.7_2
function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit
scoreboard players operation @s reapermc.crankshaft.lib.ehm.id.8 = #_bit reapermc.crankshaft.lib.ehm.id
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 0 run tag @s add reapermc.crankshaft.lib.ehm.8_0
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 1 run tag @s add reapermc.crankshaft.lib.ehm.8_1
execute if score #_bit reapermc.crankshaft.lib.ehm.id matches 2 run tag @s add reapermc.crankshaft.lib.ehm.8_2
```

`@function reapermc:crankshaft/lib/entity_hit_matching/id/filter`

```mcfunction
execute if entity @s[type=!#reapermc:crankshaft/lib/entity_hit_matching/excluded] run function reapermc:crankshaft/lib/entity_hit_matching/id/assign
execute unless score @s reapermc.crankshaft.lib.ehm.id = @s reapermc.crankshaft.lib.ehm.id run tag @s[tag=!reapermc.crankshaft.lib.ehm.no_id] add reapermc.crankshaft.lib.ehm.no_id
```

`@function reapermc:crankshaft/lib/entity_hit_matching/id/next_bit`

```mcfunction
scoreboard players operation #_bit reapermc.crankshaft.lib.ehm.id = #_temp_id reapermc.crankshaft.lib.ehm.id
scoreboard players operation #_bit reapermc.crankshaft.lib.ehm.id %= #3 reapermc.crankshaft.lib.ehm.id
scoreboard players operation #_temp_id reapermc.crankshaft.lib.ehm.id /= #3 reapermc.crankshaft.lib.ehm.id
```

`@function reapermc:crankshaft/lib/entity_hit_matching/id/remove_tags`

```mcfunction
tag @s[tag=reapermc.crankshaft.lib.ehm.no_id] remove reapermc.crankshaft.lib.ehm.no_id
tag @s[tag=reapermc.crankshaft.lib.ehm.0_0] remove reapermc.crankshaft.lib.ehm.0_0
tag @s[tag=reapermc.crankshaft.lib.ehm.0_1] remove reapermc.crankshaft.lib.ehm.0_1
tag @s[tag=reapermc.crankshaft.lib.ehm.0_2] remove reapermc.crankshaft.lib.ehm.0_2
tag @s[tag=reapermc.crankshaft.lib.ehm.1_0] remove reapermc.crankshaft.lib.ehm.1_0
tag @s[tag=reapermc.crankshaft.lib.ehm.1_1] remove reapermc.crankshaft.lib.ehm.1_1
tag @s[tag=reapermc.crankshaft.lib.ehm.1_2] remove reapermc.crankshaft.lib.ehm.1_2
tag @s[tag=reapermc.crankshaft.lib.ehm.2_0] remove reapermc.crankshaft.lib.ehm.2_0
tag @s[tag=reapermc.crankshaft.lib.ehm.2_1] remove reapermc.crankshaft.lib.ehm.2_1
tag @s[tag=reapermc.crankshaft.lib.ehm.2_2] remove reapermc.crankshaft.lib.ehm.2_2
tag @s[tag=reapermc.crankshaft.lib.ehm.3_0] remove reapermc.crankshaft.lib.ehm.3_0
tag @s[tag=reapermc.crankshaft.lib.ehm.3_1] remove reapermc.crankshaft.lib.ehm.3_1
tag @s[tag=reapermc.crankshaft.lib.ehm.3_2] remove reapermc.crankshaft.lib.ehm.3_2
tag @s[tag=reapermc.crankshaft.lib.ehm.4_0] remove reapermc.crankshaft.lib.ehm.4_0
tag @s[tag=reapermc.crankshaft.lib.ehm.4_1] remove reapermc.crankshaft.lib.ehm.4_1
tag @s[tag=reapermc.crankshaft.lib.ehm.4_2] remove reapermc.crankshaft.lib.ehm.4_2
tag @s[tag=reapermc.crankshaft.lib.ehm.5_0] remove reapermc.crankshaft.lib.ehm.5_0
tag @s[tag=reapermc.crankshaft.lib.ehm.5_1] remove reapermc.crankshaft.lib.ehm.5_1
tag @s[tag=reapermc.crankshaft.lib.ehm.5_2] remove reapermc.crankshaft.lib.ehm.5_2
tag @s[tag=reapermc.crankshaft.lib.ehm.6_0] remove reapermc.crankshaft.lib.ehm.6_0
tag @s[tag=reapermc.crankshaft.lib.ehm.6_1] remove reapermc.crankshaft.lib.ehm.6_1
tag @s[tag=reapermc.crankshaft.lib.ehm.6_2] remove reapermc.crankshaft.lib.ehm.6_2
tag @s[tag=reapermc.crankshaft.lib.ehm.7_0] remove reapermc.crankshaft.lib.ehm.7_0
tag @s[tag=reapermc.crankshaft.lib.ehm.7_1] remove reapermc.crankshaft.lib.ehm.7_1
tag @s[tag=reapermc.crankshaft.lib.ehm.7_2] remove reapermc.crankshaft.lib.ehm.7_2
tag @s[tag=reapermc.crankshaft.lib.ehm.8_0] remove reapermc.crankshaft.lib.ehm.8_0
tag @s[tag=reapermc.crankshaft.lib.ehm.8_1] remove reapermc.crankshaft.lib.ehm.8_1
tag @s[tag=reapermc.crankshaft.lib.ehm.8_2] remove reapermc.crankshaft.lib.ehm.8_2
```

`@function reapermc:crankshaft/lib/entity_hit_matching/id/reset_all`

```mcfunction
scoreboard players reset * reapermc.crankshaft.lib.ehm.id
scoreboard players set #3 reapermc.crankshaft.lib.ehm.id 3
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.0
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.1
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.2
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.3
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.4
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.5
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.6
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.7
scoreboard players reset * reapermc.crankshaft.lib.ehm.id.8
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_player/find_direct_id`

```mcfunction
scoreboard players set $direct reapermc.crankshaft.lib.ehm.id 0
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_0_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 1
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_0_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 2
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_1_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 3
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_1_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 6
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_2_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 9
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_2_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 18
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_3_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 27
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_3_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 54
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_4_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 81
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_4_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 162
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_5_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 243
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_5_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 486
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_6_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 729
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_6_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 1458
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_7_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 2187
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_7_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 4374
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_8_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 6561
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={drt_bit_8_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 13122
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_player/logic`

```mcfunction
scoreboard players reset $direct reapermc.crankshaft.lib.ehm.id
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player={direct_has_no_id=false}}] run function reapermc:crankshaft/lib/entity_hit_matching/hurt_player/find_direct_id
scoreboard players operation $victim reapermc.crankshaft.lib.ehm.id = @s reapermc.crankshaft.lib.ehm.id
advancement revoke @s only reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player
execute if score $direct reapermc.crankshaft.lib.ehm.id = $direct reapermc.crankshaft.lib.ehm.id run function #reapermc:crankshaft/lib/entity_hit_matching/player_is_hurt_by_target
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_player/reward`

```mcfunction
execute unless score #_override reapermc.crankshaft.lib.ehm.id matches 1 run function reapermc:crankshaft/lib/entity_hit_matching/hurt_player/logic
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/find_direct_id`

```mcfunction
scoreboard players set $direct reapermc.crankshaft.lib.ehm.id 0
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_0_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 1
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_0_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 2
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_1_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 3
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_1_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 6
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_2_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 9
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_2_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 18
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_3_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 27
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_3_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 54
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_4_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 81
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_4_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 162
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_5_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 243
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_5_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 486
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_6_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 729
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_6_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 1458
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_7_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 2187
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_7_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 4374
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_8_1=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 6561
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={drt_bit_8_2=true}}] run scoreboard players add $direct reapermc.crankshaft.lib.ehm.id 13122
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/find_victim_id`

```mcfunction
scoreboard players set $victim reapermc.crankshaft.lib.ehm.id 0
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_0_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 1
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_0_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 2
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_1_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 3
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_1_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 6
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_2_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 9
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_2_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 18
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_3_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 27
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_3_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 54
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_4_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 81
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_4_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 162
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_5_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 243
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_5_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 486
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_6_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 729
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_6_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 1458
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_7_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 2187
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_7_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 4374
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_8_1=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 6561
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={vtm_bit_8_2=true}}] run scoreboard players add $victim reapermc.crankshaft.lib.ehm.id 13122
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/logic`

```mcfunction
scoreboard players reset $direct reapermc.crankshaft.lib.ehm.id
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={direct_has_no_id=false}}] run function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/find_direct_id
scoreboard players reset $victim reapermc.crankshaft.lib.ehm.id
execute if entity @s[advancements={reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target={victim_has_no_id=false}}] run function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/find_victim_id
advancement revoke @s only reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target
execute if score $direct reapermc.crankshaft.lib.ehm.id = $direct reapermc.crankshaft.lib.ehm.id if score $victim reapermc.crankshaft.lib.ehm.id = $victim reapermc.crankshaft.lib.ehm.id as @e if score @s reapermc.crankshaft.lib.ehm.id = $victim reapermc.crankshaft.lib.ehm.id at @s run function #reapermc:crankshaft/lib/entity_hit_matching/target_is_hurt_by_player
```

`@function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/reward`

```mcfunction
execute unless score #_override reapermc.crankshaft.lib.ehm.id matches 1 run function reapermc:crankshaft/lib/entity_hit_matching/hurt_target/logic
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/nested_1`

```mcfunction
tag @s add reapermc.crankshaft.event_handler.on_player_attack_entity.child
execute on origin run tag @s add reapermc.crankshaft.event_handler.on_player_attack_entity.attacker
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/nested_0`

```mcfunction
execute store success score $event_handler_basic4#bool$1 reapermc.wicked_expressions run data get entity @s Owner
execute if score $event_handler_basic4#bool$1 reapermc.wicked_expressions matches 1 run function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/nested_1
execute unless score $event_handler_basic4#bool$1 reapermc.wicked_expressions matches 1 run tag @s add reapermc.crankshaft.event_handler.on_player_attack_entity.attacker
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/nested_1`

```mcfunction
tag @s add reapermc.crankshaft.event_handler.on_entity_attack_player.child
execute on origin run tag @s add reapermc.crankshaft.event_handler.on_entity_attack_player.attacker
```

`@function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/nested_0`

```mcfunction
execute store success score $event_handler_basic4#bool$2 reapermc.wicked_expressions run data get entity @s Owner
execute if score $event_handler_basic4#bool$2 reapermc.wicked_expressions matches 1 run function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/nested_1
execute unless score $event_handler_basic4#bool$2 reapermc.wicked_expressions matches 1 run tag @s add reapermc.crankshaft.event_handler.on_entity_attack_player.attacker
```

`@function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/entrypoint`

```mcfunction
execute as @e if score @s reapermc.crankshaft.lib.ehm.id = $direct reapermc.crankshaft.lib.ehm.id run function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/nested_0
function reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__trigger__
execute as @a[tag=reapermc.crankshaft.event_handler.on_player_attack_entity.attacker, limit=1] run tag @s remove reapermc.crankshaft.event_handler.on_player_attack_entity.attacker
execute as @e[tag=reapermc.crankshaft.event_handler.on_player_attack_entity.child, limit=1] run tag @s remove reapermc.crankshaft.event_handler.on_player_attack_entity.child
```

`@function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/entrypoint`

```mcfunction
execute as @e if score @s reapermc.crankshaft.lib.ehm.id = $direct reapermc.crankshaft.lib.ehm.id run function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/nested_0
function reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__trigger__
execute as @e[tag=reapermc.crankshaft.event_handler.on_entity_attack_player.attacker, limit=1] run tag @s remove reapermc.crankshaft.event_handler.on_entity_attack_player.attacker
execute as @e[tag=reapermc.crankshaft.event_handler.on_entity_attack_player.child, limit=1] run tag @s remove reapermc.crankshaft.event_handler.on_entity_attack_player.child
```

`@function_tag reapermc:crankshaft/lib/entity_hit_matching/player_is_hurt_by_target`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__handler__/entrypoint"
  ]
}
```

`@function_tag reapermc:crankshaft/lib/entity_hit_matching/target_is_hurt_by_player`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__handler__/entrypoint"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_load/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_load/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_load/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_load/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_attack_entity/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_player_attack_entity/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_entity_attack_player/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic4:reapermc/crankshaft/event_handler/builtin/on_entity_attack_player/__payload__"
  ]
}
```

`@entity_type_tag reapermc:crankshaft/lib/entity_hit_matching/excluded`

```json
{
  "values": [
    "minecraft:item",
    "minecraft:item_display",
    "minecraft:item_frame",
    "minecraft:glow_item_frame",
    "minecraft:boat",
    "minecraft:text_display",
    "minecraft:spawner_minecart",
    "minecraft:painting",
    "minecraft:minecart",
    "minecraft:leash_knot",
    "minecraft:hopper_minecart",
    "minecraft:eye_of_ender",
    "minecraft:furnace_minecart",
    "minecraft:falling_block",
    "minecraft:experience_orb",
    "minecraft:experience_bottle",
    "minecraft:command_block_minecart",
    "minecraft:chest_minecart",
    "minecraft:chest_boat",
    "minecraft:marker"
  ]
}
```

`@advancement reapermc:crankshaft/lib/entity_hit_matching/target_hurts_player`

```json
{
  "criteria": {
    "direct_has_no_id": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.no_id\"]}"
            }
          }
        }
      }
    },
    "drt_bit_0_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_0_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_0_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_0": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_1": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_2": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_2\"]}"
            }
          }
        }
      }
    }
  },
  "requirements": [
    [
      "drt_bit_0_0",
      "drt_bit_0_1",
      "drt_bit_0_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_1_0",
      "drt_bit_1_1",
      "drt_bit_1_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_2_0",
      "drt_bit_2_1",
      "drt_bit_2_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_3_0",
      "drt_bit_3_1",
      "drt_bit_3_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_4_0",
      "drt_bit_4_1",
      "drt_bit_4_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_5_0",
      "drt_bit_5_1",
      "drt_bit_5_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_6_0",
      "drt_bit_6_1",
      "drt_bit_6_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_7_0",
      "drt_bit_7_1",
      "drt_bit_7_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_8_0",
      "drt_bit_8_1",
      "drt_bit_8_2",
      "direct_has_no_id"
    ]
  ],
  "rewards": {
    "function": "reapermc:crankshaft/lib/entity_hit_matching/hurt_player/reward"
  }
}
```

`@advancement reapermc:crankshaft/lib/entity_hit_matching/player_hurts_target`

```json
{
  "criteria": {
    "direct_has_no_id": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.no_id\"]}"
            }
          }
        }
      }
    },
    "victim_has_no_id": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:inverted",
            "term": {
              "condition": "minecraft:entity_scores",
              "entity": "this",
              "scores": {
                "reapermc.crankshaft.lib.ehm.id": {
                  "min": {
                    "type": "minecraft:score",
                    "target": "this",
                    "score": "reapermc.crankshaft.lib.ehm.id"
                  },
                  "max": {
                    "type": "minecraft:score",
                    "target": "this",
                    "score": "reapermc.crankshaft.lib.ehm.id"
                  }
                }
              }
            }
          }
        ]
      }
    },
    "drt_bit_0_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_0_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_0_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.0_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_1_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.1_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_2_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.2_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_3_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.3_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_4_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.4_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_5_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.5_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_6_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.6_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_7_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.7_2\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_0\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_1\"]}"
            }
          }
        }
      }
    },
    "drt_bit_8_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "nbt": "{Tags:[\"reapermc.crankshaft.lib.ehm.8_2\"]}"
            }
          }
        }
      }
    },
    "vtm_bit_0_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.0": 0
            }
          }
        ]
      }
    },
    "vtm_bit_0_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.0": 1
            }
          }
        ]
      }
    },
    "vtm_bit_0_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.0": 2
            }
          }
        ]
      }
    },
    "vtm_bit_1_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.1": 0
            }
          }
        ]
      }
    },
    "vtm_bit_1_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.1": 1
            }
          }
        ]
      }
    },
    "vtm_bit_1_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.1": 2
            }
          }
        ]
      }
    },
    "vtm_bit_2_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.2": 0
            }
          }
        ]
      }
    },
    "vtm_bit_2_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.2": 1
            }
          }
        ]
      }
    },
    "vtm_bit_2_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.2": 2
            }
          }
        ]
      }
    },
    "vtm_bit_3_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.3": 0
            }
          }
        ]
      }
    },
    "vtm_bit_3_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.3": 1
            }
          }
        ]
      }
    },
    "vtm_bit_3_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.3": 2
            }
          }
        ]
      }
    },
    "vtm_bit_4_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.4": 0
            }
          }
        ]
      }
    },
    "vtm_bit_4_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.4": 1
            }
          }
        ]
      }
    },
    "vtm_bit_4_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.4": 2
            }
          }
        ]
      }
    },
    "vtm_bit_5_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.5": 0
            }
          }
        ]
      }
    },
    "vtm_bit_5_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.5": 1
            }
          }
        ]
      }
    },
    "vtm_bit_5_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.5": 2
            }
          }
        ]
      }
    },
    "vtm_bit_6_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.6": 0
            }
          }
        ]
      }
    },
    "vtm_bit_6_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.6": 1
            }
          }
        ]
      }
    },
    "vtm_bit_6_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.6": 2
            }
          }
        ]
      }
    },
    "vtm_bit_7_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.7": 0
            }
          }
        ]
      }
    },
    "vtm_bit_7_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.7": 1
            }
          }
        ]
      }
    },
    "vtm_bit_7_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.7": 2
            }
          }
        ]
      }
    },
    "vtm_bit_8_0": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.8": 0
            }
          }
        ]
      }
    },
    "vtm_bit_8_1": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.8": 1
            }
          }
        ]
      }
    },
    "vtm_bit_8_2": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": [
          {
            "condition": "minecraft:entity_scores",
            "entity": "this",
            "scores": {
              "reapermc.crankshaft.lib.ehm.id.8": 2
            }
          }
        ]
      }
    }
  },
  "requirements": [
    [
      "drt_bit_0_0",
      "drt_bit_0_1",
      "drt_bit_0_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_1_0",
      "drt_bit_1_1",
      "drt_bit_1_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_2_0",
      "drt_bit_2_1",
      "drt_bit_2_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_3_0",
      "drt_bit_3_1",
      "drt_bit_3_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_4_0",
      "drt_bit_4_1",
      "drt_bit_4_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_5_0",
      "drt_bit_5_1",
      "drt_bit_5_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_6_0",
      "drt_bit_6_1",
      "drt_bit_6_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_7_0",
      "drt_bit_7_1",
      "drt_bit_7_2",
      "direct_has_no_id"
    ],
    [
      "drt_bit_8_0",
      "drt_bit_8_1",
      "drt_bit_8_2",
      "direct_has_no_id"
    ],
    [
      "vtm_bit_0_0",
      "vtm_bit_0_1",
      "vtm_bit_0_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_1_0",
      "vtm_bit_1_1",
      "vtm_bit_1_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_2_0",
      "vtm_bit_2_1",
      "vtm_bit_2_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_3_0",
      "vtm_bit_3_1",
      "vtm_bit_3_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_4_0",
      "vtm_bit_4_1",
      "vtm_bit_4_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_5_0",
      "vtm_bit_5_1",
      "vtm_bit_5_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_6_0",
      "vtm_bit_6_1",
      "vtm_bit_6_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_7_0",
      "vtm_bit_7_1",
      "vtm_bit_7_2",
      "victim_has_no_id"
    ],
    [
      "vtm_bit_8_0",
      "vtm_bit_8_1",
      "vtm_bit_8_2",
      "victim_has_no_id"
    ]
  ],
  "rewards": {
    "function": "reapermc:crankshaft/lib/entity_hit_matching/hurt_target/reward"
  }
}
```
