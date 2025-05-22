//week14_1_PFont_createFont_textSize_text
size(300,300);
textSize(50); // 50 號字
text("Hello",10,50); // 預設的字型
PFont font = createFont("Times New Roman",50);
textFont(font); // 換字型
text("Hello",10,100); // 放下面一點點
//print(PFont.list());
for(String name : PFont.list()) println(name);
