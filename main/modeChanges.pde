public void displayByMode(String mode){

    if (mode.equals("RANDOM")){
        if (counter < blurAmount){
            if (file.isPlaying()){
                hexes[counter] = new Hexagon(random(0, width), height - amp.analyze()*height, 1);
                colorizeByMode(COLORMODE);
                sizeByMode(SIZEMODE);
            } else {
                hexes[counter] = null;
            }
        }
        for (Hexagon h : hexes){
            if (h != null){
                h.setOpacity(h.getOpacity() - (int)(256.0/blurAmount));
            }
        }
    }


    if (mode.equals("TIMELINE")){
        if (counter < blurAmount){
            if (file.isPlaying()){
                hexes[counter] = new Hexagon(width, height - amp.analyze()*height, 1);
                colorizeByMode(COLORMODE);
                sizeByMode(SIZEMODE);
            } else {
                hexes[counter] = null;
            }
            for (Hexagon h : hexes){
                if (h != null){
                    h.setX(h.getX() -  (int)(width/(float)blurAmount));
                }
            }
        }
    }
}

public void colorizeByMode(String mode){

    if(mode.equals("RANDOM")){
        int i = (int)random(0,6);
        switch(i){
            case 0:
                hexes[counter].setColor(cpBlue);
                break;
            case 1:
                hexes[counter].setColor(cpDarkBlue);
                break;
            case 2:
                hexes[counter].setColor(cpGreen);
                break;
            case 3:
                hexes[counter].setColor(cpSea);
                break;
            case 4:
                hexes[counter].setColor(cpSand);
                break;
            case 5:
                hexes[counter].setColor(cpPink);
                break;
        }
    }

    if(mode.equals("INTENSITY")){
        int i = (int)(amp.analyze()*height);
        if (i > 0 && i <= height/6) {
            hexes[counter].setColor(cpDarkBlue);
        } else if (i > height/6 && i <= 2*height/6) {
            hexes[counter].setColor(cpBlue);
        } else if (i > 2*height/6 && i <= 3*height/6) {
            hexes[counter].setColor(cpGreen);
        } else if (i > 3*height/6 && i <= 4*height/6) {
            hexes[counter].setColor(cpSea);
        } else if (i > 4*height/6 && i <= 5*height/6) {
            hexes[counter].setColor(cpSand);
        } else if (i > 5*height/6 && i <= 6*height/6) {
            hexes[counter].setColor(cpPink);
        } else {
            hexes[counter].setColor("FFFFFFFF");
        }
    }

    if(mode.equals("SINGLE")){
        switch (colorIndex){
            case 0:
                hexes[counter].setColor("FFFFFFFF");
                break;
            case 1:
                hexes[counter].setColor(cpBlue);
                break;
            case 2:
                hexes[counter].setColor(cpDarkBlue);
                break;
            case 3:
                hexes[counter].setColor(cpGreen);
                break;
            case 4:
                hexes[counter].setColor(cpSea);
                break;
            case 5:
                hexes[counter].setColor(cpSand);
                break;
            case 6:
                hexes[counter].setColor(cpPink);
                break;
        }
    }

    if(mode.equals("CIRCLE")){
        if (millis() > TIME + (60000/BPM))
        {
            if(colorCount < 5){
               colorCount++; 
            } else {
                colorCount = 0;
            }
            TIME = millis();
        }

        switch (colorCount){
            case 0:
                hexes[counter].setColor(cpBlue);
                break;
            case 1:
                hexes[counter].setColor(cpDarkBlue);
                break;
            case 2:
                hexes[counter].setColor(cpGreen);
                break;
            case 3:
                hexes[counter].setColor(cpSea);
                break;
            case 4:
                hexes[counter].setColor(cpSand);
                break;
            case 5:
                hexes[counter].setColor(cpPink);
                break;
        }
    }
}

public void sizeByMode(String mode){
    if(mode.equals("RANDOM")){hexes[counter].setSize(random(5,50));}
    if(mode.equals("TINY")){hexes[counter].setSize(5);}
    if(mode.equals("MEDIUM")){hexes[counter].setSize(20);}
    if(mode.equals("HUGE")){hexes[counter].setSize(60);}
    if(mode.equals("DYNAMIC")){hexes[counter].setSize(1+amp.analyze()*50);}
}