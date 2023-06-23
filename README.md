# crankshaft

[![GitHub Actions](https://github.com/reapermc/crankshaft/workflows/CI/badge.svg)](https://github.com/reapermc/crankshaft/actions)

> Flow control library for the Bolt scripting language.

## Introduction

**Minecraft version: `1.19.4`**

This library implements various flow control APIs, which excel at speeding up prototyping and creating datapacks.

```py
from crankshaft:api import Listener
from crankshaft:events import on_load, on_player_join, on_player_jump
from crankshaft:flags import is_sneaking

@Listener(on_load)
def load():
    tellraw @a "datapack loaded!"

@Listener(on_player_join)
def player_join():
    say "I just joined the server!"

@Listener(on_player_jump)
def player_jump():
    if not is_sneaking:
        tellraw @a "JUMP!"
    else:
        tellraw @a "JUMP!... (I was sneaking as well)"
```

## Installation

```bash
pip install crankshaft
```

## Getting started

The library is designed to be used within any `bolt` script (either a `.mcfunction` or `bolt` file) inside a `bolt` enabled project.

```yaml
require:
    - bolt
    - crankshaft

pipeline:
    - mecha
```

Once you've required `bolt` and `crankshaft`, you are able to import the package's `api` module directly inside your bolt script.

Most of the imports come from the `crankshaft:api` module as shown below.

```py
from crankshaft:api import Listener
```

Now you're free to use the API!


## Documentation

Coming soon...
<!-- Docs available [here](./docs/home.md). -->

---

License - [MIT](https://github.com/reapermc/crankshaft/blob/main/LICENSE)
