#!/bin/bash
echo [ EXECUTE ] - Launching Appium Service
sudo launchctl stop /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
sudo launchctl unload /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
launchctl stop /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
launchctl unload /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
rm -rf /workspace/logs/appiumserver.log
touch /workspace/logs/appiumserver.log
sudo lsof -i tcp:4723 | grep node | awk '{print $2}' | sudo xargs kill
#lsof -i tcp:4723 | grep node | awk '{print $2}' | sudo xargs kill
#launchctl load /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
#launchctl start /Library/LaunchDaemons/com.habbitzz.appiumserver.plist
echo [ EXECUTE ] - Launching Mock API Service
sudo launchctl stop /Library/LaunchDaemons/com.habbitzz.mockserver.plist
sudo launchctl unload /Library/LaunchDaemons/com.habbitzz.mockserver.plist
launchctl stop /Library/LaunchDaemons/com.habbitzz.mockserver.plist
launchctl unload /Library/LaunchDaemons/com.habbitzz.mockserver.plist
rm -rf /workspace/logs/mockserver.log
touch /workspace/logs/mockserver.log
sudo lsof -i tcp:3003 | grep node | awk '{print $2}' | sudo xargs kill
lsof -i tcp:3003 | grep node | awk '{print $2}' | sudo xargs kill
launchctl load /Library/LaunchDaemons/com.habbitzz.mockserver.plist
launchctl start /Library/LaunchDaemons/com.habbitzz.mockserver.plist
echo [ EXECUTE ] - Launching Web Service
sudo launchctl stop /Library/LaunchDaemons/com.habbitzz.webservice.plist
sudo launchctl unload /Library/LaunchDaemons/com.habbitzz.webservice.plist
launchctl stop /Library/LaunchDaemons/com.habbitzz.webservice.plist
launchctl unload /Library/LaunchDaemons/com.habbitzz.webservice.plist
rm -rf /workspace/logs/webserver.log
touch /workspace/logs/webserver.log
sudo lsof -i tcp:3004 | grep node | awk '{print $2}' | sudo xargs kill
lsof -i tcp:3004 | grep node | awk '{print $2}' | sudo xargs kill
launchctl load /Library/LaunchDaemons/com.habbitzz.webservice.plist
launchctl start /Library/LaunchDaemons/com.habbitzz.webservice.plist
launchctl list | grep habbitzz

