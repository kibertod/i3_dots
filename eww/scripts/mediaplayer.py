import sys
import os
from time import sleep

def main():
    match sys.argv[1]:
        case "get_time":
            length = float(exec_command("playerctl --player=ncspot metadata mpris:length")) / 1_000_000
            position = float(exec_command("playerctl position"))
            time = 100 * (position / length)
            print(time)
        case "set_time":
            length = float(exec_command("playerctl --player=ncspot metadata mpris:length")) / 1_000_000
            time = float(sys.argv[2])
            position = length * ( time / 100 )
            exec_command(f"playerctl --player=ncspot position {position}")
        case "get_artist":
            artist = exec_command("playerctl --player=ncspot metadata artist")
            if len(artist) > 30:
                artist = artist[:28] + "..."
            print(artist)
        case "get_song":
            song = exec_command("playerctl --player=ncspot metadata title")
            if len(song) > 33:
                song = song[:30] + "..."
            print(song)
        case "waybar":
            artist = exec_command("playerctl --player=ncspot metadata artist")
            if len(artist) > 30:
                artist = artist[:28] + "..."
            song = exec_command("playerctl --player=ncspot metadata title")
            if len(song) > 45:
                song = song[:42] + "..."
            playing = exec_command("playerctl --player=ncspot status") == "Playing"
            playing = "" if playing else ""
            print('{ "text": "' + f"{playing} {artist} - {song}" + '"}')
        
    


def exec_command(command):
    stream = os.popen(command)
    res = stream.read().rstrip("\n")
    stream.close()
    return res

if __name__ == "__main__":
    main()