// FOLLOWING MATERIAL SOURCED FOR GAINING CORRECT* AMOUNTS FOR ELECTRICITY OUTPUT
int hemisphere;                //  https://www.bing.com/images/search?view=detailV2&ccid=vrYnchH2&id=7AA8228152526F87B2B7AFDA4E2501AC7CDFB7B8&thid=OIP.vrYnchH2gIefyL9HS1BPIgHaGO&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.beb6277211f680879fc8bf474b504f22%3frik%3duLfffKwBJU7arw%26riu%3dhttp%253a%252f%252fwww.cambridge-solar.co.uk%252fimages%252fuploads%252fannual-solar-panel-production-var.JPG%26ehk%3drZwwY86dbqzbGqsfljMMC1sAaW%252bF6P4EQQ6HvQ2HX%252fQ%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=772&expw=918&q=solar+panel+output+throughout+seasons&simid=608014352848927572&FORM=IRPRST&ck=559D49AEA3BC2BDEF84A87D64C93738F&selectedIndex=5&ajaxhist=0&ajaxserp=0
int error1 = 188;              //  https://www.solarpoweraustralia.com.au/solar-system-production#:~:text=So%20a%205kW%20solar%20system%20should%20on%20average,year%20it%20should%20average%20out%20to%20around%2020kWh.
                               // foundation of project based on https://processing.org/examples/button.html
double cardinal;

double season;

double weather;

int x = 100;                    // project conducted assuming solar panels are a 5kW system. 30kwH peak summer day, cloudy winter 10kwH.

int a1 = 188;
int a2 = 188;
int a3 = 188;
int a4 = 188;

int b1 = 188;
int b2 = 188;
int b3 = 188;
int b4 = 188;

int c1 = 188;
int c2 = 188;
int c3 = 188;
int c4 = 188;
int c5 = 188;

int currentValue;
int panelIncrease;
int maxValue;
int base = 20;

int totalElectricity = 0;
double total;

void setup() {
  size(850, 450);
  currentValue = 0; //set panel value
  panelIncrease = 1; //how much panels increase per click
  maxValue = 10;
}
void draw() {
  background(188);
  fill(214, 134, 134);
  rect(100, 100, 50, 20);
  fill(122, 219, 117);
  rect(200, 100, 50, 20);

  fill(0);                        // TOTAL PANELS
  textSize(15);
  text("Total number of solar panels", 90, 80);
  fill(0);
  textSize(40);
  text(currentValue, 167, 150);

  textSize(15);                  // HEMISPHERE
  text("Select Hemisphere", 120, 180);
  rect(100, 200, 50, 50);
  fill(255);
  rect(200, 200, 50, 50);
  fill(255);
  textSize(40);
  text("S", 114, 238);
  fill(188);
  rect(x, 255, 50, 10);
  fill(0);
  text("N", 212, 238);

  fill(0);                         // CARDINAL DIRECTION
  textSize(15);
  text("Select direction the panels face", 90, 300);
  fill(a1);
  rect(110, 350, 50, 30);
  fill(a2);
  rect(210, 350, 50, 30);
  fill(a3);
  rect(160, 385, 50, 30);
  fill(a4);
  rect(160, 315, 50, 30);
  fill(0);
  text("N", 181, 335);
  text("S", 181, 405);
  text("W", 130, 370);
  text("E", 230, 370);

  fill(0);                            // SEASONS
  textSize(15);
  text("Select a season", 542, 80);
  fill(b1);
  rect( 540, 100, 50, 30);
  fill(b2);
  rect( 590, 100, 50, 30);
  fill(b3);
  rect( 540, 130, 50, 30);
  fill(b4);
  rect( 590, 130, 50, 30);
  fill(0);
  text("W", 560, 120);
  text("Sp", 605, 120);
  text("Su", 555, 150);
  text("A", 610, 150);

  fill(0);                            // CLOUD COVERAGE
  textSize(15);
  text("Choose amount of cloud coverage", 490, 210);
  fill(c1);
  rect( 540, 230, 50, 30);
  fill(c2);
  rect( 590, 230, 50, 30);
  fill(c3);
  rect( 540, 260, 50, 30);
  fill(c4);
  rect( 590, 260, 50, 30);
  fill(c5);
  rect(480, 245, 50, 30);
  fill(0);
  text("0%", 495, 265);
  text("25%", 555, 250);
  text("50%", 605, 250);
  text("75%", 555, 280);
  text("100%", 600, 280);

  fill(122, 219, 117);                  // CALCULATE BUTTON + CALCULATION RESULT
  rect(400, 370, 120, 50);
  fill(0);
  rect(540, 415, 150, 5);
  text("kWh", 720, 400);
  fill(255);
  textSize(27);
  text("Calculate", 408, 403);
  fill(0);
  text(totalElectricity, 610, 403);

  fill(error1);
  text("Fill out all details", 520, 350);
}
//when the mouse is pressed
void mousePressed() {

  if (mouseX >= 100 && mouseX <= 150 && mouseY >= 100 && mouseY <= 120) {
    if (currentValue > 0) {
      println(currentValue); //print the current value
      currentValue -= panelIncrease; //decrease currentValue
    }
    if (currentValue == 0) {
      println("Cannot have negative panel value");
    }
  }


  if (mouseX >= 200 && mouseX <= 250 && mouseY >= 100 && mouseY <= 120) {
    if (currentValue < maxValue) {
      currentValue += panelIncrease; //increase currentValue
      println(currentValue);
    }    //print the current value
    if (currentValue == maxValue) { //check if the current value = max value
      println("Max panel value reached");
    }
  }

  if (mouseX >= 100 && mouseX <= 150 && mouseY >= 200 && mouseY <= 250) { // Hemisphere
    if (x != 100) {
      x = 100;
    }
  }

  if (mouseX >= 200 && mouseX <= 250 && mouseY >= 200 && mouseY <= 250) { // Hemisphere
    if (x != 200) {
      x = 200;
    }
  }

  if (mouseX >= 110 && mouseX <= 160 && mouseY >= 350 && mouseY <= 380) { // Cardinal direction
    if (a1 != 0) {
      a1 = 0;
      a2 = 188;
      a3 = 188;
      a4 = 188;
      cardinal = 0.5;
    }
  }
  if (mouseX >= 210 && mouseX <= 260 && mouseY >= 350 && mouseY <= 380) { // Cardinal direction
    if (a2 != 0) {
      a2 = 0;
      a1 = 188;
      a3 = 188;
      a4 = 188;
      cardinal = 0.5;
    }
  }
  if (mouseX >= 160 && mouseX <= 210 && mouseY >= 385 && mouseY <= 415) { // Cardinal direction
    if (a3 != 0) {
      a2 = 188;
      a1 = 188;
      a3 = 0;
      a4 = 188;
      if (x == 100) {
        cardinal = 0.25;
      } else if (x == 200) {
        cardinal = 1;
      }
    }
  }
  if (mouseX >= 160 && mouseX <= 210 && mouseY >= 315 && mouseY <= 345) { // Cardinal direction
    if (a4 != 0) {
      a2 = 188;
      a1 = 188;
      a3 = 188;
      a4 = 0;
      if (x == 100) {
        cardinal = 1;
      } else if (x == 200) {
        cardinal = 0.25;
      }
    }
  }

  if (mouseX >= 510 && mouseX <= 590 && mouseY >= 100 && mouseY <= 130) { // Season
    if (b1 != 0) {
      b1 = 0;
      b2 = 188;
      b3 = 188;
      b4 = 188;
      season = 0.35;
    }
  }
  if (mouseX >= 590 && mouseX <= 640 && mouseY >= 100 && mouseY <= 130) { // Season
    if (b2 != 0) {
      b2 = 0;
      b1 = 188;
      b3 = 188;
      b4 = 188;
      season = 0.85;
    }
  }
  if (mouseX >= 540 && mouseX <= 590 && mouseY >= 130 && mouseY <= 160) { // Season
    if (b3 != 0) {
      b2 = 188;
      b1 = 188;
      b3 = 0;
      b4 = 188;
      season = 1.5;
    }
  }
  if (mouseX >= 590 && mouseX <= 640 && mouseY >= 130 && mouseY <= 160) { // Season
    if (b4 != 0) {
      b2 = 188;
      b1 = 188;
      b3 = 188;
      b4 = 0;
      season = 0.7;
    }
  }

  if (mouseX >= 510 && mouseX <= 590 && mouseY >= 230 && mouseY <= 260) { // Cloud coverage
    if (c1 != 0) {
      c1 = 0;
      c2 = 188;
      c3 = 188;
      c4 = 188;
      c5 = 188;
      weather = 0.92;
    }
  }
  if (mouseX >= 590 && mouseX <= 640 && mouseY >= 230 && mouseY <= 260) { // Cloud coverage
    if (c2 != 0) {
      c2 = 0;
      c1 = 188;
      c3 = 188;
      c4 = 188;
      c5 = 188;
      weather = 0.88;
    }
  }
  if (mouseX >= 540 && mouseX <= 590 && mouseY >= 260 && mouseY <= 290) { // Cloud coverage
    if (c3 != 0) {
      c2 = 188;
      c1 = 188;
      c3 = 0;
      c4 = 188;
      c5 = 188;
      weather = 0.84;
    }
  }
  if (mouseX >= 590 && mouseX <= 640 && mouseY >= 260 && mouseY <= 290) { // Cloud coverage
    if (c4 != 0) {
      c2 = 188;
      c1 = 188;
      c3 = 188;
      c4 = 0;
      c5 = 188;
      weather = 0.8;
    }
  }
  if (mouseX >= 480 && mouseX <= 530 && mouseY >= 245 && mouseY <= 275) { // Cloud coverage
    if (c5 != 0) {
      c2 = 188;
      c1 = 188;
      c3 = 188;
      c4 = 188;
      c5 = 0;
      weather = 1;
    }
  }

  if (mouseX >= 400 && mouseX <= 520 && mouseY >= 370 && mouseY <= 420) { // CALCULATING TOTAL ELECTRICITY OUTPUT
    if (a1 != 0 && a2 != 0 && a3 != 0 && a4 != 0) {
      println("Fill out all relevant information.");
      error1 = 0;
    } else if (b1 != 0 && b2 != 0 && b3 != 0 && b4 != 0) {
      println("Fill out all relevant information.");
      error1 = 0;
    } else if (c1 != 0 && c2 != 0 && c3 != 0 && c4 != 0 && c5 != 0) {
      println("Fill out all relevant information.");
      error1 = 0;
    }
    if (x == 100 && (a1 == 0 || a2 == 0 || a3 == 0 || a4 == 0 && (b1 == 0 || b2 == 0 || b3 == 0 || b4 == 0 && (c1 == 0 ||
      c2 == 0 || c3 == 0 || c4 == 0 || c5 == 0)))) {
      error1 = 188;

      double baseD = new Double(base);
      double cvD = new Double(currentValue);

      total = (base*cvD)*(season)*(cardinal)*(weather);
      totalElectricity = (int)total;
      
    } else if (x == 200  && (a1 == 0 || a2 == 0 || a3 == 0 || a4 == 0 && (b1 == 0 || b2 == 0 || b3 == 0 || b4 == 0 && (c1 == 0 ||
      c2 == 0 || c3 == 0 || c4 == 0 || c5 == 0)))) {
      error1 = 188;

      double baseD = new Double (base);
      double cvD = new Double (currentValue);

      total = (baseD*cvD)*(season)*(cardinal)*(weather);
      totalElectricity = (int)total;
    }
  }
}
