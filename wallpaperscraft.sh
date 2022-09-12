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

	if [[ $category = all ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi
	
	if [[ $category = 3d ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = 60_favorites ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = abstract ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = animals ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = anime ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = art ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = black ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = cars ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = city ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = dark ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = fantasy ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = flowers ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = food ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = holidays ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = love ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = macro ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = minimalism ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = motorcycles ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = music ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = nature ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = other ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = smilies ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = space ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = sport ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = hi-tech ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = textures ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = vector ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = words ]]; then
		for ((num=$start_page; num<=$end_page; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi


elif [[ $page_num = all ]]; then
	
	if [[ $category = all ]]; then
		for ((num=1; num<=$all_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi
	
	if [[ $category = 3d ]]; then
		for ((num=1; num<=$d3_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = 60_favorites ]]; then
		for ((num=1; num<=$favorites_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = abstract ]]; then
		for ((num=1; num<=$abstract_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = animals ]]; then
		for ((num=1; num<=$animals_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = anime ]]; then
		for ((num=1; num<=$anime_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = art ]]; then
		for ((num=1; num<=$art_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = black ]]; then
		for ((num=1; num<=$black_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = cars ]]; then
		for ((num=1; num<=$cars_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = city ]]; then
		for ((num=1; num<=$city_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = dark ]]; then
		for ((num=1; num<=$dark_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = fantasy ]]; then
		for ((num=1; num<=$fantasy_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = flowers ]]; then
		for ((num=1; num<=$flowers_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = food ]]; then
		for ((num=1; num<=$food_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = holidays ]]; then
		for ((num=1; num<=$holidays_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = love ]]; then
		for ((num=1; num<=$love_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = macro ]]; then
		for ((num=1; num<=$macro_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = minimalism ]]; then
		for ((num=1; num<=$minimalism_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = motorcycles ]]; then
		for ((num=1; num<=$motorcycles_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = music ]]; then
		for ((num=1; num<=$music_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = nature ]]; then
		for ((num=1; num<=$nature_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = other ]]; then
		for ((num=1; num<=$other_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = smilies ]]; then
		for ((num=1; num<=$smilies_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = space ]]; then
		for ((num=1; num<=$space_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = sport ]]; then
		for ((num=1; num<=$sport_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = hi-tech ]]; then
		for ((num=1; num<=$tech_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = textures ]]; then
		for ((num=1; num<=$textures_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = vector ]]; then
		for ((num=1; num<=$vector_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
		done
	fi

	if [[ $category = words ]]; then
		for ((num=1; num<=$words_num; num++)); do	
				echo -e "\nDownloading from page $num\n"
			links=$(curl https://wallpaperscraft.com/catalog/$category/$resolution/page$num | grep "https://images.wallpaperscraft.com/image/single" | sed -e 's/<img class="wallpapers__image" src="//' -e 's/" alt="Preview wallpaper.*//' -e "s/300x168/$resolution/")
			
			
			for link in ${links}; do
				wget -cq --show-progress -P $categories $link
			done
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

	if [[ $category = all && $page -le 8817 ]]; then
		downloadall
	elif [[ $category = 3d && $page -le 81 ]]; then
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
		echo -e "\nError. Wrong Input!\n"
	fi

fi

else
	echo -e "\nError. Wrong Category!\n"
fi

else
	echo -e "\nError. Wrong Resolution!\n"
fi
