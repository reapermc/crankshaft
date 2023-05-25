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
execute if score $flag_handler_basic2#bool$0 reapermc.wicked_expressions matches 1 run say +
execute if score $flag_handler_basic2#bool$0 reapermc.wicked_expressions matches 0 run say -
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "flag_handler_basic2:reapermc/wicked_expressions/safe_load"
  ]
}
```

### flag_handler_basic2

`@function flag_handler_basic2:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_handler_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup
function flag_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function flag_handler_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function flag_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_handler_basic2#bool$1 reapermc.wicked_expressions
```

`@function flag_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $flag_handler_basic2#int$0 reapermc.wicked_expressions
```

### reapermc

`@function reapermc:crankshaft/flag/builtin/is_player/__condition__`

```mcfunction
execute store success score $flag_handler_basic2#bool$0 reapermc.wicked_expressions if entity @s[type=player]
```
