#!/binbash
export WORKSPACE=/workspace/source/ecommerce-mobile-mock-server/

if [ "$1" == "start" ]
then 
	cd "$WORKSPACE"
	git pull origin master
	node index.js > /workspace/logs/mockserver.log
elif [ "$1" == "stop" ]	
then
	echo "no"
else
	echo "wrong data"

fi

