#!/bin/sh

echo ""
echo ""
echo  "  _                  _____           _                       _    "
echo  " | |                / ____|         | |                     | |   "
echo  " | |     __ _ _ __ | |     __ _  ___| |__   ___   _ __   ___| |_  "
echo  " | |    / _\` | '_ \| |    / _\` |/ __| '_ \ / _ \ | '_ \ / _ \ __| "
echo  " | |___| (_| | | | | |___| (_| | (__| | | |  __/_| | | |  __/ |_  "
echo  " |______\__,_|_| |_|\_____\__,_|\___|_| |_|\___(_)_| |_|\___|\__| "
echo  ""
echo  ""

echo ""
echo ""
echo "CRITICAL ABORT"
echo ""
echo "You have pulled an out of date steamcache.net container"
echo ""
echo "Steamcache.net rebranded to LanCache.net in 2019"
echo "The steamcache/* containers are no longer supported"
echo ""
echo "Please update your containers to use the new lancache.net images"
echo ""
echo ""
echo "More details on this change can be found at https://lancache.net/news/2019/06/15/steamcache-is-rebranding-to-lancachenet/"
echo "Or review our new documentation and install guides on https://lancache.net/docs/"

exit -1
