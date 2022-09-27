class Button
{
  PVector Pos = new PVector(0,0);
  float Width = 0;
  float Height = 0;
  color Color;
  String Text;
  String Braille;
  Boolean Pressed = false;
  Boolean Clicked = false;
 // Constructor to create a button 
  Button(int x, int y, int w, int h, String t, String BR, int r, int g, int b)
  {
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Color = color(r,g,b);
    Text = t;
    Braille = BR;
  }
  void update()
  {
    if(mousePressed == true && mouseButton == LEFT && Pressed == false)
    {
      Pressed = true;
      if(mouseX >= Pos.x && mouseX <= Pos.x+Width && mouseY >= Pos.y && mouseY <= Pos.y+Height)
      {
        Clicked = true;
      }
    } else
    {
      Clicked = false;
      //Pressed = false;
    }
    
    if(mousePressed !=true)
    {
      Pressed = false;
    }
  }
  void render()
  {
  PFont font;
  PFont braille;
  font = createFont("Helvetica", 18, true);
  braille = createFont("Swell-Braille.ttf", 14, true);
  textFont(braille);
  textFont(font);
  
    fill(Color);
    ellipse(Pos.x,Pos.y,Width,Height);
    
    fill(0);
    textAlign(CENTER,BOTTOM);
    textFont(font);
    text(Text,Pos.x+(Width/50),Pos.y+(Height/50));
    
    fill(0);
    textAlign(CENTER,TOP);
    textFont(braille);
    text(Text,Pos.x+(Width/40),Pos.y+(Height/40));
    
  }
  boolean isClicked()
  {
    return Clicked;
  }
  
}
//First elevator column interface
Button button4;
Button button3;
Button button2;
Button button1;
Button buttonopen;
//Second elevator column interface
Button buttonvoice;
Button button8;
Button button7;
Button button6;
Button button5;
Button buttonB;
//Third elevator column interface
Button button12;
Button button11;
Button button10;
Button button9;
Button buttonclose;
//Extra Safety Buttons
Button buttonbell;
Button buttonemergency;
void setup()
{
  size(460,880);
  //First elevator column interface
  button4 = new Button(100,220,100,100,"4","",220,220,220);
  button3 = new Button(100,340,100,100,"3","",220,220,220);
  button2 = new Button(100,460,100,100,"2","",220,220,220);
  button1 = new Button(100,580,100,100,"1*","",220,220,220);
  buttonopen = new Button(100,700,100,100,"  <   |   >  ","",220,220,220);
  //Second elevator column interface
  buttonvoice = new Button(220,100,100,100,"Voice","",220,220,220);
  button8 = new Button(220,220,100,100,"8","",220,220,220);
  button7 = new Button(220,340,100,100,"7","",220,220,220);
  button6 = new Button(220,460,100,100,"6","",220,220,220);
  button5 = new Button(220,580,100,100,"5","",220,220,220);
  buttonB = new Button(220,700,100,100,"B","",220,220,220);
  //Third elevator column interface
  button12 = new Button(340,220,100,100,"12","",220,220,220);
  button11 = new Button(340,340,100,100,"11","",220,220,220);
  button10 = new Button(340,460,100,100,"10","",220,220,220);
  button9 = new Button(340,580,100,100,"9","",220,220,220);
  buttonclose = new Button(340,700,100,100,"  >   |   <  ","",220,220,220);
  //Extra Buttons
  buttonbell = new Button(150,800,100,100,"Bell","",220,220,220);
  buttonemergency = new Button(290,800,100,100,"Emergency","",220,220,220);
}
void draw()
{
  background(87);
  //First elevator column interface
  if(button4.isClicked())
  {
    button4 = new Button(100,220,100,100,"4","",0,255,0);
  }
  
  if(button3.isClicked())
  {
    button3 = new Button(100,340,100,100,"3","",0,255,0);
  }
  
  if(button2.isClicked())
  {
    button2 = new Button(100,460,100,100,"2","",0,255,0);
  }
  
  if(button1.isClicked())
  {
    button1 = new Button(100,580,100,100,"1","",0,255,0);
  }
  
  if(buttonopen.isClicked())
  {
    buttonopen = new Button(100,700,100,100,"  <   |   >  ","",0,255,0);
  }
  
  //Second elevator column interface
  if(buttonvoice.isClicked())
  {
    buttonvoice = new Button(220,100,100,100,"Voice","",0,255,0);
  }
  
  if(button8.isClicked())
  {
    button8 = new Button(220,220,100,100,"8","",0,255,0);
  }
  
  if(button7.isClicked())
  {
    button7 = new Button(220,340,100,100,"7","",0,255,0);
  }
  
  if(button6.isClicked())
  {
    button6 = new Button(220,460,100,100,"6","",0,255,0);
  }
  
  if(button5.isClicked())
  {
    button5 = new Button(220,580,100,100,"5","",0,255,0);
  }
  
  if(buttonB.isClicked())
  {
    buttonB = new Button(220,700,100,100,"B","",0,255,0);
  }
  //Third elevator column interface
  if(button12.isClicked())
  {
    button12 = new Button(340,220,100,100,"12","",0,255,0);
  }
  
  if(button11.isClicked())
  {
    button11 = new Button(340,340,100,100,"11","",0,255,0);
  }
  
  if(button10.isClicked())
  {
    button10 = new Button(340,460,100,100,"10","",0,255,0);
  }
  
  if(button9.isClicked())
  {
    button9 = new Button(340,580,100,100,"9","",0,255,0);
  }
  
  if(buttonclose.isClicked())
  {
    buttonclose = new Button(340,700,100,100,"  >   |   <  ","",0,255,0);
  }  
  
  //Extra Buttons
  if(buttonbell.isClicked())
  {
    buttonbell = new Button(150,800,100,100,"Bell","",0,255,0);
  }
  
  if(buttonemergency.isClicked())
  {
    buttonemergency = new Button(290,800,100,100,"Emergency","",0,255,0);
  }  
  
  
  //First elevator column interface
  button4.update();
  button4.render();
  button3.update();
  button3.render();
  button2.update();
  button2.render();
  button1.update();
  button1.render();
  buttonopen.update();
  buttonopen.render();
  //Second elevator column interface
  buttonvoice.update();
  buttonvoice.render();
  button8.update();
  button8.render();
  button7.update();
  button7.render();
  button6.update();
  button6.render();
  button5.update();
  button5.render();
  buttonB.update();
  buttonB.render();
  //Third elevator column interface
  button12.update();
  button12.render();
  button11.update();
  button11.render();
  button10.update();
  button10.render();
  button9.update();
  button9.render();
  buttonclose.update();
  buttonclose.render();
  //Extra Buttons
  buttonbell.update();
  buttonbell.render();
  buttonemergency.update();
  buttonemergency.render();
}
