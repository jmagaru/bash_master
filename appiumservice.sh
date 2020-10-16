#!/bin/bash
SVC=$(launchctl list | grep -c appium)
if [ $1 == 'start' ]
then
   if [ $SVC == 1 ]
   then
	echo '[ EXECUTE ] - Appium Service already been started!'
   else
        echo '[ EXECUTE ] - Starting Appium Service ... '
        launchctl load /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
        echo '[ EXECUTE ] - Appium Service has been started!'
   fi
else
   if [ $SVC == 1 ]
   then
	echo '[ EXECUTE ] - Stopping Appium Service ...'
   	launchctl unload /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
   	echo '[ EXECUTE ] - Appium Service has been stopped!'
   else
	echo '[ EXECUTE ] - Appium Service already been stopped!'
   fi
fi
