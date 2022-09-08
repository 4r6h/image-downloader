#!/usr/bin/env bash

read -p "Resolution of images : " resolution

if [[ -z $resolution ]]; then

	echo "Error! Empty input....."

elif [[ $resolution = 2160x3840 || $resolution = 1440x2560 || $resolution = 1366x768 || $resolution = 1080x1920 || $resolution = 1024x600 || $resolution = 960x544 || $resolution = 800x1280 || $resolution = 800x600 || $resolution = 720x1280 || $resolution = 540x960 || $resolution = 480x854 || $resolution = 480x800 || $resolution = 360x640 || $resolution = 320x480 || $resolution = 320x240 || $resolution = 240x400 || $resolution = 240x320 || $resolution = 3415x3415 || $resolution = 2780x2780 || $resolution = 1350x2400 || $resolution = 1280x1280 || $resolution = 938x1668 || $resolution = 800x1420 || $resolution = 800x1200 || $resolution = 1600x1200 || $resolution = 1400x1050 || $resolution = 1280x1024 || $resolution = 1280x960 || $resolution = 1152x864 || $resolution = 1024x768 || $resolution = 3840x2400 || $resolution = 3840x2160 || $resolution = 2560x1600 || $resolution = 2560x1440 || $resolution = 2560x1080 || $resolution = 2560x1024 || $resolution = 2048x1152 || $resolution = 1920x1200 || $resolution = 1920x1080 || $resolution = 1680x1050 || $resolution = 1600x900 || $resolution = 1440x900 || $resolution = 1280x800 || $resolution = 1280x720 ]]; then

read -p "Category : " category

if [[	-z $category ]]; then

	echo "Error! Empty input....."

elif [[ $category = all || $category = 3D || $category = 60_favorites || $category = abstract || $category = animals || $category = anime || $category = art || $category = black || $category = cars || $category = city || $category = dark || $category = fantasy || $category = flowers || $category = food || $category = holidays || $category = love || $category = macro || $category = minimalism || $category = motorcycles || $category = music || $category = nature || $category = other || $category = smilies || $category = space || $category = sport || $category = hi-tech || $category = textures || $category = vector || $category = words ]]; then

read -p "Page Number : " page_num

if [[ -z $page_num ]]; then

	echo "Error! Empty input....."

elif [[ $page_num = all ]]; then

	categories="$PWD/crafts/$category"
	
	if [[ $category = all ]]; then
		for ((num=1; num<8061; num++));do	
				echo $num
			links=$(curl https://wallpaperscraft.com/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			for link in ${links}; do
				wget -cP $categories $link
			done
		done
	fi

else
	page="page$page_num"

	categories="$PWD/crafts/$category"

download() {

if [ ! -d $categories ]; then

	mkdir -p $categories
fi

echo "Checking $resolution Download links for $category in page $page"

links=$(curl https://wallpaperscraft.com/catalog/$category/date/$resolution/$page | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")

for link in ${links}; do

	echo "DOWNLOADING : $link"

	wget -cqP $categories $link
done
}

downloadall() {

if [ ! -d $categories ]; then

	mkdir -p $categories
fi

echo "Checking $resolution Download links for $category in page $page"

links=$(curl https://wallpaperscraft.com/$category/$resolution/$page | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")

for link in ${links}; do

	echo "DOWNLOADING : $link"

	wget -cqP $categories $link
done
}

	if [[ $category = all && $page -le 8060 ]]; then
		downloadall
	elif [[ $category = 3D && $page -le 81 ]]; then
		download
	elif [[ $category = 60_favorites && $page -le 60 ]]; then
		download
	elif [[ $category = abstract && $page -le 658 ]]; then
		download
	elif [[ $category = animals && $page -le 928 ]]; then
		download
	elif [[ $category = anime && $page -le 179 ]]; then
		download
	elif [[ $category = art && $page -le 219 ]]; then
		download
	elif [[ $category = black && $page -le 47 ]]; then
		download
	elif [[ $category = cars && $page -le 436 ]]; then
		download
	elif [[ $category = city && $page -le 407 ]]; then
		download
	elif [[ $category = dark && $page -le 357 ]]; then
		download
	elif [[ $category = fantasy && $page -le 21 ]]; then
		download
	elif [[ $category = flowers && $page -le 383 ]]; then
		download
	elif [[ $category = food && $page -le 264 ]]; then
		download
	elif [[ $category = holidays && $page -le 74 ]]; then
		download
	elif [[ $category = love && $page -le 54 ]]; then
		download
	elif [[ $category = macro && $page -le 553 ]]; then
		download
	elif [[ $category = minimalism && $page -le 85 ]]; then
		download
	elif [[ $category = motorcycles && $page -le 66 ]]; then
		download
	elif [[ $category = music && $page -le 41 ]]; then
		download
	elif [[ $category = nature && $page -le 1772 ]]; then
		download
	elif [[ $category = other && $page -le 773 ]]; then
		download
	elif [[ $category = smilies && $page -le 3 ]]; then
		download
	elif [[ $category = space && $page -le 117 ]]; then
		download
	elif [[ $category = sport && $page -le 56 ]]; then
		download
	elif [[ $category = hi-tech && $page -le 22 ]]; then
		download
	elif [[ $category = textures && $page -le 266 ]]; then
		download
	elif [[ $category = vector && $page -le 68 ]]; then
		download
	elif [[ $category = words && $page -le 145 ]]; then
		download
	else
		echo "Error. Wrong Input!"
	fi

fi

else
	echo "Error. Wrong Category!"
fi
else
	echo "Error. Wrong Resolution!"
fi
