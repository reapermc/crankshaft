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

### docs_custom_load

`@function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__on_trigger__`

```mcfunction
function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__ce_early_dep_runner__
function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__payload__
function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__ce_dep_runner
```

`@function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__event_init__`

```mcfunction
function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__on_trigger__
```

`@function docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__payload__`

```mcfunction
tellraw @a "This runs off my custom load event!"
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "docs_custom_load:reapermc/crankshaft/custom_event/custom_load/__event_init__"
  ]
}
```
