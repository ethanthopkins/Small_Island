layer_set_visible("Col",false);
alarm_set(0,room_speed*random_range(2,5));
killCount = 0;
gameOver = false;
audio_play_sound(snGamerBoy,10,true);
soundPlaying = false;
viewWidth = 1280;
viewHeight = 720;