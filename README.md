# LESSON NOTES

## BY SIMBA

This includes short notes on Flutter RiverPod state management library for lesson purpose.

A few resources to get you started if this is your first Flutter project:

- [Stackoverflow article](https://stackoverflow.com/questions/71813090/flutter-riverpod-ref-read-vs-ref-listen-vs-ref-watch)

The ref object helps us interact with providers, be it inside a widget or other providers.
There are three (3) usages for refs:
- ref.watch: obtaining the value of a provider and listening to changes on that provider, such that when the value changes, this will rebuild the widget or provider that subscribed to that value. 
- ref.listen: adding a listener on a provider, to execute an execute an action such as navigating to a a new page or showing a modal whenever that provider's state changes. 
- ref.read: obtaining the value of a provider while ignoring any state change that may occur in that provider, this is used mostly in callbacks.

* NOTE:
- Try as much as possible to use ref.watch rather than the other two (2) as this helps to make your app more reactive and declarative.
- ref.watch and ref.listen should not be used asynchronously.
