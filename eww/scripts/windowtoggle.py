import sys
import os

def main():
    window = sys.argv[1]

    opened = "*" in exec_command(f"eww windows | grep {window}")

    if not opened:
        exec_command(f"eww open {window}")
    else:
        exec_command(f"eww close {window}")


def get_active_monitor():
    return int(exec_command("xdotool getmouselocation --shell | grep X")[2:])

def exec_command(command):
    stream = os.popen(command)
    res = stream.read().rstrip("\n")
    stream.close()
    return res

if __name__ == "__main__":
    main()