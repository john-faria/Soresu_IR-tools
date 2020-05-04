  _________                                     ._____________
 /   _____/ ___________   ____   ________ __    |   \______   \
 \_____  \ /  _ \_  __ \_/ __ \ /  ___/  |  \   |   ||       _/
 /        (  <_> )  | \/\  ___/ \___ \|  |  /   |   ||    |   \
/_______  /\____/|__|    \___  >____  >____/____|___||____|_  /
        \/                   \/     \/    /_____/           \/
    _____-------,
  /`            `-|--------------.______________
 |      _._,_,_,__|______________               `--------------\
 l      {      /  ',---|         `--------------.______________/
  `,     \    |   |    |
   |      \   |   |    |
    l      \__|   |    \
    `.                  `-------.______        __--------,
      \                                `------'     ,-----
       \                                     _______3
        |                  r-----._____.----'
        |                 /
         \                |

Soresu IR is a toolkit I threw together for responding to potential malware infections (currently only on Linux machines). The script will use local packeges to install and configure iptables - blocking all connections that do not go to the verified software distributors. ClamAV will then be installed along with the clamav-unnofical-sigs. 

The toolkit can be downloaded to and run from any USB. However, you should keep in mind that some sophisticated worms are still known to spread via USBs. If you do put this toolkit on an Incident Response USB, I strongly recomend you fully embrace the nerdiness of this project and use one of these: https://www.tomshardware.com/news/Star-Wars-Lightsabers-USB-Flash,9747.html

There is a more paranoid version which uses local packages for all scans, before allowing connections to gradually be made - allowing for freshly updated signatures to carefully be added.
