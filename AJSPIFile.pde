import java.util.Scanner;

TreeMap<String, Double> spiMaps=new TreeMap<String, Double>();

void setup() {
  size(900, 500);
  //background(0);

  Scanner scan=new Scanner("Desktop/mapProjects/6th/AJSPIFile/spi.csv"); 
  SPIList spi=new SPIList("Desktop/mapProjects/6th/AJSPIFile/spi.csv"); 
  out.println(spi);

  SPIList s=new SPIList();
  spiMaps.putAll(s.getMap());
}
void draw() {
  background(0);
  fill(255);
      rect(50, 10, 5, 400);
      rect(50, 410, 8080, 5);
      textSize(32);
      text("Comparing World Soccer League \"Power\"", 120, 50);
      textSize(20);
      text("Press 1 or 2 to show different leagues",120,110);
      text("Y axis is the relative power each league has compared to others", 120, 80);
      text("0", 35, 420);
      text("20", 25, (420+(-20*4)));
      text("40", 25, (420+(-40*4)));
      text("50", 25, (420+(-50*4)));
      text("60", 25, (420+(-60*4)));
      text("70", 25, (420+(-70*4)));
      text("80", 25, (420+(-80*4)));
  if (keyPressed) {
    if (key=='1') {
      background(0);

      fill(255);
      rect(50, 10, 5, 400);
      rect(50, 410, 8080, 5);
      textSize(32);
      text("Comparing World Soccer League \"Power\"", 120, 50);
      textSize(20);
      text("Press 1 or 2 to show different leagues",120,110);
      text("Y axis is the relative power each league has compared to others", 120, 80);
      text("0", 35, 420);
      text("20", 25, (420+(-20*4)));
      text("40", 25, (420+(-40*4)));
      text("50", 25, (420+(-50*4)));
      text("60", 25, (420+(-60*4)));
      text("70", 25, (420+(-70*4)));
      text("80", 25, (420+(-80*4)));
      textSize(20);
      text("English Premier \nLeague", 60, 450);
      text("French Ligue 1", 230, 450);
      text("German\nBundesliga", 400, 450);
      text("Spanish La Liga", 520, 450);
      text("Italian Serie A", 700, 450);
      float bpl=(spiMaps.get("British Premier League")).floatValue();
      float lig=(spiMaps.get("French Ligue 1")).floatValue();
      float bun=(spiMaps.get("German Bundesliga")).floatValue();
      float spd=(spiMaps.get("Spanish Primera Division")).floatValue();
      float sea=(spiMaps.get("Italian Serie A")).floatValue();
      rect(100, 410, 40, -(bpl*4));
      rect(270, 410, 40, -(lig*4));
      rect(420, 410, 40, -(bun*4));
      rect(580, 410, 40, -(spd*4));
      rect(750, 410, 40, -(sea*4));
    }
    if (key=='2') {
      background(0);
      fill(255);
      rect(50, 10, 5, 400);
      rect(50, 410, 8080, 5);
      textSize(32);
      text("Comparing World Soccer League \"Power\"", 120, 50);
      textSize(20);
      text("Press 1 or 2 to show different leagues",120,110);
      text("Y axis is the relative power each league has compared to others", 120, 80);
      text("0", 35, 420);
      text("20", 25, (420+(-20*4)));
      text("40", 25, (420+(-40*4)));
      text("50", 25, (420+(-50*4)));
      text("60", 25, (420+(-60*4)));
      text("70", 25, (420+(-70*4)));
      text("80", 25, (420+(-80*4)));
      textSize(20);
      text("Mexican \nLiga MX", 60, 450);
      text("Chinese\nSuper League", 230, 450);
      text("Brazilian\nSerie A", 400, 450);
      text("American MLS", 520, 450);
      text("Australian\n A-League", 700, 450);
      float bpl=(spiMaps.get("Mexican Liga MX")).floatValue();
      float lig=(spiMaps.get("Chinese Super League")).floatValue();
      float bun=(spiMaps.get("Brazilian Serie A")).floatValue();
      float spd=(spiMaps.get("American MLS")).floatValue();
      float sea=(spiMaps.get("Australian A-League")).floatValue();
      rect(100, 410, 40, -(bpl*4));
      rect(270, 410, 40, -(lig*4));
      rect(420, 410, 40, -(bun*4));
      rect(580, 410, 40, -(spd*4));
      rect(750, 410, 40, -(sea*4));
    }
  }
}
