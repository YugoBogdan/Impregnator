///audio_play_sound_if_not_muted(snd,priority,loop)

if (soundtrack_ctrl.sound_on == true){
    snd = argument[0];
    priority = argument[1];
    loop = argument[2];
    audio_play_sound(snd,priority,loop);
}
