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

### event_handler_basic

`@function event_handler_basic:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
```

`@function event_handler_basic:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function event_handler_basic:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function event_handler_basic:reapermc/wicked_expressions/loader`

```mcfunction
function event_handler_basic:reapermc/wicked_expressions/loader/prio_0
function event_handler_basic:reapermc/wicked_expressions/loader/prio_1
function event_handler_basic:reapermc/wicked_expressions/loader/prio_2
```

`@function event_handler_basic:reapermc/crankshaft/builtin_event/load/local_payload`

```mcfunction
say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "event_handler_basic:reapermc/wicked_expressions/loader",
    "reapermc:crankshaft/builtin_event/load/handler/__event_init__"
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

`@function reapermc:crankshaft/builtin_event/load/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/load/local_payload_fork
function reapermc:crankshaft/builtin_event/load/subevent_runner
```

`@function reapermc:crankshaft/builtin_event/load/handler/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/on_trigger
```

`@function_tag reapermc:crankshaft/builtin_event/load/local_payload_fork`

```json
{
  "values": [
    "event_handler_basic:reapermc/crankshaft/builtin_event/load/local_payload"
  ]
}
```
