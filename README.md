# kdrama_dl.command

MacOS downloader script for [https://kdrama.anontpp.com](https://kdrama.anontpp.com)

See [/r/koreanvariety](https://www.reddit.com/r/koreanvariety/comments/723mtd/i_created_this_website_that_streams_korean_shows/) or [/r/KDRAMA](https://www.reddit.com/r/KDRAMA/comments/723n1y/i_created_this_website_that_streams_korean_shows/)

## Install

You need to already have ``ffmpeg`` installed. If you haven't, here's the [DMG installer](https://evermeet.cx/ffmpeg/ffmpeg-3.3.4.dmg). Alternatively, you can download and use the ffmpeg executable directly.

```bash
# In a new Terminal Window
cd "$HOME" && \
curl -S -L --retry 2 -o 'ffmpeg.zip' \
'http://www.ffmpegmac.net/resources/Lion_Mountain_Lion_Mavericks_Yosemite_El-Captain_15.05.2017.zip' && \
unzip ffmpeg.zip && rm ffmpeg.zip && \
./ffmpeg -version
```

Download the latest copy of the script

```bash
# In a new Terminal Window
cd "$HOME" && \
curl -S -L --retry 2 -o 'kdrama_dl.test' \
'https://raw.githubusercontent.com/lastmodified/kdrama_dl.command/master/kdrama_dl.command' && \
chmod +x 'kdrama_dl.command'

# The script will now be in your home folder
# Either launch it from Finder or use the command below
./kdrama_dl.command
```
