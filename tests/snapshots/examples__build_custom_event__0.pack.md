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

### custom_event

`@function custom_event:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.custom_event.__generic__ dummy
```

`@function custom_event:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function custom_event:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function custom_event:reapermc/wicked_expressions/loader`

```mcfunction
function custom_event:reapermc/wicked_expressions/loader/prio_0
function custom_event:reapermc/wicked_expressions/loader/prio_1
function custom_event:reapermc/wicked_expressions/loader/prio_2
```

`@function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__on_trigger__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__ce_dep_runner
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__payload__
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__ce_early_dep_runner__
```

`@function custom_event:reapermc/crankshaft/builtin_event/load/__ce_dep_runner__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/dependency_entrypoint/load
```

`@function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/dependency_entrypoint/load`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__on_trigger__
```

`@function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/__payload__`

```mcfunction
say hi (custom event)!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "custom_event:reapermc/wicked_expressions/loader",
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
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/load/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/load/__payload__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/load/__ce_dep_runner__",
      "required": false
    }
  ]
}
```
