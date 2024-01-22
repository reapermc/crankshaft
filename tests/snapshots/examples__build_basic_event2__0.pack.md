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
      "id": "basic_event2:reapermc/crankshaft/builtin_event/load/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event2:reapermc/crankshaft/builtin_event/load/__payload__",
      "required": false
    },
    {
      "id": "basic_event2:reapermc/crankshaft/builtin_event/load/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/load/__event_init__"
  ]
}
```

### basic_event2

`@function basic_event2:reapermc/crankshaft/builtin_event/load/__payload__`

```mcfunction
say <OTHER PACK> loaded!
say <OTHER PACK> class event loaded!
```
