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
    "reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0",
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/payload/on_player_tick/0"
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
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/payload/on_player_sneak_start/0"
  ]
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
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_charge_bow_end`

```json
{
  "replace": false,
  "values": []
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/endpoint/on_player_shoot_bow`

```json
{
  "replace": false,
  "values": []
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

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_start/0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 1 if entity @s[tag=!reapermc.crankshaft.event.on_player_sneak_start] run function reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_start/nested_0
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 0 run tag @s remove reapermc.crankshaft.event.on_player_sneak_start
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

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_charge_bow_end/0`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/event_handler/builtin/handler/on_player_shoot_bow/0`

```mcfunction

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

`@function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__`

```mcfunction
execute store success score $flag_basic4#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check
```

`@function reapermc:crankshaft/event_handler/builtin/handler/on_player_sneak_start/nested_0`

```mcfunction
tag @s add reapermc.crankshaft.event.on_player_sneak_start
function #reapermc:crankshaft/event_handler/builtin/endpoint/on_player_sneak_start
```

`@predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_sneaking": true
    }
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
    "flag_basic4:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/handler/on_tick/0"
  ]
}
```

### flag_basic4

`@function flag_basic4:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function flag_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
```

`@function flag_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/payload/on_player_tick/0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 1 run say ++sneaking
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/payload/on_player_sneak_start/0`

```mcfunction
say sneaking!
```
