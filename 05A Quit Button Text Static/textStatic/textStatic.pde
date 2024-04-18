//Gobal Variables
//
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
String title = "TeeHee";
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
//
//Single executed code: font SETUP
//font from OS
String[] fontList = PFont.list();
printArray(fontList);
titleFont = createFont("Consolas", 45);
//
//DIVs and rect()
rect(titleX, titleY, titleWidth, titleHeight);
//rect(footerX, footerY, footerWidth, footerHeight);
//rect();
//
//Repeated code: draw()ing text
textFont(titleFont, 20);
text(title, titleX, titleY, titleWidth, titleHeight);
