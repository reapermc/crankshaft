Defining Custom Events
======================

Defining custom events may have a slight learning curve, but once you grasp the basic rules, you'll be able to harness this part of the library to its full potential!

Overview
--------

Custom events are defined using Python classes that inherit from the ``CustomEvent`` class, imported from the ``crankshaft:api`` module.

The class supports an optional ``__event_init__`` method that you can define. It runs once when the event is deployed (used at least once). The method utilizes the ``self`` parameter.

The event is triggered when we make a ``self.trigger()`` call. You can have multiple triggers, and you can also pass in any args and kwargs, used as :ref:`trigger-arguments` in the listener.

Events can run off and depend on other events. For a detailed explanation, refer to :doc:`event_dependencies`.

.. note::

    The event ID is the class name converted to ``snake_case``. This is crucial as only the event ID is used in the listeners.

    Example:
        - ``MyCustomEvent`` - class name
        - ``my_custom_event`` - event ID

Basic Example
-------------

Let's dive into action and recreate the built-in :doc:`../builtin_events/load` event using custom events.

You can also find this example on `GitHub <https://github.com/reapermc/crankshaft/tree/main/examples/docs_custom_load>`_.

.. code-block::

    src
    └── data
        └── custom_load
            └── modules
                ├── events.bolt
                └── main.bolt
    beet.yml

.. tab:: events.bolt

    .. code-block:: python

        from crankshaft:api import CustomEvent

        class CustomLoad(CustomEvent):
            def __event_init__(self):
                current_path = ~/
                merge function_tag minecraft:load {"values": [current_path]}
                self.trigger()
 
    As the ``__event_init__`` function is called internally, it has a default ``{...}/__event_init__.mcfunction`` scope. This ``mcfunction`` however is not ran by anything at runtime by default.

    We will manually run ``{...}/__event_init__.mcfunction`` by retrieving the current path using ``~/`` and then connecting it to ``#minecraft:load``.

    The ``{...}/__event_init__.mcfunction`` will now run the ``self.trigger()`` method on runtime, in turn triggering our event when ``#minecraft:load`` runs.

.. tab:: main.bolt

    .. code-block:: python

        import ./events as _
        from crankshaft:api import event

        @event
        def custom_load():
            tellraw @a "This runs off my custom load event!"

    Notice the ``import ./events as _`` import. This import is used for defining our events. It's done like this to allow us to define events in another module dedicated to storing our custom event definitions.

    Listening to custom events is done the same way as listening to built-in events.

.. tab:: beet.yml

    .. code-block:: yaml

      output: dist

      require:
        - bolt
        - crankshaft

      data_pack:
        load: 'src'

      pipeline:
        - mecha

      meta:
        bolt:
          entrypoint: '*:main'

    Notice how we defined an entrypoint for ``*:main`` here. This ensures the ``custom_load:main`` module is loaded first.

.. toctree::
    :maxdepth: 2
    :hidden:

    event_dependencies
    additional_resources
