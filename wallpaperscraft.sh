#!/usr/bin/env bash

cat1="all"
cat2="3d"
cat3="60_favorites"
cat4="abstract"
cat5="animals"
cat6="anime"
cat7="art"
cat8="black"
cat9="cars"
cat10="city"
cat11="dark"
cat12="fantasy"
cat13="flowers"
cat14="food"
cat15="holidays"
cat16="love"
cat17="macro"
cat18="minimalism"
cat19="motorcycles"
cat20="music"
cat21="nature"
cat22="other"
cat23="smilies"
cat24="space"
cat25="sport"
cat26="hi-tech"
cat27="textures"
cat28="vector"
cat29="words"


all_num="8817"
d3_num="91"
favorites_num="3"
abstract_num="719"
animals_num="1039"
anime_num="229"
art_num="245"
black_num="49"
cars_num="468"
city_num="434"
dark_num="364"
fantasy_num="27"
flowers_num="460"
food_num="285"
holidays_num="95"
love_num="70"
macro_num="611"
minimalism_num="88"
motorcycles_num="69"
music_num="41"
nature_num="1898"
other_num="819"
smilies_num="3"
space_num="128"
sport_num="59"
tech_num="22"
textures_num="289"
vector_num="83"
words_num="148"

all_links() {
	echo -e "\nDownloading from page $num\n"
	for link in $(curl https://wallpaperscraft.com/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/"); do
		wget -cq --show-progress -P $categories $link
	done
}

links() {
	echo -e "\nDownloading from page $num\n"
	for link in $(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/"); do
		wget -cq --show-progress -P $categories $link
	done

}

read -p "Resolution of images : " resolution

if [[ -z $resolution ]]; then

	echo -e "\nError! Empty input.....\n"

elif [[ $resolution = 2160x3840 || $resolution = 1440x2560 || $resolution = 1366x768 || $resolution = 1080x1920 || $resolution = 1024x600 || $resolution = 960x544 || $resolution = 800x1280 || $resolution = 800x600 || $resolution = 720x1280 || $resolution = 540x960 || $resolution = 480x854 || $resolution = 480x800 || $resolution = 360x640 || $resolution = 320x480 || $resolution = 320x240 || $resolution = 240x400 || $resolution = 240x320 || $resolution = 3415x3415 || $resolution = 2780x2780 || $resolution = 1350x2400 || $resolution = 1280x1280 || $resolution = 938x1668 || $resolution = 800x1420 || $resolution = 800x1200 || $resolution = 1600x1200 || $resolution = 1400x1050 || $resolution = 1280x1024 || $resolution = 1280x960 || $resolution = 1152x864 || $resolution = 1024x768 || $resolution = 3840x2400 || $resolution = 3840x2160 || $resolution = 2560x1600 || $resolution = 2560x1440 || $resolution = 2560x1080 || $resolution = 2560x1024 || $resolution = 2048x1152 || $resolution = 1920x1200 || $resolution = 1920x1080 || $resolution = 1680x1050 || $resolution = 1600x900 || $resolution = 1440x900 || $resolution = 1280x800 || $resolution = 1280x720 ]]; then

read -p "Category : " category

if [[ -z $category ]]; then

	echo -e "\nError! Empty input.....\n"

elif [[ $category = all || $category = 3d || $category = 60_favorites || $category = abstract || $category = animals || $category = anime || $category = art || $category = black || $category = cars || $category = city || $category = dark || $category = fantasy || $category = flowers || $category = food || $category = holidays || $category = love || $category = macro || $category = minimalism || $category = motorcycles || $category = music || $category = nature || $category = other || $category = smilies || $category = space || $category = sport || $category = hi-tech || $category = textures || $category = vector || $category = words ]]; then

categories="$PWD/crafts/$category"

read -p "Page Number : " page_num

page="page$page_num"

if [[ -z $page_num ]]; then

	echo -e "\nError! Empty input.....\n"

elif [[ $page_num = range || $page_num = r ]]; then

read -p "Starting Page Number range : " start_page
read -p "Ending Page Number range : " end_page

	if [[ $category = $cat ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do
			alllinks
		done

	elif [[ $category = 3d || $category = 60_favorites || $category = abstract || $category = animals || $category = anime || $category = art || $category = black || $category = cars || $category = city || $category = dark || $category = fantasy || $category = flowers || $category = food || $category = holidays || $category = love || $category = macro || $category = minimalism || $category = motorcycles || $category = music || $category = nature || $category = other || $category = smilies || $category = space || $category = sport || $category = hi-tech || $category = textures || $category = vector || $category = words ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do
			links	
		done
	fi

elif [[ $page_num = all ]]; then
	
	if [[ $category = $cat1 ]]; then
		for ((num=1; num<=$all_num; num++)); do
			all_links
		done
	
	elif [[ $category = $cat2 ]]; then
		for ((num=1; num<=$d3_num; num++)); do
			links		
		done
	
	elif [[ $category = $cat3 ]]; then
		for ((num=1; num<=$favorites_num; num++)); do
			links
		done	
	
	elif [[ $category = $cat4 ]]; then
		for ((num=1; num<=$abstract_num; num++)); do
			links
		done
	
	elif [[ $category = $cat5 ]]; then
		for ((num=1; num<=$animals_num; num++)); do
			links
		done
	
	elif [[ $category = $cat6 ]]; then
		for ((num=1; num<=$anime_num; num++)); do
			links
		done
	
	elif [[ $category = $cat7 ]]; then
		for ((num=1; num<=$art_num; num++)); do
			links
		done
	
	elif [[ $category = $cat8 ]]; then
		for ((num=1; num<=$black_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat9 ]]; then
		for ((num=1; num<=$cars_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat10 ]]; then
		for ((num=1; num<=$city_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat11 ]]; then
		for ((num=1; num<=$dark_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat12 ]]; then
		for ((num=1; num<=$fantasy_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat13 ]]; then
		for ((num=1; num<=$flowers_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat14 ]]; then
		for ((num=1; num<=$food_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat15 ]]; then
		for ((num=1; num<=$holidays_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat16 ]]; then
		for ((num=1; num<=$love_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat17 ]]; then
		for ((num=1; num<=$macro_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat18 ]]; then
		for ((num=1; num<=$minimalism_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat19 ]]; then
		for ((num=1; num<=$motorcycles_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat20 ]]; then
		for ((num=1; num<=$music_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat21 ]]; then
		for ((num=1; num<=$nature_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat22 ]]; then
		for ((num=1; num<=$other_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat23 ]]; then
		for ((num=1; num<=$smilies_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat24 ]]; then
		for ((num=1; num<=$space_num; num++)); do
			links
		done
	
	elif [[ $category = $cat25 ]]; then
		for ((num=1; num<=$sport_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat26 ]]; then
		for ((num=1; num<=$tech_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat27 ]]; then
		for ((num=1; num<=$textures_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat28 ]]; then
		for ((num=1; num<=$vector_num; num++)); do	
			links
		done
	
	elif [[ $category = $cat29 ]]; then
		for ((num=1; num<=$words_num; num++)); do
			links
		done
	fi

else

download() {

if [ ! -d $categories ]; then

	mkdir -p $categories
fi

echo -e "\nChecking $resolution Download links for $category in $page\n"

links=$(curl https://wallpaperscraft.com/catalog/$category/date/$resolution/$page | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")

for link in ${links}; do

	echo -e "\nDOWNLOADING : $link\n"

	wget -cq --show-progress -P $categories $link
done
}

downloadall() {

if [ ! -d $categories ]; then

	mkdir -p $categories
fi

echo -e "\nChecking $resolution Download links for $category in $page\n"

links=$(curl https://wallpaperscraft.com/$category/$resolution/$page | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")

for link in ${links}; do

	echo -e "\nDOWNLOADING : $link\n"

	wget -cq --show-progress -P $categories $link
done
}

	if [[ $category = $cat1 && $page -le 8817 ]]; then
		downloadall
	elif [[ $category = $cat2 && $page -le 81 ]]; then
		download
	elif [[ $category = $cat3 && $page -le 60 ]]; then
		download
	elif [[ $category = $cat4 && $page -le 658 ]]; then
		download
	elif [[ $category = $cat5 && $page -le 928 ]]; then
		download
	elif [[ $category = $cat6 && $page -le 179 ]]; then
		download
	elif [[ $category = $cat7 && $page -le 219 ]]; then
		download
	elif [[ $category = $cat8 && $page -le 47 ]]; then
		download
	elif [[ $category = $cat9 && $page -le 436 ]]; then
		download
	elif [[ $category = $cat10 && $page -le 407 ]]; then
		download
	elif [[ $category = $cat11 && $page -le 357 ]]; then
		download
	elif [[ $category = $cat12 && $page -le 21 ]]; then
		download
	elif [[ $category = $cat13 && $page -le 383 ]]; then
		download
	elif [[ $category = $cat14 && $page -le 264 ]]; then
		download
	elif [[ $category = $cat15 && $page -le 74 ]]; then
		download
	elif [[ $category = $cat16 && $page -le 54 ]]; then
		download
	elif [[ $category = $cat17 && $page -le 553 ]]; then
		download
	elif [[ $category = $cat18 && $page -le 85 ]]; then
		download
	elif [[ $category = $cat19 && $page -le 66 ]]; then
		download
	elif [[ $category = $cat20 && $page -le 41 ]]; then
		download
	elif [[ $category = $cat21 && $page -le 1772 ]]; then
		download
	elif [[ $category = $cat22 && $page -le 773 ]]; then
		download
	elif [[ $category = $cat23 && $page -le 3 ]]; then
		download
	elif [[ $category = $cat24 && $page -le 117 ]]; then
		download
	elif [[ $category = $cat25 && $page -le 56 ]]; then
		download
	elif [[ $category = $cat26 && $page -le 22 ]]; then
		download
	elif [[ $category = $cat27 && $page -le 266 ]]; then
		download
	elif [[ $category = $cat28 && $page -le 68 ]]; then
		download
	elif [[ $category = $cat29 && $page -le 145 ]]; then
		download
	else
		echo -e "\nError. Wrong Input!\n"
	fi

fi

else
	echo -e "\nError. Wrong Category!\n"
fi

else
	echo -e "\nError. Wrong Resolution!\n"
fi
