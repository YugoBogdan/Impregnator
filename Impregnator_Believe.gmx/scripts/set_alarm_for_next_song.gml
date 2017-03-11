///set_alarm_for_next_song(sound,alarm_number);

var sound = argument[0];
var alarm_number = argument[1];
var length = audio_sound_length(sound);
audio_play_sound(sound, 5, false);
alarm[alarm_number] = room_speed * length;

