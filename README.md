# hammerspoon bindings
A project to create application specific keyboard shortcut bindings.

## Prerequisites
Install [Hammerspoon](https://www.hammerspoon.org/) automation software for OS X

## Installation
Clone this repository (preferably into ~/.hammerspoon)

## Usage
* Create bindings for a specific piece of hardware (available keys and modifiers will depend on hardware)
    1) Create a map of keys to modifiers to callbacks with the following structure
        <br>{
        <br>&nbsp;&nbsp;key1= {
        <br>&nbsp;&nbsp;&nbsp;&nbsp;{modifierA, modifierB, ...}= callback_a,
        <br>&nbsp;&nbsp;&nbsp;&nbsp;...
        <br>&nbsp;&nbsp;},
        <br>&nbsp;&nbsp;...
        <br>}
        * Each callback should have the signature: function(key, modifierSet)
    2) pass the map to the binder/mapBinder.bind method
* If application specific bindings are required
    1) Create a hardware binder object the performs the described steps above in its `bind` method
        * binder/G600binder is an example of a hardware binder for a [Logiteck G600](https://www.logitechg.com/en-us/product/g600-mmo-gaming-mouse) which binds the same function to each key+modifier combination (used for application specific binding)
    2) Create a map of key+modifiers to callbacks for each application with the following structure
        <br>{
        <br>&nbsp;&nbsp;"modifierA_modifierB_..._key"=  callback_a,
        <br>&nbsp;&nbsp;...
        <br>}
        * modifiers should be in ascending order
        * appBindMaps/intellij_idea is an example of such a map
    3) combine all maps into a single table where each key is the name of the application
    4) pass the hardware binder and the set of application bindings to binder/appBinder.bind
        * optionally provide map of default bindings as a third argument
        * an example of this, using the G600binder and maps for chrome, intellij, ... is shown in the init file
         

## License
This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/albertpatterson/notes-plugin/blob/master/LICENSE) file for details
