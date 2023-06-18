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
    "event_handler_basic2:reapermc/wicked_expressions/safe_load",
    "reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main"
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

### event_handler_basic2

`@function event_handler_basic2:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function event_handler_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic2#bool$0 reapermc.wicked_expressions
```

`@function event_handler_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.crankshaft.on_player_join custom:leave_game
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__`

```mcfunction
execute if score @s reapermc.crankshaft.on_player_join matches 1.. run function reapermc:crankshaft/event_handler/builtin/on_player_join/__handler__/main
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_join/__payload__`

```mcfunction
say only runs on join
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_load/__bypass_fork__`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/event_handler/builtin/on_player_load/__trigger__
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_join/__bypass_fork__`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_player_load/__trigger__
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_load/__payload__`

```mcfunction
say runs on both join and reload
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__`

```mcfunction
execute if data entity @s SelectedItem run function event_handler_basic2:reapermc/crankshaft/event_handler/custom/0__event_handler_basic2/__payload__
execute if data entity @s Inventory[{Slot: -106b}] run function event_handler_basic2:reapermc/crankshaft/event_handler/custom/0__event_handler_basic2/__payload__
```

`@function event_handler_basic2:reapermc/crankshaft/event_handler/custom/0__event_handler_basic2/__payload__`

```mcfunction
say Im holding an item!
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

`@function reapermc:crankshaft/event_handler/builtin/on_player_join/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_join/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_join/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_join/__handler__/main`

```mcfunction
scoreboard players set @s reapermc.crankshaft.on_player_join 0
function reapermc:crankshaft/event_handler/builtin/on_player_join/__trigger__
```

`@function reapermc:crankshaft/event_handler/builtin/on_load/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_load/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_load/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_load/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_load/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_load/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@function reapermc:crankshaft/event_handler/builtin/on_load/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_load/__trigger__
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_join/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_join/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_load/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_load/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_load/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_load/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_join/__bypass_fork_tag__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_join/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_load/__fork__`

```json
{
  "replace": false,
  "values": [
    "event_handler_basic2:reapermc/crankshaft/event_handler/builtin/on_player_load/__payload__"
  ]
}
```
