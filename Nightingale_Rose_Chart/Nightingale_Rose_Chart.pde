import processing.pdf.*;

PFont font;
String[] names = { "Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec" };
float delta = TWO_PI / names.length;
int radius = names.length *15;

int angle = 30;
int[] diseaseArray = new int[12];
int[] woundsArray = new int[12];
int[] otherArray = new int[12];
int[][] allData = new int[3][12];
float r;
float g;
float b;
float tint_factor = 0.4;
Table table;
void setup() {
  table = loadTable("nightingale-data.csv", "header");
  //println(table.getRowCount() + " total records in table");
  for (TableRow row : table.rows()) {
    String dates = row.getString("Month");
    int disease = row.getInt("disease");
    int wounds = row.getInt("wounds");
    int other = row.getInt("other");    
    int j = 100;
    String[] stringDate = dates.split(" ");
    switch(stringDate[0]) 
        { 
            case "Jan": 
                j=0;
                break; 
            case "Feb": 
                j=1;
                break; 
            case "Mar":  
                j=2;
                break; 
            case "Apr": 
                j=3;
                break; 
            case "May": 
                j=4;
                break; 
            case "Jun": 
                j=5;
                break; 
            case "Jul": 
                j=6;
                break; 
            case "Aug": 
                j=7;
                break; 
            case "Sep": 
                j=8;
                break; 
            case "Oct": 
                j=9;
                break; 
            case "Nov": 
                j=10;
                break; 
            case "Dec":  
                j=11;
                break; 
            default: 
                println("No Month Matched"); 
        }
        if(j!=100){
          allData[0][j] = allData[0][j]+wounds;
          allData[1][j] = allData[1][j]+other;
          allData[2][j] = allData[2][j]+disease;          
        }
  }
  
  //size(840, 560, PDF, "coxcomb.pdf");
  size(840, 560);
  noStroke();
  noLoop();  // Run once and stop
}

void draw() {
  background(230,230,250);
  setRGB(10, 12, 225);
  textSize(16);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("DIAGRAM Of The CAUSES of MORTALITY In The \n ARMY Of The EAST", width/2, height/10);
  textSize(14);
  text("April 1854 - March 1856", width/2, height/4);
  roseChart(200, allData, 1);  
  setRGB(10, 12, 225);
  roseChart(200, allData, 0);
  println("Finished.");
  //exit();
}

void roseChart(float diameter, int[][] data, int pos){
  for(int m=2; m>=0 ; m--){
    float newDiameter = diameter + (m*150);
    float lastAngle = 0;
    if(pos==0)
      lastAngle = 30;
    int max = 0;
    for (int k : data[m]){
      if(k>max){
        max = k;
      }
    }
    r = r+ (255 - r)* tint_factor; g = g + (255 - g)* tint_factor; b = b + (255-b)*tint_factor;
    fill(r,g,b);
    stroke(0,0,0);
    ellipse(40, 170+(m*40), 10, 10);
    String text = "None";
    if(m==0)
      text = "Wounds";
     else if(m==1)
       text = "Other";
     else if(m==2)
       text = "Disease";
    fill(0, 0, 0);
    textSize(12);
    textAlign(LEFT);
    if(pos==1)
      text(text, 50, 174+(m*40));
    for (int i = 0; i < 12; i++) {      
      fill(r,g,b);
      stroke(0,0,0);
      float ratio = (((float) data[m][i])/max)*newDiameter;
      if(pos==1)
        arc(width/2, height/2, ratio, ratio, lastAngle, lastAngle+radians(angle));
      else{
        ratio = ratio/2;
        arc(width/6, height*3/4, ratio, ratio, lastAngle, lastAngle+radians(angle));
        fill(r,g,b);
        stroke(0,0,0);
      }
      
      if(m==2){
        float delta = TWO_PI / names.length;
        float min = 4;
        switch(i) 
        { 
            case 0: 
                min=22;
                break;
            case 1: 
                min=16.5;
                break;
            case 2: 
                min=9;
                break;
            case 3: 
                min=4;
                break;
            case 4: 
                min=4;
                break;
            case 5: 
                min=6;
                break;
            case 6: 
                min=5.5;
                break;
            case 7: 
                min=9.5;
                break;
            case 8: 
                min=8.5;
                break;
            case 9: 
                min=5.5;
                break;
            case 10: 
                min=7.5;
                break;
            case 11: 
                min=13.5;
                break; 
            default: 
                min=4; 
        }
        if(pos == 0)
          min = min/2.1;
        float radiFactor = (17 - min) * (ratio - 0) / (max - 0) + min;
        float radius = names.length * radiFactor;
        font = createFont("Calibri", 12);
        textFont(font,12);
        fill(0);
        float xPos = width/2+radius * cos(lastAngle+radians(angle-12));
        float yPos = height/2+radius * sin(lastAngle+radians(angle-12));
        if(pos == 0){
          textFont(font,9);
          xPos = width/6+radius * cos(lastAngle+radians(angle-21));
          yPos = height*3/4+radius * sin(lastAngle+radians(angle-21));
        }
        pushMatrix();
          translate(xPos, yPos);
          rotate(delta * i);
          text(names[i], 0, 0);
        popMatrix();  
      }
      
      lastAngle += radians(angle);
    }
  }
}

void setRGB(float red, float green, float blue){
  r = red;
  g = green;
  b = blue;
}
