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

`@function reapermc:crankshaft/builtin_event/load/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/load/local_payload_fork
function reapermc:crankshaft/builtin_event/load/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_load/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/player_load/local_payload_fork
function reapermc:crankshaft/builtin_event/player_load/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_join/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/player_join/local_payload_fork
function reapermc:crankshaft/builtin_event/player_join/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick/we_comp_autonest/0t`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_join.join_tracker 0
function reapermc:crankshaft/builtin_event/player_join/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/player_shot_bow/local_payload_fork
function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick/we_comp_autonest/1t`

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
execute store success score $event_handler_event_dependency#bool$0 reapermc.wicked_expressions if score @s reapermc.crankshaft.builtin_event.player_join.join_tracker matches 1..
execute unless score $event_handler_event_dependency#bool$0 reapermc.wicked_expressions matches 0 run function reapermc:crankshaft/builtin_event/player_join/subevent_entrypoint/player_tick/we_comp_autonest/0t
```

`@function reapermc:crankshaft/builtin_event/player_load/subevent_entrypoint/player_join`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/on_trigger
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick`

```mcfunction
execute store success score $event_handler_event_dependency#bool$1 reapermc.wicked_expressions if score @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow matches 1..
execute unless score $event_handler_event_dependency#bool$1 reapermc.wicked_expressions matches 0 run function reapermc:crankshaft/builtin_event/player_shot_bow/subevent_entrypoint/player_tick/we_comp_autonest/1t
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

### minecraft

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/tick/handler/__event_init__"
  ]
}
```

`@function_tag minecraft:load`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/load/handler/__event_init__",
    "event_handler_event_dependency:reapermc/wicked_expressions/loader"
  ]
}
```

### event_handler_event_dependency

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft.builtin_event.player_join.join_tracker custom:leave_game
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow used:bow
```

`@function event_handler_event_dependency:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $event_handler_event_dependency#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_event_dependency#bool$1 reapermc.wicked_expressions
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
tellraw @s "woosh!"
```

`@function event_handler_event_dependency:reapermc/crankshaft/builtin_event/load/local_payload`

```mcfunction
say hi
```
