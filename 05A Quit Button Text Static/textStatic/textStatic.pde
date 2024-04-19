//Gobal Variables
//
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
String title = "TeeHee";
int size;
float footerX, footerY, footerWidth, footerHeight;
color black = #000000;
String footer = "K";
//Display Geometry, Display Orientation; landscape, portrait, square
fullScreen();
//
//Concatenation and inspection of variables
println("Display Monitor:", "width:", displayWidth, "\theight:", displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/10; 
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight =appHeight*1/10;
footerX = appWidth*1/10;
footerY = appHeight*9/10;
footerWidth = appWidth*16/20;
footerHeight = appHeight*1/10;
//
//Single executed code: font SETUP
//font from OS
String[] fontList = PFont.list();
printArray(fontList);
size= 40;
titleFont = createFont("Consolas", size);
//
//DIVs and rect()
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
//rect();
//
//Repeated code: draw()ing text
fill(black);
textAlign(CENTER, CENTER); 
size = 45;
textFont(titleFont, size);
text(title, titleX, titleY, titleWidth, titleHeight);
//
fill(black);
textAlign(CENTER, CENTER); 
size = 45;
textFont(titleFont, size);
text(footer, footerX, footerY, footerWidth, footerHeight);
