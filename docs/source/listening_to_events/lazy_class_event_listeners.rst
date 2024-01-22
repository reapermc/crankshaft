Lazy Class Event Listeners
==========================

Lazy class listeners function almost identically to the ``@class_event`` decorator previously described in :doc:`Class Event Listeners <class_event_listeners>`.

The key difference is that this lazy variant requires the class to be instantiated for the event to function. Instantiating the class more than once will not impact how many times the event is triggered.

To use this listener type you need to make use of the ``@lazy_class_listener`` decorator.

.. code-block:: python

    from crankshaft:api import supports_events, lazy_class_event

    @supports_events
    class ChatSpammer:
        @lazy_class_event
        def tick(cls):
            tellraw @a "SPAM THE CHAT"

    # The class needs to be instantiated
    # for the tick event to function
    chat_spammer = ChatSpammer()
