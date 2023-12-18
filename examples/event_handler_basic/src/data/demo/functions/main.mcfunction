from crankshaft:api import event_listener, supports_events, class_event_listener

@event_listener
def load():
    say hello!

# @supports_events
# class A:
#     @class_event_listener
#     def load(cls):
#         say foo! <class>

#     @event_listener
#     def tick(self):
#         help

# a = A()
# a = A()
