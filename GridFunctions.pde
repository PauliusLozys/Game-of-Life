void DrawGrid()
{
   background(100,100,100);
  
  for(int x = 0; x < Stulp;x++)
  {
    for(int y = 0; y < Eil;y++)
    {      
      if(Life[x][y] == 1) // Alive is white
      {
        fill(150,200,20);
      }
      else
      {
        fill(0); // Dead is black
      }     
      noStroke();
      rect(x*Dydis+1,y*Dydis+1,Dydis-2,Dydis-2);     
    }
  }
  
}

void GridInfo(int[][] grid)
{
  for(int i = 0;i < Stulp;i++)
  {
    for(int j = 0; j < Eil;j++)
    {
       print(grid[j][i]);   
    }
    println();
  }
}

int[][] CreateGrid(int Stulp, int Eil)
{
int[][] Grid = new int[Stulp][Eil];
  for(int x = 0; x < Stulp;x++)
  {
    for(int y = 0; y < Eil;y++)
    {
      Grid[x][y] = round(random(0,1));
    }
  }
    return Grid;
}

int[][] CreateEmptyGrid(int Stulp, int Eil)
{
int[][] Grid = new int[Stulp][Eil];
  for(int x = 0; x < Stulp;x++)
  {
    for(int y = 0; y < Eil;y++)
    {
      Grid[x][y] = 0;
    }
  }
    return Grid;
}
