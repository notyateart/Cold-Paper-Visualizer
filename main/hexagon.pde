class Hexagon{

    float x;
    float y;
    String c;
    float s;
    float rot;
    int opacity;

    Hexagon(){
        this.x = 0;
        this.y = 0;
        this.c = "ff000000";
        this.s = 0;
        this.rot = random(0,TWO_PI);
        this.opacity = 255;
    }

    Hexagon(float x, float y, float s){
        this.x = x;
        this.y = y;
        this.c = "ff000000";
        this.s = s;
        this.rot = random(0,TWO_PI);
        this.opacity = 255;
    }

    public String getColor() {
        return this.c;
    }
    

    public void setColor(String c) {
        this.c = c;
    }

    public float getX() {
        return this.x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return this.y;
    }

    public void setY(float y) {
        this.y = y;
    }

    public void setSize(float s) {
        this.s = s;
    }

    public int getOpacity() {
        return this.opacity;
    }

    public void setOpacity(int o) {
        this.opacity = o;
    }
    

    public void drawHexagon() {
        noFill();
        int col = unhex(this.c);
        stroke(col, this.opacity);
        strokeWeight(s*0.2);
        pushMatrix();
        translate(this.x, this.y);
        rotate(rot);
        beginShape();
        for (float a = 0; a < TWO_PI; a += PI/3) {
            float sx = cos(a) * this.s;
            float sy = sin(a) * this.s;
            vertex(sx, sy);
        }
        endShape(CLOSE);
        popMatrix();
    }

    public boolean colorEquals(String c){
        return (c.equals(this.c));
    }  
}