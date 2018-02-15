#!/bin/bash

# Copyright (C) 2017 github.com/lastmodified
#
# This file is part of kdrama_dl.command.
#
# kdrama_dl.command is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# kdrama_dl.command is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with kdrama_dl.command.  If not, see <http://www.gnu.org/licenses/>.
#

# Update new version of ffmpeg here if needed
DMG_LINK='https://evermeet.cx/ffmpeg/ffmpeg-3.4.2.dmg'

SCRIPT_PATH=`dirname "$0"`

function wait_ack {
    # Gives user a chance to read any messages before the script window closes
    read -n 1 -s -r -p $'\n[Press ENTER to continue]\n'
    exit
}

function download_ffmpeg {
    echo "Downloading FFMPEG $DMG_LINK ..."
    curl -L --fail -o "$SCRIPT_PATH/ffmpeg.dmg" "$DMG_LINK" || \
    { echo '*** FFMPEG download failed'; wait_ack; }

    MOUNTED_VOL=$(hdiutil mount "$SCRIPT_PATH/ffmpeg.dmg" | grep -Eo '/Volumes/FFmpeg.+')
    cp -pf "$MOUNTED_VOL/ffmpeg" "$SCRIPT_PATH/ffmpeg" && hdiutil unmount "$MOUNTED_VOL" && \
    rm "$SCRIPT_PATH/ffmpeg.dmg" && \
    echo '*** FFMPEG successfully downloaded.'
}

{ FFMPEG_PATH="$SCRIPT_PATH/ffmpeg"; "$FFMPEG_PATH" -version >/dev/null 2>&1 && \
echo "ffmpeg found at $FFMPEG_PATH"; } || \
{ FFMPEG_PATH="ffmpeg"; "$FFMPEG_PATH" -version >/dev/null 2>&1 && \
echo "ffmpeg found at $(which ffmpeg)"; } || download_ffmpeg

wait_ack
