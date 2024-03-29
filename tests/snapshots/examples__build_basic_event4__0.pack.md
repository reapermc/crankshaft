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

`@function reapermc:crankshaft/builtin_event/player_use_coas/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_use_coas/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_use_coas/__payload_fork__
function reapermc:crankshaft/builtin_event/player_use_coas/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_use_coas.use 0
function reapermc:crankshaft/builtin_event/player_use_coas/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_use_coas.use matches 1.. run function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick/nested_execute_0
```

`@function_tag reapermc:crankshaft/builtin_event/player_use_coas/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_use_coas/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_use_coas/__payload__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_use_coas/__ce_dep_runner__",
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
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__",
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
      "id": "basic_event4:reapermc/crankshaft/builtin_event/tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event4:reapermc/crankshaft/builtin_event/tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

### minecraft

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/tick/__event_init__"
  ]
}
```

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event4:reapermc/wicked_expressions/loader"
  ]
}
```

### basic_event4

`@function basic_event4:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft.builtin_event.player_use_coas.use used:carrot_on_a_stick
```

`@function basic_event4:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event4:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event4:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event4:reapermc/wicked_expressions/loader/prio_0
function basic_event4:reapermc/wicked_expressions/loader/prio_1
function basic_event4:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event4:reapermc/crankshaft/builtin_event/player_use_coas/__payload__`

```mcfunction
say click!
give @s diamond
```
