Crankshaft Documentation
========================

Welcome! This is the official documentation page for the **Crankshaft** project, a flow control library that focuses on event-driven development to assist you in your datapack development journey.

If you ever feel lost or would like to learn more, be sure to join our **ReaperMC** discord server or alternatively ask around on the **Beet** discord server!

**ReaperMC**

.. image:: https://img.shields.io/discord/1145490732161974294?color=7289DA&label=ReaperMC&logo=discord&logoColor=fff
    :target: https://discord.gg/PwdeKpUtRr

**Beet**

.. image:: https://img.shields.io/discord/900530660677156924?color=7289DA&label=Beet&logo=discord&logoColor=fff
    :target: https://discord.gg/98MdSGMm8j


Introduction
------------
**Crankshaft** significantly accelerates your development process, enabling you to create working prototypes in no time while also maintaining simpler and more readable code for bigger projects!

Here's a small demo comparison for running commands on ``minecraft:load``.

.. tab:: Crankshaft

    .. code-block:: python

        from crankshaft:api import event

        @event
        def load():
            tellraw @a "Hello, World!"

.. tab:: Vanilla Bolt

    .. code-block:: python

        merge function_tag minecraft:load {"values": ["demo:load"]}

        function demo:load:
            tellraw @a "Hello, World!"

And a demo comparison that gives you a diamond every time you join.

.. tab:: Crankshaft

    .. code-block:: python

        from crankshaft:api import event

        @event
        def player_join():
            tellraw @s {"text": "A diamond for you!", "color": "aqua"}
            give @s diamond

.. tab:: Vanilla Bolt

    .. code-block:: python

        merge function_tag minecraft:load {"values": ["demo:load"]}
        merge function_tag minecraft:tick {"values": ["demo:tick"]}

        function demo:load:
            scoreboard objectives add demo_join_tracker custom:leave_game

        function demo:tick:
            as @a at @s:
                function demo:player_tick

        function demo:player_tick:
            if score @s demo_join_tracker matches 1..:
                scoreboard players set @s demo_join_tracker 0
                function demo:greet

        function demo:greet:
            tellraw @s {"text": "A diamond for you!", "color": "aqua"}
            give @s diamond

.. toctree::
    :maxdepth: 2
    :hidden:

    installation
    listening_to_events/index
    defining_custom_events/index
    using_flags
    builtin_events/index
    builtin_flags/index

.. toctree::
    :maxdepth: 2
    :hidden:
    :caption: Project Links

    GitHub Repository <https://github.com/reapermc/crankshaft>
    PyPI Package <https://pypi.org/project/crankshaft/>
