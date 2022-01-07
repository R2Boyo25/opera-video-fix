echo "This may break opera, run 'apm uninstall r2boyo25/opera-video-fix' if opera doesn't start after you try to run it."

wget http://security.ubuntu.com/ubuntu/pool/universe/c/chromium-browser/chromium-codecs-ffmpeg_90.0.4430.72-0ubuntu0.16.04.1_amd64.deb
ar x chromium-codecs-ffmpeg_90.0.4430.72-0ubuntu0.16.04.1_amd64.deb data.tar.xz
tar -xJf data.tar.xz --strip-components=4 ./usr/lib/chromium-browser/libffmpeg.so
sudo mkdir /usr/lib/x86_64-linux-gnu/opera/lib_extra
sudo cp ./libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/lib_extra
