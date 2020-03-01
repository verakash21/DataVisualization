import processing.pdf.*;
PImage backgroundMap;

float mapGeoLeft   = 22.82;          // Longitude 22 degrees west
float mapGeoRight  =  38.74;          // Longitude 38 degrees east
float mapGeoTop    =   56.89;          // Latitude 56 degrees north.
float mapGeoBottom =  52.8;          // Latitude 52 degrees south.
                         
float mapScreenWidth,mapScreenHeight;  // Dimension of map in pixels.

void setup()
{
  //size(1300,500);
  smooth();
  noLoop();
  backgroundMap   = loadImage("world.jpg");
  mapScreenWidth  = width;
  mapScreenHeight = height;
  size(1300, 500, PDF, "minard.pdf");
}

void draw()
{
  image(backgroundMap,0,0,mapScreenWidth,mapScreenHeight);
  textSize(20);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("Charles Joseph Minard's Map Of Napoleon's Russia Campaign", width/2, height/10);
  mapCity();
  mapPath();
  mapTemp();
  textSize(16);
  text("Temperature Reading", width/2, height-5);
  println("Finished.");
  exit();
}


//Mapping the Temp During march
public void mapTemp()
{
  float factor = 1;
  float width =0.5;
  /**1st Path Arrival*/
  stroke(0);
  drawLine(37.6, 53.1, 37.6, 53.8,width, factor);
  drawLine(37.6, 53.1, 36, 53.1,width, factor);
  drawLine(36, 53.1, 33.2, 53.1,width, factor);
  drawLine(33.2, 53.1, 32, 53.1,width, factor);
  drawLine(32, 53.1, 29.2, 53.1,width, factor);
  drawLine(29.2, 53.1, 28.5, 53.1,width, factor);
  drawLine(28.5, 53.1, 27.2, 53.1,width, factor);
  drawLine(27.2, 53.1, 26.7, 53.1,width, factor);
  drawLine(26.7, 53.1, 25.3, 53.1,width, factor);

  width =2;
  stroke(255,69,0);
  drawLine(37.6, 53.8, 36, 53.8,width, factor);
  drawLine(36, 53.8, 33.2, 53.59,width, factor);
  drawLine(33.2, 53.59, 32, 53.31,width, factor);
  drawLine(32, 53.31, 29.2, 53.543,width, factor);
  drawLine(29.2, 53.543, 28.5, 53.33,width, factor);
  drawLine(28.5, 53.33, 27.2, 53.24,width, factor);
  drawLine(27.2, 53.24, 26.7, 53.1,width, factor);
  drawLine(26.7, 53.1, 25.3, 53.2,width, factor);
  
  
  width =0.6;
  stroke(0);
  drawLine(37.6, 53.8, 37.6, 55.8,width, factor);
  drawLine(36, 53.8, 36, 55.15,width, factor);
  drawLine(33.2, 53.59, 33.2, 54.78,width, factor);
  drawLine(32, 53.31, 32, 54.6,width, factor);
  drawLine(29.2, 53.543, 29.2, 54.4,width, factor);
  drawLine(28.5, 53.33, 28.5, 54.3,width, factor);
  drawLine(27.2, 53.24, 27.2, 54.40,width, factor);
  drawLine(26.7, 53.1, 26.7, 54.32,width, factor);
  drawLine(25.3, 53.2, 25.3, 54.45,width, factor);

  PVector p = geoToPixel(new PVector(37.6, 53.8));
  text("0", p.x+5,p.y);
  p = geoToPixel(new PVector(36, 53.8));
  text("0", p.x,p.y+15);
  p = geoToPixel(new PVector(33.2, 53.59));
  text("-9", p.x,p.y+15);
  p = geoToPixel(new PVector(32, 53.31));
  text("-21", p.x,p.y+15);
  p = geoToPixel(new PVector(29.2, 53.543));
  text("-11", p.x,p.y+15);
  p = geoToPixel(new PVector(28.5, 53.33));
  text("-20", p.x,p.y+15);
  p = geoToPixel(new PVector(27.2, 53.24));
  text("-24",p.x,p.y+12);
  p = geoToPixel(new PVector(26.7, 53.1));
  text("-30",p.x,p.y+15);
  p = geoToPixel(new PVector(25.3, 53.2));
  text("-26",p.x,p.y+10);
}

//Mapping the path of Amry
public void mapPath()
{
  float factor = 25000;
  /**1st Path Arrival*/
  stroke(175,43,43);
  drawLine(24, 54.9, 24.5, 55,340000, factor);
  drawLine(24.5,55,25.5,54.5,340000, factor);
  drawLine(25.5,54.5,26,54.7,340000, factor);
  drawLine(26,54.7,27,54.8,320000, factor);
  drawLine(27,54.8,28,54.9,300000, factor);
  drawLine(28,54.9,28.5,55,280000, factor);
  drawLine(28.5,55,29,55.1,240000, factor);
  drawLine(29,55.1,30,55.2,210000, factor);
  drawLine(30,55.2,30.3,55.3,180000, factor);
  drawLine(30.3,55.3,32,54.8,175000, factor);
  drawLine(32,54.8,33.2,54.9,145000, factor);
  drawLine(33.2,54.9,34.4,55.5,140000, factor);
  drawLine(34.4,55.5,35.5,55.4,127100, factor);
  drawLine(35.5,55.4,36,55.5,100000, factor);
  drawLine(36,55.5,37.6,55.8,100000, factor);
  
  /**1st path return*/
  factor = 20000;
  stroke(39,101,172);
  drawLine(37.6,55.8,37.5,55.7,100000, factor);
  drawLine(37.5,55.7,37,55,98000, factor);
  drawLine(37,55,36.8,55,97000,factor);
  drawLine(36.8,55,35.4,55.3,96000, factor);
  drawLine(35.4,55.3,34.3,55.2,87000, factor);
  drawLine(34.3,55.2,33.3,54.8,55000, factor);
  drawLine(33.3,54.8,32,54.6,37000, factor);
  drawLine(32,54.6,30.4,54.4,24000, factor);
  drawLine(30.4,54.4,29.2,54.4,20000, factor);
  drawLine(29.2,54.4,28.5,54.3,20000, factor);
  drawLine(28.5,54.3,28.3,54.4,20000, factor);
  
  /**2nd path arrival*/
  factor = 10000;
  stroke(172,97,39);
  drawLine(24,55.1,24.5,55.2,60000, factor);
  drawLine(24.5,55.2,25.5,54.7,60000, factor);
  drawLine(25.5,54.7,26.6,55.7,40000, factor);
  drawLine(26.6,55.7,27.4,55.6,33000, factor);
  drawLine(26.6,55.7,27.4,55.6,33000, factor);
  drawLine(27.4,55.6,28.7,55.5,30000, factor);
  
  /**2nd path return*/
  factor = 10000;
  stroke(39,101,172);
  drawLine(28.7,55.5,29.2,54.3,30000, factor);
  drawLine(29.2,54.3,28.5,54.2,30000, factor);
  drawLine(28.5,54.2,28.3,54.3,28000, factor);
  drawLine(28.3,54.3,27.5,54.5,20000, factor);
  drawLine(27.5,54.5,26.8,54.3,12000, factor);
  drawLine(26.8,54.3,26.4,54.4,14000, factor);
  drawLine(26.4,54.4,24.6,54.5,8000, factor);
  drawLine(24.6,54.5,24.4,54.4,4000, factor);
  drawLine(24.4,54.4,24.2,54.4,4000, factor);
  drawLine(24.2,54.4,24.1,54.3,4000, factor);

  /**3rd path Arrival*/
  factor = 4000;
  stroke(58,127,37);
  drawLine(24,55.2,24.5,55.3,22000, factor);
  drawLine(24.5,55.3,24.6,55.8,6000, factor);
  /**3rd path Return*/
  factor = 4000;
  stroke(39,101,172);
  drawLine(24.6,55.8,24.2,54.4,6000, factor);
  drawLine(24.2,54.4,24.1,54.3,6000, factor);

}

//Maps cities on map
public void mapCity()
{
  //fill(199,119,119);
  textSize(12);
  fill(0);
  strokeWeight(2);
  PVector p = geoToPixel(new PVector(24,55));//Kowno
  circle(p.x,p.y,5);
  text("Kowno", p.x-25,p.y-2);
  p = geoToPixel(new PVector(25.3,54.7)); //Wilna
  circle(p.x,p.y,5);
  text("Wilna", p.x+5,p.y-20);
  p = geoToPixel(new PVector(26.4,54.4)); //Smorgoni 
  circle(p.x,p.y,5);
  text("Smorgoni", p.x+5,p.y-5);
  p = geoToPixel(new PVector(26.8,54.3)); //Molodexno
  circle(p.x,p.y,5);
  text("Molodexno", p.x+5,p.y+15);
  p = geoToPixel(new PVector(27.7,55.2)); //Gloubokoe
  circle(p.x,p.y,5);
  text("Gloubokoe", p.x+5,p.y-5);
  p = geoToPixel(new PVector(27.6,53.9)); //Minsk
  circle(p.x,p.y,5);
  text("Minsk", p.x+5,p.y-5);
  p = geoToPixel(new PVector(28.5,54.3)); //Studienska
  circle(p.x,p.y,5);
  text("Studienska", p.x+5,p.y+20);
  p = geoToPixel(new PVector(28.7,55.5)); //Polotzk
  circle(p.x,p.y,5);
  text("Polotzk", p.x+5,p.y-5);
  p = geoToPixel(new PVector(29.2,54.4)); //Bobr
  circle(p.x,p.y,5);
  text("Bobr", p.x+12,p.y-5);
  p = geoToPixel(new PVector(30.2,55.3)); //Witebsk
  circle(p.x,p.y,5);
  text("Witebsk", p.x+5,p.y-5);
  p = geoToPixel(new PVector(30.4,54.5)); //Orscha
  circle(p.x,p.y,5);
  text("Orscha", p.x+5,p.y-5);
  p = geoToPixel(new PVector(30.4,53.9)); //Mohilow
  circle(p.x,p.y,5);
  text("Mohilow", p.x+5,p.y-5);
  p = geoToPixel(new PVector(32,54.8)); //Smolensk
  circle(p.x,p.y,5);
  text("Smolensk", p.x+7,p.y-12);
  p = geoToPixel(new PVector(33.2,54.9)); //Dorogobouge
  circle(p.x,p.y,5);
  text("Dorogobouge", p.x+5,p.y+20);
  p = geoToPixel(new PVector(34.3,55.2)); //Wixma
  circle(p.x,p.y,5);
  text("Wixma", p.x+5,p.y+25);
  p = geoToPixel(new PVector(34.4,55.5)); //Chjat
  circle(p.x,p.y,5);
  text("Chjat", p.x+5,p.y-5);
  p = geoToPixel(new PVector(36,55.5)); //Mojaisk
  circle(p.x,p.y,5);
  text("Mojaisk", p.x-10,p.y-14);
  p = geoToPixel(new PVector(37.6,55.8)); //Moscou
  circle(p.x,p.y,5);
  text("Moscou", p.x+5,p.y-5);
  p = geoToPixel(new PVector(36.6,55.3)); //Tarantino
  circle(p.x,p.y,5);
  text("Tarantino", p.x-10,p.y-5);
  p = geoToPixel(new PVector(36.5,55)); //Malo-jarosewli
  circle(p.x,p.y,5);
  text("Malo-jarosewli", p.x+5,p.y+15);
}


// Converts screen coordinates into geographical coordinates. 
public PVector pixelToGeo(PVector screenLocation)
{
    return new PVector(mapGeoLeft + (mapGeoRight-mapGeoLeft)*(screenLocation.x)/mapScreenWidth,
                       mapGeoTop - (mapGeoTop-mapGeoBottom)*(screenLocation.y)/mapScreenHeight);
}

// Converts geographical coordinates into screen coordinates.
public PVector geoToPixel(PVector geoLocation)
{
    return new PVector(mapScreenWidth*(geoLocation.x-mapGeoLeft)/(mapGeoRight-mapGeoLeft),
                       mapScreenHeight - mapScreenHeight*(geoLocation.y-mapGeoBottom)/(mapGeoTop-mapGeoBottom));
}

public void drawLine(float x1, float y1, float x2, float y2, float weight,float factor){
  PVector p = geoToPixel(new PVector(x1,y1));
  PVector q = geoToPixel(new PVector(x2,y2));
  strokeWeight(weight/factor);
  line(p.x, p.y, q.x, q.y);
}
