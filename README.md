Night Shift Shell Utility
=========================

[![Platforms macOS](https://img.shields.io/badge/Platforms-macOS-lightgray.svg?style=flat)](http://www.apple.com/macos)
[![License Apache](https://img.shields.io/badge/License-APACHE2-blue.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)

Simple shell utility to control the macOS Night Shift feature introduced in 10.12.4.

Usage is `nshift strength` where strength is a value from 0 to 100. A higher value shifts the color temperature of the display to more warm. A value of 0 disables Night Shift altogether.

Additional ways to use it are `nshift on`, `nshift off`, which do the obvious thing–turn NightShift on/off.

There is also `nshift reset`, _TL;DR: It turns NightShift on and off again._ This helps fixing some external displays which are somehow stuck on a warmer color tone after waking a Macbook from sleep, despite actually not working with NightShift in the first place. (Actually, the external display only reacts to NightShift being turned off, but never to being turned on. I don't know, don't ask.)