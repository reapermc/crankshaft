Class Event Listeners
=====================

Class event listeners enable an event to trigger with just the class definition, eliminating the need for instantiation.

Because of this behavior, class event listeners utilize the ``cls`` parameter and execute only once, regardless of whether or how many times the class is instantiated.

To implement a class event listener, utilize the ``@class_event`` decorator:

.. code-block:: python

    from crankshaft:api import supports_events, class_event

    @supports_events
    class HelperShulker:
        @class_event
        def load(cls):
            setblock 0 0 0 pink_shulker_box replace

    # The class does not need instantiation
    # for the event to trigger during server load
    #
    # helper_shulker = HelperShulker()   
