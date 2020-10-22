import sys
from datetime import datetime

try:
    info = {}

    for line in sys.stdin:
        l = line.split()
        if l[0] == "tag" or l[0] == "set":
            # pass
            info["_".join(l[:2])] = " ".join(l[2:])
        else:
            info[l[0]] = " ".join(l[1:])


    title = info["tag_title"]
    time = int(info["duration"]) - int(info ["position"])
    minutes = time / 60
    seconds = time % 60
    repeat = info["set_repeat"]
    set_cont = info["set_continue"]
    shuffle = info["set_shuffle"]
    playing = "#999999"
    if info["status"] == "playing":
        playing = "#ffffff"


    # full_text=<span background="#00FFFF" foreground="red" size="x-large">Roses</span> and <i><span color="#EE37B8">violets</span></i>!
    msg = '''\
<span background="#222222" foreground="%s">  %s %02d:%02d  </span>CSR\
'''
    print (msg % (playing, title, minutes, seconds))
    # print (info["status"])
    # print title 

except Exception as a:
    print (a)
