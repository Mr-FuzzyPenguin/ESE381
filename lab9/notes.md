# Live status:
- [x] Task 1: No code required
- [x] Task 2: Simple parsing
- [ ] Task 3: Absolute pain


# Shenanigans!
### TO PREVENT SHORTING THE AVR128DB48:

#### Turning on:
1. Power the Arduino first, wait until it finishes blinking, and turns on the LED on Pin 13 constantly (to indicate stability).
2. Then, power the AVR128DB48
3. Then, add the wire from TX to C1

#### Turning off:
1. Remove the TX to C1 wire
2. Turn off the AVR128DB48
3. Turn off the Arduino

Essentially it is done in reverse.

# Updated "silenced" .clangd:
```CompileFlags:                                     # Tweak the parse settings
  Add: [--include-directory=/usr/avr/include/, --include=/usr/avr/include/avr/ioavr128db48.h, -Wno-unknown-attributes]
  Remove: [-W*]
```

