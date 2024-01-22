Listening to Events
===================

The most common way to listen to events is by using the ``@event`` decorator. Decorating a Python function with this decorator turns it into an event listener.

The function name determines the event to which we will be listening.

.. code-block:: python

    from crankshaft:api import event

    @event
    def load():
        tellraw @a "Hello, World!"

    @event
    def tick():
        tellraw @a "tick!"

.. _trigger-arguments:

Trigger Arguments
-----------------

Some events utilize mandatory trigger arguments. These trigger arguments replace traditional Python function parameters.

Here's an example of an event that uses trigger arguments:

.. code-block:: python

    from crankshaft:api import event

    @event
    def player_shot_bow(charge_time):
        tellraw @s ["You shot the bow and charged it for: ", charge_time, " ticks!"]
        give @s diamond

In this example, the ``player_shot_bow`` event utilizes a ``charge_time`` trigger argument, allowing us to determine how long we were charging the bow.

.. warning::

   Event trigger arguments are mandatory! You must specify them when listening to events that utilize them.

For the full list of events, refer to the :doc:`Built-in Events <../builtin_events/index>` section.

.. toctree::
    :maxdepth: 2
    :hidden:

    using_events_in_a_class
    class_event_listeners
    lazy_class_event_listeners
