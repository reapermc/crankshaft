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

### basic_event

`@function basic_event:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_join.join_tracker custom:leave_game
```

`@function basic_event:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event:reapermc/wicked_expressions/loader/prio_0
function basic_event:reapermc/wicked_expressions/loader/prio_1
function basic_event:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event:reapermc/crankshaft/builtin_event/load/__payload__`

```mcfunction
say loaded!
say class event loaded!
say init!
say init2!
say init!
say init2!
say aaaaaa
```

`@function basic_event:reapermc/crankshaft/builtin_event/player_join/__payload__`

```mcfunction
say foo!
give @s diamond
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event:reapermc/wicked_expressions/loader",
    "reapermc:crankshaft/builtin_event/load/__event_init__"
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
```

`@function reapermc:crankshaft/builtin_event/load/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/load
```

`@function reapermc:crankshaft/builtin_event/player_join/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/player_join
```

`@function reapermc:crankshaft/builtin_event/load/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/load/__payload_fork__
function reapermc:crankshaft/builtin_event/load/__dep_runner__
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

`@function reapermc:crankshaft/builtin_event/player_join/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_join/__payload_fork__
function reapermc:crankshaft/builtin_event/player_join/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_join.join_tracker 0
function reapermc:crankshaft/builtin_event/player_join/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/load/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_join.join_tracker matches 1.. run function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick/nested_execute_0
```

`@function_tag reapermc:crankshaft/builtin_event/load/__payload_fork__`

```json
{
  "values": [
    "basic_event:reapermc/crankshaft/builtin_event/load/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_join/__payload_fork__`

```json
{
  "values": [
    "basic_event:reapermc/crankshaft/builtin_event/player_join/__payload__"
  ]
}
```
