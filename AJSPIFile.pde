import java.util.Scanner;

TreeMap<String, Double> spiMaps=new TreeMap<String, Double>();

void setup() {
  size(900, 500);
  //background(0);

  Scanner scan=new Scanner("spi.csv"); 
  SPIList spi=new SPIList("spi.csv"); 
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
public class SPI implements Comparable<SPI> {

  private String team, league;

  private double spi;

  private double bpl=0;

  private double bplavg=0;

  private double bplcount=0;

  private double bundes=0;

  private double bundesavg=0;

  private double bundescount=0;

  private double spd=0;

  private double spdavg=0;

  private double spdcount=0;

  private double serie=0;

  private double serieavg=0;

  private double seriecount=0;

  private double ligue=0;

  private double ligueavg=0;

  private double liguecount=0;

  private double mex=0;

  private double mexavg=0;

  private double mexcount=0;

  private double china=0;

  private double chinaavg=0;

  private double chinacount=0;

  private double brasil=0;

  private double brasilavg=0;

  private double brasilcount=0;

  private double mls=0;

  private double mlsavg=0;

  private double mlscount=0;

  private double aus=0;

  private double ausavg=0;

  private double auscount=0;

    public SPI() {

    try {

      Scanner scan =new Scanner(new File("spi.csv"));

      scan.nextLine();

      while (scan.hasNext()) {

        String s=scan.nextLine();

        String[] list= s.split(",");

        spi=Double.valueOf(list[6]);

        league=list[3];

        if (league.equals("Barclays Premier League")) {

          bpl+=(Double)spi;

          bplcount++;

        }

        if (league.equals("German Bundesliga")) {

          bundes+=(Double)spi;

          bundescount++;

        }

        if(league.equals("Spanish Primera Division")){

         spd+=(Double)spi;

         spdcount++;

        }

        if(league.equals("Italy Serie A")){

         serie+=(Double)spi;

         seriecount++;

        }

        if(league.equals("French Ligue 1")){

         ligue+=(Double)spi;

         liguecount++;

        }

        if(league.equals("Mexican Primera Division Torneo Clausura")){

         mex+=(Double)spi;

         mexcount++;

        }

         if(league.equals("Chinese Super League")){

         china+=(Double)spi;

         chinacount++;

        }

        if(league.equals("Brasileiro Série A")){

         brasil+=(Double)spi;

         brasilcount++;

        }

        if(league.equals("Major League Soccer")){

        mls+=(Double)spi;

         mlscount++;

        }

        if(league.equals("Australian A-League")){

        aus+=(Double)spi;

         auscount++;

        }

      }

      bplavg=bpl/bplcount;

      bundesavg=bundes/bundescount;

      spdavg=spd/spdcount;

      serieavg=serie/seriecount;

      ligueavg=ligue/liguecount;

      mexavg=mex/mexcount;

      chinaavg=china/chinacount;

      brasilavg=brasil/brasilcount;

      mlsavg=mls/mlscount;

      ausavg=aus/auscount;

    }

    catch( IOException e )  //Most specific exceptions must be listed 1st

    {

      out.println(e);

    }

    catch( RuntimeException e )

    {

      out.println(e);

    }

    catch( Exception e )

    {

      out.println(e);

    }

    finally

    {

      //no code needed here

    }

  }

  public Double getBPL() {

    return bplavg;

  }

  public Double getBundes() {

    return bundesavg;

  }

  public Double getSPD(){

return spdavg;

  }

  public Double getSerie(){

   return serieavg; 

  }

  public Double getLigue(){

   return ligueavg; 

  }

  public Double getMex(){

   return mexavg; 

  }

  public Double getChina(){

   return chinaavg; 

  }

  public Double getBrasil(){

   return brasilavg; 

  }

  public Double getMLS(){

   return mlsavg; 

  }

  public Double getAus(){

   return ausavg; 

  }

  public int compareTo( SPI other) {

    if (this.spi>other.spi) {

      return 1;

    }

    if (this.spi<other.spi) {

      return -1;

    }

    if (this.team.compareTo(other.team)>0) {

      return 1;

    }

    if (this.team.compareTo(other.team)<0) {

      return -1;

    }

     else {

      return 0;

    }

  }

  public String toString() {

    return "\n"+league+spi;

  }

}
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.List;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;
public class SPIList {
  public TreeMap<String, Double> spiMap;
  List<String> sp= new ArrayList();
  String s;

  public SPIList()
  {
  }
  public SPIList(String fileName) {
    this();
    SPI s=new SPI();
    spiMap=new TreeMap<String, Double>();
    spiMap.put("British Premier League", s.getBPL());
    spiMap.put("German Bundesliga", s.getBundes());
    spiMap.put("Spanish Primera Division", s.getSPD());
    spiMap.put("Italian Serie A", s.getSerie());
    spiMap.put("French Ligue 1", s.getLigue());
  }
  public TreeMap getMap() {
    SPI s=new SPI();
    spiMap=new TreeMap<String, Double>();
    spiMap.put("British Premier League", s.getBPL());
    spiMap.put("German Bundesliga", s.getBundes());
    spiMap.put("Spanish Primera Division", s.getSPD());
    spiMap.put("Italian Serie A", s.getSerie());
    spiMap.put("French Ligue 1", s.getLigue());
    spiMap.put("Mexican Liga MX", s.getMex());
    spiMap.put("Chinese Super League", s.getChina());
    spiMap.put("Brazilian Serie A", s.getBrasil());
    spiMap.put("American MLS", s.getMLS());
    spiMap.put("Australian A-League", s.getAus());




    return spiMap;
  }
  String toString() {
    return ""+spiMap;
  }
}
