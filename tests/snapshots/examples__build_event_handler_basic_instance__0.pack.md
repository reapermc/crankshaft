# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 18,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

### reapermc

`@function reapermc:crankshaft/builtin_event/load/on_trigger`

```mcfunction
function #reapermc:crankshaft/builtin_event/load/local_payload_fork
```

`@function reapermc:crankshaft/builtin_event/load/handler_dir/handler`

```mcfunction
function reapermc:crankshaft/builtin_event/load/on_trigger
```

`@function_tag reapermc:crankshaft/builtin_event/load/local_payload_fork`

```json
{
  "values": [
    "event_handler_basic_instance:reapermc/crankshaft/builtin_event/load/local_payload"
  ]
}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/load/handler_dir/handler"
  ]
}
```

### event_handler_basic_instance

`@function event_handler_basic_instance:reapermc/crankshaft/builtin_event/load/local_payload`

```mcfunction
say load 1!
say load 2!
```
