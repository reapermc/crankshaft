Using Events in a Class
=======================

Basics
-------

By default, classes don't support events. To enable event support, decorate them with the special ``@supports_events`` decorator.

To listen to events within a class, use the ``@event`` decorator. It functions similarly to how it works with regular functions, as it can also be applied to methods.

Events within a class will trigger only when the class is instantiated, providing access to the ``self`` parameter within the method.

.. code-block:: python

    from crankshaft:api import supports_events, event

    @supports_events
    class Foo:
        @event
        def load(self):
            tellraw @a "Hello, World!"

    # Without this, the event wouldn't fire
    foo = Foo()   


Advanced Usage
--------------

Explore advanced usage by incorporating events into classes in creative ways. Here's an example:

.. code-block:: python

    from crankshaft:api import supports_events, event

    @supports_events
    class JoinReward:
        def __init__(self, item_count: int):
            self.item_count = item_count

        @event
        def player_join(self):
            give @s diamond self.item_count
            tellraw @s {"text": f"You received {self.item_count} diamonds for being awesome!", "color": "aqua"}

    # Gives the player a total of 15 diamonds upon joining
    a = JoinReward(5)
    b = JoinReward(10)
