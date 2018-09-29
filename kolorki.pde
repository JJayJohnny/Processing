size(400, 400); 
background(5, 45, 96); 
stroke(0);
noFill();
smooth();

void setup()
{
  frameRate(3);
}

int r, g, b;

void draw()
{
for(int j = 0; j<80; j++)
{
for(int i = 0; i<80; i++)
{
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);

  fill(r, g, b);
  rect(5*i, 5*j, 5, 5);
}
}
}
 

