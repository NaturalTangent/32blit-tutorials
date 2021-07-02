# 3. Lua: Processing Input <!-- omit in toc -->

Input is crucial to making a playable game. 32blit includes a d-pad, analog stick, face buttons and tilt sensor.

This tutorial covers the benefits of the different input methods, where you might use them and how to implement them in your game.

- [D-Pad And Face Buttons](#d-pad-and-face-buttons)
- [Analog Stick](#analog-stick)
- [Tilt](#tilt)

### D-Pad And Face Buttons

The D-Pad and Face Buttons are collected together into "buttons".

32Blit makes handling distinct button events a little easier by separating out input into "just pressed", "just released" and "current state". You can access these in Lua as:

1. `buttons.pressed` - buttons that were pressed since last update
2. `buttons.released` - buttons that were released since last update
3. `buttons.state` - the current pressed/release state of all buttons

Since we know how to draw shapes, let's use them to indicate whether a particular button has been pressed.



### Analog Stick

### Tilt
