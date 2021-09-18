# Reactive Zero

Modification of the Flutter 2.5 Skeleton App Template.

## Screenshots

![reactive_zero](./media/reactive-zero.png)

## Best Practices


### Reactive Zero

These are the items modified and why:

-DRY in either variables or other dependencies as it you repeat dependency declarations you are doing it wrong!

-Always pair Future<> with async and await

-Always automate intl localization generation for continous integrated build server support for devOPS(developer operations).

-Always organized into clean arch organization of app source as it helps to keep the layer concepts in head.

-Always fine tune lints. Mine are fine tuned to Type migration needs due to upcoming Dart Type changes.

-Set code feedback from the start of the project in the form of code coverage, code metrics, UML diagram generation, generate dot diagram of flutter deps, and always have dart-docs configured for app api 
generation.

-Bare minimum testing should have the setUpAll, tearDownUp, and group blocks to define test suites properly.

-Use better declarative ways of defining navigation routes for 
 deep web linking.

