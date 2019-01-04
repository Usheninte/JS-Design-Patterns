'use strict'

# ==============================
# CONNECTIONS
# ==============================

# VGA has its own interface which handles images only through an analog signal
vga =
    name: "VGA"
    data: "images"
    signal: "analog"
    handleAnalogSignal: -> 
        """
        Interface: #{@name}
        Data: #{@data}
        Signal: #{@signal}
        """

# But your computer uses HDMI as output and your projector uses VGA as input...
# Here you need an adapter if you want to display images.
module.exports =
    vga: vga
    handleDigitalSignal: -> 
        @vga.handleAnalogSignal()
