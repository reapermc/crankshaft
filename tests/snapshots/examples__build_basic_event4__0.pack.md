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

### basic_event4

`@function basic_event4:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.charge_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow used:bow
scoreboard objectives add reapermc.crankshaft.builtin_event.player_charge_bow.charge_time dummy
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

`@function basic_event4:reapermc/crankshaft/builtin_event/player_shot_bow/__payload__`

```mcfunction
scoreboard players operation $basic_event4#copy_args$0 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time
say poof!
give @s diamond
tellraw @s {"score": {"name": "$basic_event4#copy_args$0", "objective": "reapermc.wicked_expressions"}}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event4:reapermc/wicked_expressions/loader"
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

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_start/early_dependency_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_charge_bow
function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_charge_bow/__payload_fork__
function reapermc:crankshaft/builtin_event/player_charge_bow/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/reward`

```mcfunction
tag @s add reapermc.crankshaft.builtin_event.player_charge_bow.charging
scoreboard players add @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 1
function reapermc:crankshaft/builtin_event/player_charge_bow/__on_trigger__
advancement revoke @s only reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/on_charge
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

`@function reapermc:crankshaft/builtin_event/player_shot_bow/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_shot_bow/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_shot_bow/__payload_fork__
function reapermc:crankshaft/builtin_event/player_shot_bow/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow 0
function reapermc:crankshaft/builtin_event/player_shot_bow/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_shot_bow/__event_init__`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_charge_bow.charging] run scoreboard players set @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 0
tag @s remove reapermc.crankshaft.builtin_event.player_charge_bow.charging
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_charge_bow`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time = @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow matches 1.. run function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick/nested_execute_0
```

`@advancement reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/on_charge`

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
    "function": "reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/reward"
  }
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_shot_bow/__payload_fork__`

```json
{
  "values": [
    "basic_event4:reapermc/crankshaft/builtin_event/player_shot_bow/__payload__"
  ]
}
```
