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

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "flag_basic4:reapermc/wicked_expressions/safe_load"
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

### flag_basic4

`@function flag_basic4:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function flag_basic4:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic4#bool$0 reapermc.wicked_expressions
```

`@function flag_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 1 run say ++sneaking
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 1 if entity @s[tag=!reapermc.crankshaft.event_handler.on_player_sneak_start] run function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__handler__/nest_0
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $flag_basic4#bool$0 reapermc.wicked_expressions matches 0 run tag @s remove reapermc.crankshaft.event_handler.on_player_sneak_start
```

`@function flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__`

```mcfunction
say sneaking!
```

### reapermc

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__
```

`@function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__`

```mcfunction
execute store success score $flag_basic4#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__handler__/nest_0`

```mcfunction
tag @s add reapermc.crankshaft.event_handler.on_player_sneak_start
function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__trigger__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_sneaking": true
    }
  }
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__fork__`

```json
{
  "values": [
    "flag_basic4:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__"
  ]
}
```
