cpiped captures an audio stream and outputs it to a pipe with a bit of buffering
to handle clock mismatch. It also includes silence/sound detection and the ability
to run a command on detection.

I'm using this to capture line-in audio from a sound card and send it to 
forked-daapd (https://github.com/ejurgensen/forked-daapd). On sound detection, it
runs a simple script to start playing the associated pipe in forked-daapd.


Tips see:
https://github.com/badaix/snapcast/issues/153
https://community.home-assistant.io/t/audio-line-in-piped-to-snapcast-crashes-sound-card-any-linux-gurus-on-here/34902

Create named pipe:

mkfifo /tmp/audioin
