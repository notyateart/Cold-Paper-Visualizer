public void savePng() {
    println( "exporting image..." );
    String png_name = "pngs/" + getClass().getSimpleName() + "_" + str(year()).substring(2) + nf(month(), 2) + nf(day(), 2) + "_" + nf(hour(), 2) + nf(minute(), 2) + nf(second(), 2);
    save( png_name  + ".png" );
    println( png_name + ".png" + " saved!\n" );
}

public void showChanges(){
    if(showChanges == true){
       lastChange = frameCount;
       showChanges = false;
    }

    noStroke();
    fill(#141519, lastChange + 255 - frameCount);
    rect(0, 0, width*0.64, 135);
    fill(255, lastChange + 255 - frameCount);
    textSize(26);
    text("TRACK: " + TRACKID, 10, 30);
    text("DISPLAYMODE: " + DISPLAYMODE, 10, 60);
    text("COLORMODE: " + COLORMODE, 10, 90);
    text("SIZEMODE: " + SIZEMODE, 10, 120);
}

public void showInfo(){
    noStroke();
    fill(#141519, lastChangeInfo + 255 - frameCount);
    rect(0.64*width, 0, width, 285);
    fill(255, lastChangeInfo + 255 - frameCount);
    textSize(26);
    text("INFO", 0.65*width, 30);
    text("Info Key: #", 0.65*width, 60);
    text("Load Music: 1-9 (default 1-2)", 0.65*width, 90);
    text("Change Display Mode: q, w", 0.65*width, 120);
    text("Change Color Mode: a, s, d, f", 0.65*width, 150);
    text("Circle colors (single mode): +, -", 0.65*width, 180);
    text("Change Size Mode: r, t, z, u, i", 0.65*width, 210);
    text("Play/Pause: spacebar", 0.65*width, 240);
    text("Stop: x", 0.65*width, 270);
}

public void loadSong(String path, int bpm, String id){
    file.stop();
    file = new SoundFile(this, path);
    BPM = bpm;
    TRACKID = id;
    amp = new Amplitude(this);
    in = new AudioIn(this, 0);
    in.start();
    amp.input(file);
    file.cue(0);
}

public void drawHexes(){
    for (Hexagon h : hexes){
        if (h != null){
            h.drawHexagon();
        }
    }
}