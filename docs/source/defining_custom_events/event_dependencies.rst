Event Dependencies
==================

Custom events can be orchestrated to run based on the occurrence of other events through the use of dependencies.

Overview
--------

Event dependencies can be implemented by decorating a method within an event definition class with either ``@dependency`` or ``@early_dependency``.

- ``@dependency`` - triggers after any listener contents of the dependency event
- ``@early_dependency`` - triggers before any listener contents of the dependency event

These decorators operate similarly to the familiar ``@event`` decorator, but they function differently internally. They also make use of the ``self`` parameter.

.. warning::
    These decorators are purpose-built for use exclusively inside event definitions and should not be employed elsewhere.

Basic Example
-------------

Let's illustrate the concept of event dependencies with an example ``player_use_magic_wand`` event.

You can also find this example on `GitHub <https://github.com/reapermc/crankshaft/tree/main/examples/docs_magic_wand>`_.

.. code-block::

    src
    └── data
        └── magic_wand
            └── modules
                ├── events.bolt
                └── main.bolt
    beet.yml

.. tab:: events.bolt

    .. code-block:: python

        from crankshaft:api import CustomEvent, dependency

        class PlayerUseMagicWand(CustomEvent):
            @dependency
            def player_use_coas(self):
                if data entity @s SelectedItem.tag{custom_item_id: "magic_wand"}:
                    self.trigger()

    Here we establish a dependency using the ``@dependency`` decorator. The chosen dependency event is :doc:`../builtin_events/player_use_coas`. When this event is triggered, it will execute the contents of our designated method.

    Following this, we conduct a straightforward NBT check to verify that the player is holding the correct item before triggering the event.

.. tab:: main.bolt

    .. code-block:: python

        import ./events as _
        from crankshaft:api import event

        @event
        def player_use_magic_wand():
            anchored eyes positioned ^ ^ ^6:
                summon sheep ~ ~ ~ {CustomName: '{"text": "jeb_"}'}
                particle firework ~ ~ ~ 0 0 0 0.2 50 force
                particle flash ~ ~ ~ 0 0 0 0 0 force

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
