import processing.sound.*;

//editable
static final int windowWidth = 1280;
static final int windowHeight = 720;
static final int blurAmount = 128;

public SoundFile file;
public Amplitude amp;
public AudioIn in;
public Hexagon[] hexes;
public String cpBlue = "ff0f9fbf";
public String cpDarkBlue = "ff0a7aa6";
public String cpGray = "ff25282b";
public String cpDarkGray = "ff141519";
public String cpPink = "ffef86a9";
public String cpSea = "ff17ada8";
public String cpGreen = "ff72a69c";
public String cpSand = "ffd8d9b4";
public int counter = 0;
public String DISPLAYMODE = "RANDOM";
public String COLORMODE = "RANDOM";
public String SIZEMODE = "RANDOM";
public boolean showChanges = false;
public int lastChange;
public int lastChangeInfo;
public String TRACKID = "";
public int colorIndex = 0;
public int BPM;
public int TIME;
public int colorCount = 0;

public void settings(){
    size(windowWidth, windowHeight);
    //fullScreen();
}

public void setup(){
    file = new SoundFile(this, "track1.wav");
    amp = new Amplitude(this);
    in = new AudioIn(this, 0);
    in.start();
    hexes = new Hexagon[blurAmount];
    lastChange = 0;
    lastChangeInfo = 0;
    showChanges = false;
    TIME = 0;
    background(#141519);
}

public void draw(){
    noFill();
    noStroke();
    background(#141519);
    rect(0, 0, width, height);
    displayByMode(DISPLAYMODE);
    drawHexes();
    counter++;
    if (counter >= blurAmount){
        counter = 0;
    }
    showChanges();
    if(frameCount <= 256 + lastChangeInfo){
        showInfo();
    }
}