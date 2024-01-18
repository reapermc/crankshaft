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

### basic_event6

`@function basic_event6:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.custom_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_sprint.sprint_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_sprint_end.sprint_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_swim.swim_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_swim_end.swim_time dummy
```

`@function basic_event6:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event6:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event6:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event6:reapermc/wicked_expressions/loader/prio_0
function basic_event6:reapermc/wicked_expressions/loader/prio_1
function basic_event6:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_sprint_start/__payload__`

```mcfunction
tellraw @a "start"
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_sprint/__payload__`

```mcfunction
scoreboard players operation $basic_event6#copy_args$0 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_sprint.sprint_time
tellraw @s {"score": {"name": "$basic_event6#copy_args$0", "objective": "reapermc.wicked_expressions"}}
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_sprint_end/__payload__`

```mcfunction
scoreboard players operation $basic_event6#copy_args$1 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_sprint_end.sprint_time
tellraw @s ["end ", {"score": {"name": "$basic_event6#copy_args$1", "objective": "reapermc.wicked_expressions"}}]
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_swim_start/__payload__`

```mcfunction
tellraw @s "start"
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_swim/__payload__`

```mcfunction
scoreboard players operation $basic_event6#copy_args$2 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_swim.swim_time
tellraw @s {"score": {"name": "$basic_event6#copy_args$2", "objective": "reapermc.wicked_expressions"}}
```

`@function basic_event6:reapermc/crankshaft/builtin_event/player_swim_end/__payload__`

```mcfunction
scoreboard players operation $basic_event6#copy_args$3 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_swim_end.swim_time
tellraw @s ["end ", {"score": {"name": "$basic_event6#copy_args$3", "objective": "reapermc.wicked_expressions"}}]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event6:reapermc/wicked_expressions/loader"
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

`@function reapermc:crankshaft/builtin_event/player_sprint/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sprint_start/early_dependency_entrypoint/player_sprint
```

`@function reapermc:crankshaft/builtin_event/player_sprint/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_sprint
```

`@function reapermc:crankshaft/builtin_event/player_swim/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_swim_start/early_dependency_entrypoint/player_swim
```

`@function reapermc:crankshaft/builtin_event/player_swim/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_swim
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

`@function reapermc:crankshaft/builtin_event/player_sprint/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sprint/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sprint/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sprint/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sprint/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players add @s reapermc.crankshaft.builtin_event.player_sprint.sprint_time 1
function reapermc:crankshaft/builtin_event/player_sprint/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_sprinting/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_sprint_start/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sprint_start/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sprint_start/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sprint_start/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sprint_end/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_sprint_end/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_sprint_end/__payload_fork__
function reapermc:crankshaft/builtin_event/player_sprint_end/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_sprint_end.temp
function reapermc:crankshaft/builtin_event/player_sprint_end/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_swim/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_swim/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_swim/__payload_fork__
function reapermc:crankshaft/builtin_event/player_swim/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_swim/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players add @s reapermc.crankshaft.builtin_event.player_swim.swim_time 1
function reapermc:crankshaft/builtin_event/player_swim/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_swimming/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_swim_start/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_swim_start/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_swim_start/__payload_fork__
function reapermc:crankshaft/builtin_event/player_swim_start/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_swim_end/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_swim_end/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_swim_end/__payload_fork__
function reapermc:crankshaft/builtin_event/player_swim_end/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_swim_end.temp
function reapermc:crankshaft/builtin_event/player_swim_end/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_sprint/dependency_entrypoint/player_tick`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_sprinting/handler/check run function reapermc:crankshaft/builtin_event/player_sprint/dependency_entrypoint/player_tick/nested_execute_0
execute unless predicate reapermc:crankshaft/builtin_flag/is_sprinting/handler/check run scoreboard players set @s reapermc.crankshaft.builtin_event.player_sprint.sprint_time 0
```

`@function reapermc:crankshaft/builtin_event/player_sprint_start/early_dependency_entrypoint/player_sprint`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_sprint.sprint_time matches 1 run function reapermc:crankshaft/builtin_event/player_sprint_start/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_sprint_end/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_sprint`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_sprint_end.sprint_time = @s reapermc.crankshaft.builtin_event.player_sprint.sprint_time
tag @s add reapermc.crankshaft.builtin_event.player_sprint_end.sprinting
tag @s add reapermc.crankshaft.builtin_event.player_sprint_end.temp
```

`@function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_sprint_end.sprinting] if entity @s[tag=reapermc.crankshaft.builtin_event.player_sprint_end.temp] run function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_tick/nested_execute_0
tag @s remove reapermc.crankshaft.builtin_event.player_sprint_end.sprinting
```

`@function reapermc:crankshaft/builtin_event/player_swim/dependency_entrypoint/player_tick`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_swimming/handler/check run function reapermc:crankshaft/builtin_event/player_swim/dependency_entrypoint/player_tick/nested_execute_0
execute unless predicate reapermc:crankshaft/builtin_flag/is_swimming/handler/check run scoreboard players set @s reapermc.crankshaft.builtin_event.player_swim.swim_time 0
```

`@function reapermc:crankshaft/builtin_event/player_swim_start/early_dependency_entrypoint/player_swim`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_swim.swim_time matches 1 run function reapermc:crankshaft/builtin_event/player_swim_start/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_swim_end/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_swim`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_swim_end.swim_time = @s reapermc.crankshaft.builtin_event.player_swim.swim_time
tag @s add reapermc.crankshaft.builtin_event.player_swim_end.swimming
tag @s add reapermc.crankshaft.builtin_event.player_swim_end.temp
```

`@function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_swim_end.swimming] if entity @s[tag=reapermc.crankshaft.builtin_event.player_swim_end.temp] run function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_tick/nested_execute_0
tag @s remove reapermc.crankshaft.builtin_event.player_swim_end.swimming
```

`@predicate reapermc:crankshaft/builtin_flag/is_sprinting/handler/check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_sprinting": true
    }
  }
}
```

`@predicate reapermc:crankshaft/builtin_flag/is_swimming/handler/check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_swimming": true
    }
  }
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sprint_start/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_start/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_start/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_start/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sprint/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint/__ce_dep_runner__",
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
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__",
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
      "id": "basic_event6:reapermc/crankshaft/builtin_event/tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_sprint_end/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_end/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_end/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_sprint_end/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_swim_start/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_start/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_start/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_start/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_swim/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_swim_end/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_end/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_end/__payload__",
      "required": false
    },
    {
      "id": "basic_event6:reapermc/crankshaft/builtin_event/player_swim_end/__ce_dep_runner__",
      "required": false
    }
  ]
}
```
