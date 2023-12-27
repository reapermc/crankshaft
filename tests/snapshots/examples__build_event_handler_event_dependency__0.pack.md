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

### event_handler_event_dependency

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_join.join_tracker custom:leave_game
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.charge_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow used:bow
scoreboard objectives add reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_charge_bow.charge_time dummy
```

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader`

```mcfunction
function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_0
function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_1
function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_2
```

`@function event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_tick/local_payload`

```mcfunction
say hi! ;)
```

`@function event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_load/local_payload`

```mcfunction
tellraw @s "There you go! ^^"
give @s diamond
```

`@function event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_shot_bow/local_payload`

```mcfunction
scoreboard players operation $event_handler_event_dependency#copy_args$1 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time
tellraw @s "woosh!"
```

`@function event_handler_event_dependency:reapermc/crankshaft/builtin_event/load/local_payload`

```mcfunction
say hi
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "event_handler_event_dependency:reapermc/wicked_expressions/loader",
    "reapermc:crankshaft/builtin_event/load/handler/__event_init__"
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
function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_charge_bow_end/subevent_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_jump/subevent_entrypoint/player_tick
```

`@function reapermc:crankshaft/builtin_event/load/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/load
```

`@function reapermc:crankshaft/builtin_event/player_join/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/player_join
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/early_subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_start/early_subevent_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_runner`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_end/subevent_entrypoint/player_charge_bow
function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/tick/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/early_subevent_runner
function #reapermc:crankshaft/builtin_event/tick/local_payload_fork
function reapermc:crankshaft/builtin_event/tick/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_tick/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/early_subevent_runner
function #reapermc:crankshaft/builtin_event/player_tick/local_payload_fork
function reapermc:crankshaft/builtin_event/player_tick/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/load/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/load/early_subevent_runner
function #reapermc:crankshaft/builtin_event/load/local_payload_fork
function reapermc:crankshaft/builtin_event/load/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_load/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/early_subevent_runner
function #reapermc:crankshaft/builtin_event/player_load/local_payload_fork
function reapermc:crankshaft/builtin_event/player_load/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_join/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/early_subevent_runner
function #reapermc:crankshaft/builtin_event/player_join/local_payload_fork
function reapermc:crankshaft/builtin_event/player_join/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_join.join_tracker 0
function reapermc:crankshaft/builtin_event/player_join/on_trigger
```

`@function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/tick`

```mcfunction
execute as @a if score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches 1.. run scoreboard players remove @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging 1
```

`@function reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge_reward`

```mcfunction
advancement revoke @s only reapermc:crankshaft/builtin_flag/is_charging_bow/handler/on_charge
scoreboard players set @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging 1
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow/early_subevent_runner
function #reapermc:crankshaft/builtin_event/player_charge_bow/local_payload_fork
function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players add @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 1
function reapermc:crankshaft/builtin_event/player_charge_bow/on_trigger
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_charging_bow/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/on_trigger`

```mcfunction
function reapermc:crankshaft/builtin_event/player_shot_bow/early_subevent_runner
function #reapermc:crankshaft/builtin_event/player_shot_bow/local_payload_fork
function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow 0
function reapermc:crankshaft/builtin_event/player_shot_bow/on_trigger
```

`@function reapermc:crankshaft/builtin_event/tick/handler/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_tick/subevent_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/on_trigger
```

`@function reapermc:crankshaft/builtin_event/load/handler/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/load`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_load/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_join.join_tracker matches 1.. run function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/player_join`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/on_trigger
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_shot_bow/handler/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_entrypoint/player_tick`

```mcfunction
execute unless score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches 0 run function reapermc:crankshaft/builtin_event/player_charge_bow/subevent_entrypoint/player_tick/nested_execute_0
execute if score @s reapermc.crankshaft.builtin_flag.is_charging_bow.is_charging matches 0 run scoreboard players set @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 0
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_charge_bow`

```mcfunction
scoreboard players operation $event_handler_event_dependency#copy_args$0 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time = $event_handler_event_dependency#copy_args$0 reapermc.wicked_expressions
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow matches 1.. run function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick/nested_execute_0
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
    "event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_tick/local_payload"
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_load/local_payload_fork`

```json
{
  "values": [
    "event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_load/local_payload"
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_shot_bow/local_payload_fork`

```json
{
  "values": [
    "event_handler_event_dependency:reapermc/crankshaft/builtin_event/player_shot_bow/local_payload"
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/load/local_payload_fork`

```json
{
  "values": [
    "event_handler_event_dependency:reapermc/crankshaft/builtin_event/load/local_payload"
  ]
}
```