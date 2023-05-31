# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_player/__condition__
execute if score $flag_basic#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute if score $flag_basic#bool$0 reapermc.wicked_expressions matches 0 run say FALSE
function reapermc:crankshaft/flag/builtin/is_burning/__condition__
execute if score $flag_basic#bool$0 reapermc.wicked_expressions matches 0 run say you are not on fire
execute if score $flag_basic#bool$0 reapermc.wicked_expressions matches 1 run say actually... you are on fire
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "flag_basic:reapermc/wicked_expressions/safe_load"
  ]
}
```

### flag_basic

`@function flag_basic:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_basic:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function flag_basic:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic#bool$0 reapermc.wicked_expressions
```

`@function flag_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

### reapermc

`@predicate reapermc:crankshaft/flag/builtin/is_burning/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_on_fire": true
    }
  }
}
```

`@function reapermc:crankshaft/flag/builtin/is_player/__condition__`

```mcfunction
execute store success score $flag_basic#bool$0 reapermc.wicked_expressions if entity @s[type=player]
```

`@function reapermc:crankshaft/flag/builtin/is_burning/__condition__`

```mcfunction
execute store success score $flag_basic#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_burning/__root__/predicate_check
```
