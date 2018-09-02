if(!startGame)
{
	if(!gameOver)
	{
	
		draw_set_color(c_gray)
		draw_rectangle(290,50,450,75,false)
		draw_set_color(c_white)
		draw_text(300,50,"SCORE: " + string(score))

	}
	else
	{
	
		draw_set_color(c_white)
		draw_set_halign(fa_center)
		draw_text_transformed(browser_width/2,browser_height/2,"SCORE: " + string(score),5,5,0)
	}
}