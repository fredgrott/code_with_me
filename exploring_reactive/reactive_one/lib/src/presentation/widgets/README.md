# Widgets

Widgets not of screens themselves, go here.

An example, due to web deep linking implementations one has to put navbars(appbar and bottom navbar) in a screen with scaffold and repeat it in separate screens. So you create a base class 
extending the appbar or bottombar that gets called in the 
screen scaffold but allows the flexibility to vary the other widget components added to make up the full appbar for that screen.

This way we can still maintain the full brand feel across screens in a consistent manner. See! My architecture implementations have UI and brand affects and considerations!