 Bacteria[] colony;

 void setup()  
 {
   size(500,500);
   //initialize bacteria variables here
   colony = new Bacteria[20];
   for(int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }  
 void draw()  
 {
   background(0);
   noStroke();
   fill(196,30,35);
   //right half
   triangle(305, 185, 320, 150, 335, 160);
   triangle(305, 195, 343, 165, 350, 180);
   triangle(305, 200, 355, 190, 355, 210);
   triangle(305, 205, 350, 220, 343, 235);
   triangle(305, 215, 335, 245, 315, 255);
   triangle(305, 215, 335, 245, 315, 255);
   
   //left half
   triangle(295, 185, 310, 145, 290, 145);
   triangle(295, 215, 305, 255, 285, 255);
   triangle(290, 195, 280, 145, 260, 155);
   triangle(290, 205, 275, 250, 260, 245);
   triangle(290, 200, 245, 220, 255, 235);
   triangle(290, 200, 245, 190, 245, 210);
   triangle(290, 200, 245, 180, 255, 165);
   fill(150);
   ellipse(300,200,80,80);
   
   noStroke();
   fill(196,30,35);
   //right half
   triangle(405, 385, 420, 350, 435, 360);
   triangle(405, 395, 443, 365, 450, 380);
   triangle(405, 400, 455, 390, 455, 410);
   triangle(405, 405, 450, 420, 443, 435);
   triangle(405, 415, 435, 445, 415, 455);
   triangle(405, 415, 435, 445, 415, 455);
   
   //left half
   triangle(395, 385, 410, 345, 390, 345);
   triangle(395, 415, 405, 455, 385, 455);
   triangle(390, 395, 380, 345, 360, 355);
   triangle(390, 405, 375, 450, 360, 445);
   triangle(390, 400, 345, 420, 355, 435);
   triangle(390, 400, 345, 390, 345, 410);
   triangle(390, 400, 345, 380, 355, 365);
   fill(150);
   ellipse(400,400,80,80);
   
     
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].distance();
     colony[i].walk();
     colony[i].show();
   }
 }  
 class Bacteria    
 {    
   //lots of java!
   int myX, myY;
   boolean reached;
   Bacteria()
   {
     reached = true;
     myX = (int)(Math.random()*100);
     myY = (int)(Math.random()*100);
   }
   void walk()
   { 
     if(reached == true) 
     {
       myX = myX + (int)(Math.random()*5)-1;
       myY = myY + (int)(Math.random()*5)-1;
     }
   }
   void distance() {
      if(dist(myX, myY, 250, 150) < 10)
        reached = false;
      else if(dist(myX, myY, 245, 145) < 20)
        reached = false;
      else if(dist(myX, myY, 230, 185) < 20)
        reached = false;
      else if(dist(myX, myY, 230, 200) < 20)
        reached = false;
      else if(dist(myX, myY, 240, 220) < 20)
        reached = false;
      else if(dist(myX, myY, 235, 230) < 20)
        reached = false;
        
      else if(dist(myX, myY, 360, 350) < 20)
        reached = false;
      else if(dist(myX, myY, 345, 350) < 20)
        reached = false;
      else if(dist(myX, myY, 330, 385) < 20)
        reached = false;
      else if(dist(myX, myY, 330, 400) < 20)
        reached = false;
      else if(dist(myX, myY, 340, 420) < 20)
        reached = false;
      else if(dist(myX, myY, 350, 430) < 20)
        reached = false;
      else if(dist(myX, myY, 370, 440) < 20)
        reached = false;
      
   }
   void show()
   {
     fill(15,113,2);
     rect(myX,myY,40,20,10);
     stroke(0,255,0);
     line(myX-20, myY+10, myX, myY+10);
   }
 }    
