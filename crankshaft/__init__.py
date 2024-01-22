__version__ = "1.0.0"


from beet import Context
from beet.contrib.load import load


def beet_default(ctx: Context):
    ctx.require(
        load(
            data_pack={
                "data/crankshaft/modules": "@crankshaft/modules",
            },
        ),
        "wicked_expressions",
        "lightning_rod",
    )
