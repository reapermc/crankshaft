# Crankshaft

[![GitHub Actions](https://github.com/reapermc/crankshaft/workflows/CI/badge.svg)](https://github.com/reapermc/crankshaft/actions)
[![ReaperMC Discord](https://img.shields.io/discord/1145490732161974294?color=7289DA&label=ReaperMC&logo=discord&logoColor=fff)](https://discord.gg/PwdeKpUtRr)
[![Beet Discord](https://img.shields.io/discord/900530660677156924?color=7289DA&label=Beet&logo=discord&logoColor=fff)](https://discord.gg/98MdSGMm8j)

> Flow control library for the Bolt scripting language.

```py
from crankshaft:api import event

@event
def load():
    tellraw @a "Hello, World!"

@event
def player_join():
    tellraw @s {"text": "A diamond for you!", "color": "aqua"}
    give @s diamond
```

## Documentation

Available over at [Crankshaft Documentation](https://reapermc.github.io/crankshaft/docs)

## Contributing

Contributions are welcome. Make sure to first open an issue discussing a problem or a new feature before creating a pull request. This project uses [poetry](https://python-poetry.org).

```bash
poetry install
```

You can run the tests with `poetry run pytest -v`.

```bash
poetry run pytest -v
```

---

License - [MIT](https://github.com/reapermc/crankshaft/blob/main/LICENSE)
