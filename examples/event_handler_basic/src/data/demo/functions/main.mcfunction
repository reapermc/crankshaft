from crankshaft:api import event

@event
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
