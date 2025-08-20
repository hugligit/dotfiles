#!/usr/bin/env python3

import sys
import subprocess
import time

def set_colour(colour, files):
    colours = {
        "1": "#A51D2D",
        "2": "#613583",
        "3": "#1A5FB4",
        "4": "#166440",
        "5": "#E5A50A",
        "6": "#C64600",
        "0": None,
    }

    if colour not in colours:
        print(f"Unknown colour: {colour}")
        sys.exit(1)

    for f in files:
        if colours[colour] is None:
            # Unset attribute
            subprocess.run(
                ["gio", "set", "-d", f, "metadata::thunar-highlight-color-background"],
                check=False,
            )
        else:
            # Set attribute
            subprocess.run(
                ["gio", "set", f, "metadata::thunar-highlight-color-background", colours[colour]],
                check=False,
            )

    # Refresh Thunar
    time.sleep(1)
    subprocess.run(["xdotool", "key", "ctrl+r"], check=False)


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: thunar-highlight.py <todo|later|unread|unset> <file1> [file2 ...]")
        sys.exit(1)

    colour = sys.argv[1]
    files = sys.argv[2:]
    set_colour(colour, files)



# Does not work yet {{{
# import sys
# import subprocess
# import time

# COLOURS = {
#     "todo": "rgb(255,230,200)",
#     "later": "rgb(220,220,220)",
#     "unread": "rgb(220,255,220)",
#     "unset": None,
# }

# def wait_for_attribute(file_path, colour, timeout=2.0, interval=0.05):
#     """Wait until the Thunar highlight attribute matches the desired colour."""
#     elapsed = 0.0
#     while elapsed < timeout:
#         result = subprocess.run(
#             ["gio", "info", "-a", "metadata::thunar-highlight-color-background", file_path],
#             capture_output=True,
#             text=True
#         )
#         if colour is None or (colour in result.stdout):
#             return
#         time.sleep(interval)
#         elapsed += interval

# def set_colour(colour_key, files):
#     if colour_key not in COLOURS:
#         print(f"Unknown colour: {colour_key}")
#         sys.exit(1)

#     colour_value = COLOURS[colour_key]

#     for f in files:
#         if colour_value is None:
#             subprocess.run(["gio", "set", "-d", f, "metadata::thunar-highlight-color-background"], check=False)
#         else:
#             subprocess.run(["gio", "set", f, "metadata::thunar-highlight-color-background", colour_value], check=False)

#         wait_for_attribute(f, colour_value)

#     # Refresh Thunar
#     subprocess.run(["xdotool", "key", "ctrl+r"], check=False)

# if __name__ == "__main__":
#     if len(sys.argv) < 3:
#         print("Usage: thunar-highlight.py <todo|later|unread|unset> <file1> [file2 ...]")
#         sys.exit(1)

#     colour_arg = sys.argv[1]
#     selected_files = sys.argv[2:]
#     set_colour(colour_arg, selected_files)
# }}}
