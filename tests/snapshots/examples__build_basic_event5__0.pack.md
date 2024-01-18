# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 26,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

### basic_event5

`@function basic_event5:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.custom_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_airborne.air_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_airborne_end.air_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_sneak.sneak_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_sneak_end.sneak_time dummy
```

`@function basic_event5:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event5:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event5:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event5:reapermc/wicked_expressions/loader/prio_0
function basic_event5:reapermc/wicked_expressions/loader/prio_1
function basic_event5:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_airborne_start/__payload__`

```mcfunction
tellraw @a "start"
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_airborne/__payload__`

```mcfunction
scoreboard players operation $basic_event5#copy_args$0 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_airborne.air_time
tellraw @s {"score": {"name": "$basic_event5#copy_args$0", "objective": "reapermc.wicked_expressions"}}
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_airborne_end/__payload__`

```mcfunction
scoreboard players operation $basic_event5#copy_args$1 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_airborne_end.air_time
tellraw @s ["end ", {"score": {"name": "$basic_event5#copy_args$1", "objective": "reapermc.wicked_expressions"}}]
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_sneak_start/__payload__`

```mcfunction
tellraw @s "start"
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_sneak/__payload__`

```mcfunction
scoreboard players operation $basic_event5#copy_args$2 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_sneak.sneak_time
tellraw @s {"score": {"name": "$basic_event5#copy_args$2", "objective": "reapermc.wicked_expressions"}}
```

`@function basic_event5:reapermc/crankshaft/builtin_event/player_sneak_end/__payload__`

```mcfunction
scoreboard players operation $basic_event5#copy_args$3 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_sneak_end.sneak_time
tellraw @s {"score": {"name": "$basic_event5#copy_args$3", "objective": "reapermc.wicked_expressions"}}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event5:reapermc/wicked_expressions/loader"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/tick/__event_init__"
  ]
}
```

### reapermc

`@function reapermc:crankshaft/builtin_event/tick/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick
function reapermc:crankshaft/builtin_event/player_respawn/dependency_entrypoint/tick
```

`@function reapermc:crankshaft/builtin_event/player_tick/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_charge_bow/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_use_wfoas/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_jump/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_land/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_die/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_airborne/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sneak/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sprint/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_swim/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_glide/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_glide_end/dependency_entrypoint/player_tick
```

`@function reapermc:crankshaft/builtin_event/player_airborne/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_airborne_start/early_dependency_entrypoint/player_airborne
```

`@function reapermc:crankshaft/builtin_event/player_airborne/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_airborne
```

`@function reapermc:crankshaft/builtin_event/player_sneak/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sneak_start/early_dependency_entrypoint/player_sneak
```

`@function reapermc:crankshaft/builtin_event/player_sneak/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_sneak
```

`@function reapermc:crankshaft/builtin_event/tick/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/tick/__payload_fork__
function reapermc:crankshaft/builtin_event/tick/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_tick/__payload_fork__
function reapermc:crankshaft/builtin_event/player_tick/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_airborne/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_airborne/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_airborne/__payload_fork__
function reapermc:crankshaft/builtin_event/player_airborne/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_airborne/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players add @s reapermc.crankshaft.builtin_event.player_airborne.air_time 1
function reapermc:crankshaft/builtin_event/player_airborne/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_airborne/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_airborne_start/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_airborne_start/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_airborne_start/__payload_fork__
function reapermc:crankshaft/builtin_event/player_airborne_start/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_airborne_end/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_airborne_end/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_airborne_end/__payload_fork__
function reapermc:crankshaft/builtin_event/player_airborne_end/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_airborne_end.temp
function reapermc:crankshaft/builtin_event/player_airborne_end/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_sneak/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sneak/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sneak/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sneak/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sneak/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players add @s reapermc.crankshaft.builtin_event.player_sneak.sneak_time 1
function reapermc:crankshaft/builtin_event/player_sneak/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_sneaking/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_sneak_start/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sneak_start/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sneak_start/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sneak_start/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sneak_end/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sneak_end/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sneak_end/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sneak_end/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_sneak_end.temp
function reapermc:crankshaft/builtin_event/player_sneak_end/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_airborne/dependency_entrypoint/player_tick`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check run function reapermc:crankshaft/builtin_event/player_airborne/dependency_entrypoint/player_tick/nested_execute_0
execute unless predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check run scoreboard players set @s reapermc.crankshaft.builtin_event.player_airborne.air_time 0
```

`@function reapermc:crankshaft/builtin_event/player_airborne_start/early_dependency_entrypoint/player_airborne`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_airborne.air_time matches 1 run function reapermc:crankshaft/builtin_event/player_airborne_start/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_airborne_end/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_airborne`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_airborne_end.air_time = @s reapermc.crankshaft.builtin_event.player_airborne.air_time
tag @s add reapermc.crankshaft.builtin_event.player_airborne_end.airborne
tag @s add reapermc.crankshaft.builtin_event.player_airborne_end.temp
```

`@function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_airborne_end.airborne] if entity @s[tag=reapermc.crankshaft.builtin_event.player_airborne_end.temp] run function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_tick/nested_execute_0
tag @s remove reapermc.crankshaft.builtin_event.player_airborne_end.airborne
```

`@function reapermc:crankshaft/builtin_event/player_sneak/dependency_entrypoint/player_tick`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_sneaking/handler/check run function reapermc:crankshaft/builtin_event/player_sneak/dependency_entrypoint/player_tick/nested_execute_0
execute unless predicate reapermc:crankshaft/builtin_flag/is_sneaking/handler/check run scoreboard players set @s reapermc.crankshaft.builtin_event.player_sneak.sneak_time 0
```

`@function reapermc:crankshaft/builtin_event/player_sneak_start/early_dependency_entrypoint/player_sneak`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_sneak.sneak_time matches 1 run function reapermc:crankshaft/builtin_event/player_sneak_start/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_sneak_end/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_sneak`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_sneak_end.sneak_time = @s reapermc.crankshaft.builtin_event.player_sneak.sneak_time
tag @s add reapermc.crankshaft.builtin_event.player_sneak_end.sneaking
tag @s add reapermc.crankshaft.builtin_event.player_sneak_end.temp
```

`@function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_sneak_end.sneaking] if entity @s[tag=reapermc.crankshaft.builtin_event.player_sneak_end.temp] run function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_tick/nested_execute_0
tag @s remove reapermc.crankshaft.builtin_event.player_sneak_end.sneaking
```

`@predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{OnGround: 0b}"
  }
}
```

`@predicate reapermc:crankshaft/builtin_flag/is_sneaking/handler/check`

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

`@function_tag reapermc:crankshaft/builtin_event/player_airborne_start/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_start/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_start/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_start/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_airborne/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_tick/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/tick/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_airborne_end/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_end/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_end/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_airborne_end/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sneak_start/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_start/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_start/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_start/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sneak/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sneak_end/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_end/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_end/__payload__",
      "required": false
    },
    {
      "id": "basic_event5:reapermc/crankshaft/builtin_event/player_sneak_end/__ce_dep_runner__",
      "required": false
    }
  ]
}
```
