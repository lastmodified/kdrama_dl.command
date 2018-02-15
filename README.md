# kdrama_dl.command

MacOS downloader script for [https://goplay.anontpp.com](https://goplay.anontpp.com)

See [/r/koreanvariety](https://www.reddit.com/r/koreanvariety/comments/723mtd/i_created_this_website_that_streams_korean_shows/) or [/r/KDRAMA](https://www.reddit.com/r/KDRAMA/comments/723n1y/i_created_this_website_that_streams_korean_shows/)

## Install

Choose either one of the two methods below to install this script.

After installing, the downloader script ``kdrama_dl.command`` will be in the ``kdramadl`` folder, inside Downloads. Double click on ``kdrama_dl.command`` from Finder. Video files downloaded will be in a ``downloads`` subfolder inside ``kdramadl``.

### 1. Manual Install

1. Create a folder ``kdramadl`` in your Downloads folder
1. Download the [latest script zip](https://github.com/lastmodified/kdrama_dl.command/archive/master.zip) and unzip it into the ``kdramadl`` folder
1. By now you should have the files below in the ``kdramadl`` folder:
    - ``kdrama_dl.command``
    - ``install_ffmpeg.command``
1. If you do not have ffmpeg already installed, double click on ``install_ffmpeg.command`` from Finder
    - You should then have the files below in the ``kdramadl`` folder:
        - ``ffmpeg``
        - ``kdrama_dl.command``

### 2. Scripted Install from Terminal (Applications > Utilities > Terminal)

1. In a new Terminal Window, run the following commands:
    ```bash
    mkdir -p "$HOME/Downloads/kdramadl/" && cd "$HOME/Downloads/kdramadl/" && \
    curl -S -L --retry 2 -o 'kdrama_dl.command' \
    'https://raw.githubusercontent.com/lastmodified/kdrama_dl.command/master/kdrama_dl.command' && \
    chmod +x 'kdrama_dl.command' && \
    curl -S -L --retry 2 -o 'install_ffmpeg.command' \
    'https://raw.githubusercontent.com/lastmodified/kdrama_dl.command/master/install_ffmpeg.command' && \
    chmod +x 'install_ffmpeg.command' && ./install_ffmpeg.command
    ```
