size(500, 500); 
background(0); 
stroke(255);
smooth(); 

int ax, ay, bx, by;

ax = 250;
ay = 250;

int k = 0;

for(int i = 0; i<100; i++)
{
  if(k == 0)
  {
    bx=ax-2*i;
    by=ay;
  }
  else if(k==1)
  {
    bx=ax;
    by=ay+2*i;
  }
  else if(k==2)
  {
    by=ay;
    bx=ax+2*i;
  }
  else
  {
    bx=ax;
    by=ay-2*i;
    k=-1;
  }
  line(ax, ay, bx, by);
  ax = bx;
  ay = by;
  k++;
  
}