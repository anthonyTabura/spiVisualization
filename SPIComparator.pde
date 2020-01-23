

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
      Scanner scan =new Scanner(new File("Desktop/mapProjects/6th/AJSPIFile/spi.csv"));
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
