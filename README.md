# Cold Paper Audio Visualizer

> Designing with Code | Audio Visualizer

## Requirements
- [Processing](https://processing.org/)
- [Processing Sound](https://github.com/processing/processing-sound) (available via Processing Contribution Manager)

## What does it do?
Put Audio files (wav) into the data folder. Then open [keys.pde](https://github.com/meisterhauns/Cold-Paper-Visualizer/blob/master/main/keys.pde) and enter the correct data like so:

>if ( key == '1' ) { loadSong ( "TRACK.WAV", BPM, "TITLE" ); showChanges = true; }

Here's an example:
>if ( key == '1' ) { loadSong( "track1.wav", 116, "Athmospear - A Journey into the Sky" ); showChanges = true; }

## Controls

* [spacebar]\: play/pause
* [x]\: stop
* [1-9]\: song selection (depends on the code above)
* [q & w]\: display mode selection
* [a, s, d, f]\: color selection
* [+ & -]\: change color (if color selection is set to single)
* [r, t, z, u, i]\: hex size generator selection
* [#]\: show info in the app

###### view on GitHub: https://github.com/meisterhauns/Cold-Paper-Visualizer
