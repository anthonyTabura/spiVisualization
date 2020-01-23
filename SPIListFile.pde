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
