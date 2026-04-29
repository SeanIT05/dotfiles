#!/bin/bash

# Directory for the temporary cover (stored in RAM for speed)
COVER_PATH="/tmp/spotify_cover.png"

playerctl --player=spotify metadata --format '{{title}}' --follow | while read -r title; do
    # Get metadata
    ARTIST=$(playerctl --player=spotify metadata artist)
    ALBUM=$(playerctl --player=spotify metadata album)
    ART_URL=$(playerctl --player=spotify metadata mpris:artUrl)

    # 1. Download the cover art (Uses curl to fetch the Spotify JPG)
    if [ -n "$ART_URL" ]; then
        curl -s "$ART_URL" -o "$COVER_PATH"
    else
        # Fallback if no art is found
        rm -f "$COVER_PATH"
    fi

    # 2. Send to Dunst
    # -i points to our fresh download
    # -h makes it stack so you don't get 20 notifications
    notify-send -a "Spotify" \
                -i "$COVER_PATH" \
                -h string:x-dunst-stack-tag:music \
                "$title" \
                "by $ARTIST\n<i>$ALBUM</i>"
done
