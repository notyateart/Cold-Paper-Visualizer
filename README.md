# Cold Paper Audio Visualizer


> Designing with Code | Audio Visualizer

![Audio Visualizer in Action](https://github.com/meisterhauns/Cold-Paper-Visualizer/blob/master/main/pngs/E.png)


<br>

## What does it do?

This Processing App is generating Hexagons based on the music playing. You can control how it looks with your keyboard. There are multiple options for color, size and display type which can create about 90 different styles.

<br>

## Requirements
- [Processing](https://processing.org/)
- [Processing Sound](https://github.com/processing/processing-sound) (available via Processing Contribution Manager)

<br>

## Adding your own music
Put Audio files (wav) into the [data folder](https://github.com/meisterhauns/Cold-Paper-Visualizer/tree/master/main/data). Then open [keys.pde](https://github.com/meisterhauns/Cold-Paper-Visualizer/blob/master/main/keys.pde) and enter the correct data like so:

```Processing
if ( key == '1' ) { loadSong ( "TRACK.WAV", BPM, "TITLE" ); showChanges = true; }
```

Here's an example:
```Processing 
if ( key == '1' ) { loadSong( "track1.wav", 116, "Athmospear - A Journey into the Sky" ); showChanges = true; }
```

<br>

## Controls

<table>
<tr><td><strong>Audio:</strong></td></tr>
<tr><td>0-9</td><td>Select a song (depends on the code above)</td></tr>
<tr><td>Spacebar</td><td>Play/Pause</td></tr>
<tr><td>X</td><td>Stop</td></tr>
</table>
<br>
<table>
<tr><td><strong>Display Mode:</strong></td></tr>
<tr><td>Q</td><td>Random</td></tr>
<tr><td>W</td><td>Timeline</td></tr>
</table>
<br>
<table>
<tr><td><strong>Colors:</strong></td></tr>
<tr><td>A</td><td>Random</td></tr>
<tr><td>S</td><td>Single Color</td></tr>
<tr><td>D</td><td>Colored by Intensity</td></tr>
<tr><td>F</td><td>Circle between Colors</td></tr>
<tr><td>+</td><td>Manually circle between Colors (in Single Mode)</td></tr>
<tr><td>-</td><td>Manually circle between Colors (in Single Mode)</td></tr>
</table>
<br>
<table>
<tr><td><strong>Hex Size:</strong></td></tr>
<tr><td>R</td><td>Random</td></tr>
<tr><td>T</td><td>Tiny</td></tr>
<tr><td>Z</td><td>Medium</td></tr>
<tr><td>U</td><td>Huge</td></tr>
<tr><td>I</td><td>Dynamic (based on Amplitude)</td></tr>
</table>
<br>
<table>
<tr><td><strong>Help:</strong></td></tr>
<tr><td>#</td><td>Open Info Panel</td></tr>
</table>
<br>

###### view on GitHub: https://github.com/meisterhauns/Cold-Paper-Visualizer
