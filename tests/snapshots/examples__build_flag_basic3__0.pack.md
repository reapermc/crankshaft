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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:main/nested_execute_0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_in_ground/__condition__
execute if score $flag_basic3#bool$0 reapermc.wicked_expressions matches 1 run function flag_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__/nested_0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "flag_basic3:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main"
  ]
}
```

### flag_basic3

`@function flag_basic3:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function flag_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic3#bool$0 reapermc.wicked_expressions
```

`@function flag_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__/nested_0`

```mcfunction
say xd?
kill @s
```

`@function flag_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function flag_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__`

```mcfunction
# ENSURE FUNC EXISTS
execute as @e[type=arrow] run function demo:main/nested_execute_0
```

### reapermc

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```

`@function reapermc:crankshaft/flag/builtin/is_in_ground/__condition__`

```mcfunction
execute store success score $flag_basic3#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_in_ground/__root__/predicate_check
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@predicate reapermc:crankshaft/flag/builtin/is_in_ground/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{inGround: 1b}"
  }
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "replace": false,
  "values": [
    "flag_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```
