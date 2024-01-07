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

### basic_event2

`@function basic_event2:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
```

`@function basic_event2:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event2:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event2:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event2:reapermc/wicked_expressions/loader/prio_0
function basic_event2:reapermc/wicked_expressions/loader/prio_1
function basic_event2:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event2:reapermc/crankshaft/builtin_event/load/__payload__`

```mcfunction
say <OTHER PACK> loaded!
say <OTHER PACK> class event loaded!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event2:reapermc/wicked_expressions/loader",
    "reapermc:crankshaft/builtin_event/load/__event_init__"
  ]
}
```

### reapermc

`@function reapermc:crankshaft/builtin_event/load/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/load
```

`@function reapermc:crankshaft/builtin_event/load/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/load/__payload_fork__
function reapermc:crankshaft/builtin_event/load/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/load/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__on_trigger__
```

`@function_tag reapermc:crankshaft/builtin_event/load/__payload_fork__`

```json
{
  "values": [
    "basic_event2:reapermc/crankshaft/builtin_event/load/__payload__"
  ]
}
```
