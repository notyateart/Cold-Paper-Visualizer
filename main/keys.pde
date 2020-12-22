void keyPressed(){
    if(key=='p' ) {savePng();}
    if(key == 'x') {file.stop(); file.cue(0);}
    if(key == '1') {loadSong("track1.wav", 116, "Athmospear - A Journey into the Sky"); showChanges = true;}
    if(key == '2') {loadSong("track2.wav", 114, "Jons Nauh - Bist Du Da"); showChanges = true;}
    if(key == 'q') {DISPLAYMODE = "RANDOM"; showChanges = true;}
    if(key == 'w') {DISPLAYMODE = "TIMELINE"; showChanges = true;}
    if(key == 'a') {COLORMODE = "RANDOM"; showChanges = true;}
    if(key == 's') {COLORMODE = "SINGLE"; showChanges = true;}
    if(key == 'd') {COLORMODE = "INTENSITY"; showChanges = true;}
    if(key == 'f') {COLORMODE = "CIRCLE"; showChanges = true;}
    if(key == 'r') {SIZEMODE = "RANDOM"; showChanges = true;}
    if(key == 't') {SIZEMODE = "TINY"; showChanges = true;}
    if(key == 'z') {SIZEMODE = "MEDIUM"; showChanges = true;}
    if(key == 'u') {SIZEMODE = "HUGE"; showChanges = true;}
    if(key == 'i') {SIZEMODE = "DYNAMIC"; showChanges = true;}
    if(key == '#') {lastChangeInfo = frameCount;}
    if(key == '+') {if(colorIndex == 7){colorIndex = 0;} else {colorIndex++;}}
    if(key == '-') {if(colorIndex == -1){colorIndex = 6;} else {colorIndex--;}}
    if(key == ' ') {
        if (file.isPlaying()){
            file.pause();
        } else {
            file.play();
            TIME = millis();
        }
    }
}