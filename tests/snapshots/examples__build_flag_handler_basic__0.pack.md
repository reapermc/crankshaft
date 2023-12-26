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

### flag_handler_basic

`@function flag_handler_basic:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging dummy
```

`@function flag_handler_basic:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $flag_handler_basic#bool$0 reapermc.wicked_expressions
```

`@function flag_handler_basic:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function flag_handler_basic:reapermc/wicked_expressions/loader`

```mcfunction
function flag_handler_basic:reapermc/wicked_expressions/loader/prio_0
function flag_handler_basic:reapermc/wicked_expressions/loader/prio_1
function flag_handler_basic:reapermc/wicked_expressions/loader/prio_2
```

`@function flag_handler_basic:reapermc/crankshaft/builtin_event/player_tick/local_payload`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check run say airborne
execute unless predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check run tellraw @a " "
execute unless score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches 0 run say charging bow
execute if score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches 0 run tellraw @a " "
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "flag_handler_basic:reapermc/wicked_expressions/loader"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/tick/handler/__event_init__",
    "reapermc:crankshaft/builtin_flag/is_charging_bow/handler/tick"
  ]
}
```

### reapermc

`@function reapermc:crankshaft/builtin_event/tick/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/subevent_entrypoint/tick
```

`@function reapermc:crankshaft/builtin_event/player_tick/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick
```

`@function reapermc:crankshaft/builtin_event/player_join/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/player_join
```

`@function reapermc:crankshaft/builtin_event/load/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/load
```

`@function reapermc:crankshaft/builtin_event/tick/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/tick/local_payload_fork
function reapermc:crankshaft/builtin_event/tick/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_tick/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/player_tick/local_payload_fork
function reapermc:crankshaft/builtin_event/player_tick/subevent_runner
```

`@function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/tick/nested_execute_0`

```mcfunction
execute store success score $flag_handler_basic#bool$0 reapermc.wicked_expressions unless score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches ..0
execute unless score $flag_handler_basic#bool$0 reapermc.wicked_expressions matches 0 run scoreboard players remove @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging 1
```

`@function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/tick`

```mcfunction
execute as @a run function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge_reward`

```mcfunction
advancement revoke @s only reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge
scoreboard players set @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging 1
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_airborne/handler/__flag_init__`

```mcfunction

```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_charging_bow/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/tick/handler/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_tick/subevent_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/on_trigger
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

`@advancement reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge`

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
    "function": "reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge_reward"
  }
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_tick/local_payload_fork`

```json
{
  "values": [
    "flag_handler_basic:reapermc/crankshaft/builtin_event/player_tick/local_payload"
  ]
}
```
