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
    "event_handler_basic:reapermc/wicked_expressions/safe_load",
    "reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main"
  ]
}
```

### event_handler_basic

`@function event_handler_basic:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup
function event_handler_basic:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function event_handler_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function event_handler_basic:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic#bool$1 reapermc.wicked_expressions
```

`@function event_handler_basic:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $event_handler_basic#int$0 reapermc.wicked_expressions
```

`@function event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_load/__payload__`

```mcfunction
say hello
summon creeper ~ ~ ~
say wtf
help pls work
```

`@function event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__`

```mcfunction
say hello this is a tick
execute as @a at @s run function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__
```

`@function event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__`

```mcfunction
execute if data entity @s SelectedItem run function event_handler_basic:reapermc/crankshaft/event_handler/custom/0__event_handler_basic/__payload__
execute if data entity @s Inventory[{Slot: -106b}] run function event_handler_basic:reapermc/crankshaft/event_handler/custom/0__event_handler_basic/__payload__
```

`@function event_handler_basic:reapermc/crankshaft/event_handler/custom/0__event_handler_basic/__payload__`

```mcfunction
say Im holding an item!
```

### reapermc

`@function_tag reapermc:crankshaft/event_handler/builtin/on_load/__fork__`

```json
{
  "values": [
    "event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_load/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
```

`@function reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_load/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```
