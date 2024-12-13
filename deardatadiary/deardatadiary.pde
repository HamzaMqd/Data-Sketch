String [] phoneData;
String [][] data;
float lightSize=40;

void draw(){
  background(110);
  pieChart(300, angles);
}

void setup(){
  size(400, 400);
  noStroke();
  noLoop();
  
  phoneData = loadStrings("phoneunlocks.csv");
  //data = new String[phoneData.length][];
  
  //for (int i=0; i< phoneData.length; i++){
  //  String[] dataItems = split(phoneData[i], ",");
    
  //  data[i] = new String [dataItems.length];
    
  //  for (int d=0; d< dataItems.length; d++){
  //    data[i][d] = dataItems[d];
  //  }
  //}
 
  for (int i=0; i<phoneData.length; i++){
    String[] dataItems = split(phoneData[i], ",");
    printArray(dataItems);
  }  
  
}
int[] angles = subset(phoneData, 1, 1);

void pieChart(float diameter, int[] phoneData){
  float lastAngle = 0;
  for (int j=0; j<phoneData.length; j++){
    float blue = map(j, 0, phoneData.length, 0, 255);
    fill (blue);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(phoneData[j]));
    lastAngle += radians(phoneData[j]);
  }
}
