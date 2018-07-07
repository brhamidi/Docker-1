script=hello.py
app_path=~/flask_app

if [ ! -d $app_path ]; then
	mkdir $app_path
fi

mv $script $app_path
