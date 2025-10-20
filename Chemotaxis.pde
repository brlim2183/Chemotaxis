 //declare bacteria variables here   
 int myX;
 int myY;
 int myColor;
 Bacteria [] bob;

  
 void setup()   
 {     
   //initialize bacteria variables here   
   size(400,400);
   bob= new Bacteria[30];
     for(int i = 0; i < bob.length;i++)
  {
    bob[i] = new Bacteria();
  }
}   
 void draw()   
 {  
   background(0);
   for (int i=0; i< bob.length; i++)
   {
   bob[i].show();
   bob[i].move();
   }
 }  
 class Bacteria    
 {      
   int myX , myY;
   Bacteria(){
     myColor= color(255,0,0);
     myX = (int)(Math.random()*10)+200;
     myY= (int)(Math.random()*10)+200;
   }
   
   void show()
   {
   fill(myColor);
   ellipse(myX,myY,30,30);
   }
   void move()
   {
     if ((mouseX>myX)&&(dist(myX,myY,mouseX,mouseY)<100))
     myX = myX + (int)(Math.random()*5)-3;
     if ((mouseY>myY)&&(dist(myX,myY,mouseX,mouseY)<100))
     myY = myY + (int)(Math.random()*5)-3;
     if ((mouseX<myX)&&(dist(myX,myY,mouseX,mouseY)<100))
     myX = myX + (int)(Math.random()*5);
     if ((mouseY<myY)&&(dist(myX,myY,mouseX,mouseY)<100))
     myY = myY + (int)(Math.random()*5);
     if(myX>399)
     myX=399;
     if(myY>399)
     myY=399;
     if(myX<1)
     myX=1;
     if (myY<1)
     myY=1;
     else{
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
     }
   }
 }
 
