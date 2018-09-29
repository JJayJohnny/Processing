size(160, 160); 
background(255); 
smooth();


int kolor=0;

for(int i = 0; i<8; i++)
{
  
  for(int j = 0; j<8; j++)
  {

    
    fill(kolor);
    rect(20*j, 20*i, 20, 20);
    
    if(kolor==0 && j<7){
    kolor = 255
    }
    else if(kolor==255 && j<7){
    kolor=0;
    }
    

  }
}
