# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 15,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

### reapermc

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_load`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_load/1"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_tick/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_join/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_jump/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_land/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_glide_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_glide/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_glide_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_swim_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_swim/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_swim_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_burn_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_burn/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_burn_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_use_coas/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_use_wfoas/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_start/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/0",
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_join`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_load/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_load`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_jump`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_land`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sneak_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sneak`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sneak_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sprint_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sprint`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sprint_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_glide_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_glide`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_glide_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_swim_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_swim`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_swim_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_burn_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_burn`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_burn_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_airborne_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_airborne`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_airborne_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_use_coas`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_use_wfoas`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow_start`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_charge_bow/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow_end`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_charge_bow_end/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_shoot_bow`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_shoot_bow/0"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_inventory_change`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_attack_entity`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_entity_attack_player`

```json
{
  "replace": false,
  "values": []
}
```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_load/0`

```mcfunction

```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_tick/0`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/endpoint/on_tick
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_tick/0`

```mcfunction
execute as @a at @s run function #reapermc:crankshaft/event_handler/builtin/endpoint/on_player_tick
```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_join/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_load/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_load/1`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_jump/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_land/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_sprint_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_glide_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_glide/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_glide_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_swim_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_swim/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_swim_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_burn_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_burn/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_burn_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne_start/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_airborne_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_use_coas/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_use_wfoas/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_start/0`

```mcfunction

```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow/0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 run function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow/0/nested_6
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 0 run scoreboard players set @s reapermc.crankshaft.event.on_player_charge_bow 0
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 0 run function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_0
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 run function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_2
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 run scoreboard players add @s reapermc.crankshaft.event.on_player_shoot_bow.charge_time 1
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 0 run scoreboard players set @s reapermc.crankshaft.event.on_player_shoot_bow.charge_time 0
execute if score @s reapermc.crankshaft.event.on_player_shoot_bow matches 1.. run function reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0/nested_3
```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_inventory_change/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_attack_entity/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_entity_attack_player/0`

```mcfunction

```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0/nested_3`

```mcfunction
scoreboard players set @s reapermc.crankshaft.event.on_player_shoot_bow 0
scoreboard players operation $event_handler_basic3#int$0 reapermc.wicked_expressions = @s reapermc.crankshaft.event.on_player_shoot_bow.charge_time
function #reapermc:crankshaft/event_handler/builtin/endpoint/on_player_shoot_bow
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/p_tick`

```mcfunction
execute as @a unless score @s reapermc.crankshaft.flag.is_charging_bow matches ..0 run scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement_reward`

```mcfunction
advancement revoke @s only reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement
scoreboard players set @s reapermc.crankshaft.flag.is_charging_bow 1
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__`

```mcfunction
execute store success score $event_handler_basic3#bool$0 reapermc.wicked_expressions if score @s reapermc.crankshaft.flag.is_charging_bow matches 1
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_1`

```mcfunction
tag @s remove reapermc.crankshaft.event.on_player_charge_bow_end
scoreboard players operation $event_handler_basic3#int$1 reapermc.wicked_expressions = @s reapermc.crankshaft.event.on_player_charge_bow_end
function #reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow_end
scoreboard players set @s reapermc.crankshaft.event.on_player_charge_bow_end 0
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_0`

```mcfunction
execute if entity @s[tag=reapermc.crankshaft.event.on_player_charge_bow_end] run function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_1
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/nested_2`

```mcfunction
tag @s add reapermc.crankshaft.event.on_player_charge_bow_end
scoreboard players add @s reapermc.crankshaft.event.on_player_charge_bow_end 1
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow/0/nested_6`

```mcfunction
scoreboard players add @s reapermc.crankshaft.event.on_player_charge_bow 1
scoreboard players operation $event_handler_basic3#int$2 reapermc.wicked_expressions = @s reapermc.crankshaft.event.on_player_charge_bow
function #reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow
```

`@advancement reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement`

```json
{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:using_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:bow"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement_reward"
  }
}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_load/0",
    "event_handler_basic3:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_tick/0",
    "reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/p_tick"
  ]
}
```

### event_handler_basic3

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup
function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add reapermc.crankshaft.event.on_player_shoot_bow.charge_time dummy
scoreboard objectives add reapermc.crankshaft.event.on_player_shoot_bow used:bow
scoreboard objectives add reapermc.crankshaft.flag.is_charging_bow dummy
scoreboard objectives add reapermc.crankshaft.event.on_player_charge_bow_end dummy
scoreboard objectives add reapermc.crankshaft.event.on_player_charge_bow dummy
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $event_handler_basic3#int$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#int$1 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#int$2 reapermc.wicked_expressions
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_shoot_bow/0`

```mcfunction
tellraw @s ["* ", {"score": {"name": "$event_handler_basic3#int$0", "objective": "reapermc.wicked_expressions"}}]
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_charge_bow_end/0`

```mcfunction
tellraw @s ["# ", {"score": {"name": "$event_handler_basic3#int$1", "objective": "reapermc.wicked_expressions"}}]
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/payload/on_player_charge_bow/0`

```mcfunction
tellraw @s {"score": {"name": "$event_handler_basic3#int$2", "objective": "reapermc.wicked_expressions"}}
```
