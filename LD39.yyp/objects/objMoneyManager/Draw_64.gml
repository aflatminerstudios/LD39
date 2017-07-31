/// @description Draw money on screen
// You can write your code in this editor

draw_set_font(fontLarge);
draw_text(120, 50, "$" + string_format(money,0,2));


if (displayPayment) {
  var alpha = 1;
  draw_set_font(fontMoneyNormal);
  if (paymentPopupTime > paymentPopupMaxTime / 2) {
    alpha -= (paymentPopupTime - paymentPopupMaxTime / 2)/ (paymentPopupMaxTime / 2);    
  }
  
  draw_text_color(145, 30, "-$" + string_format(paymentAmount,0,2),c_red,c_red,c_red,c_red,alpha);

  paymentPopupTime += 1;
  if (paymentPopupTime > paymentPopupMaxTime) {
    displayPayment = false;
    paymentPopupTime = 0;
  }
}

draw_set_font(fontNormal)