size(400, 400); 
background(0, 0, 0); 
stroke(0);
noFill();
smooth();

int boxSize = 10;
int drawDistance = 30;
int rr, gg, bb;

int r[] = new int[height/boxSize*width/boxSize];
int g[] = new int[height/boxSize*width/boxSize];
int b[] = new int[height/boxSize*width/boxSize];
void setup()
{
   frameRate=(60);
   for(int i=0; i<height/boxSize; i++)
   {
      for(int j=0; j<width/boxSize; j++)
      {
          r[i*j+j]= random(0, 255);
          g[i*j+j]= random(0, 255);
          b[i*j+j]= random(0, 255);
      }
   }
}

void draw() 
{
   for(int i=0; i<width/boxSize; i++)
   {
      for(int j=0; j<height/boxSize; j++)
      {
         if(i*boxSize>mouseX-drawDistance && i*boxSize< mouseX+drawDistance){
             
             if(j*boxSize>mouseY-drawDistance && j*boxSize<mouseY+drawDistance){
             rr = r[i*j+j];
             gg = g[i*j+j];
             bb = b[i*j+j];
             

             fill(rr, gg, bb);
             rect(i*boxSize, j*boxSize, boxSize, boxSize);
             }
         }
         else{
             fill(0, 0, 0);
             rect(i*boxSize, j*boxSize, boxSize, boxSize);
          }
      }
   }
}