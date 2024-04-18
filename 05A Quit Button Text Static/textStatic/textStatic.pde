//Gobal Variables
//
float titleX, titleY, titleWidth, titleHeight;
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
//
//DIVs and rect()
rect(titleX, titleY, titleWidth, titleHeight);
//rect(footerX, footerY, footerWidth, footerHeight);
//rect();
//
//Repeated code: draw()ing text
