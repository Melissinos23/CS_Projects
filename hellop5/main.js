let x, y, vx, vy, a, b;
let clicked;
function setup()
{
  x = 200;
  y = 100;
  a = 25;
  b = 25;
  vx = 1;
  vy = 1;

  clicked = false;
  createCanvas(400,400);
}

function draw()
{

  if(clicked)
    {vx = 0; vy = 0;}
  else
  {

  x+=vx;
  y+=vy;
  //if(x<200){ y++; }
  //if(x>200){ y--; }

  if(x > width-a)
    {vx*=-1;}
  if(x < a)
    {vx*=-1;}

  if(y > height-b)
    {vy*=-1;}
  if(y < b)
    {vy*=-1;}
  }

  //if(y<200){ x--; }
  a=x/5;
  b=y/2;
  background(0);
  fill(a, y, x);
  ellipse(x, y, 2*a, 2*b);
}

function mousePressed()
{
  clicked = !clicked;
}
