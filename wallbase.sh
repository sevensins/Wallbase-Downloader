#!/bin/bash
#
# This script gets the beautiful wallpapers from http://wallbase.cc
# This script is brought to you by 7sins@4geeksfromnet.com
# and at present is actively maintained by MacEarl
#
#
# Revision 2.6
# Contributed by MacEarl
# 1. Added Function do download Related Wallpapers
#
#
# Revision 2.5.1
# Contributed by MacEarl
# 1. Added some Explanation in Section 6 to clarify the combination of the THPP and Max_Range Variables
#
#
# Revision 2.5
# Contributed by MacEarl
# 1. Added Function to download a specified Range of Wallpaper
#
#
# Revision 2.4
# Contributed by MacEarl and HansTester
# 1. Fixed Login Feature (NSFW working again) (Thanks to HansTester)
# 2. Implemented download uploads by specific User (Thanks to HansTester)
#
#
# Revision 2.3
# Contributed by MacEarl
# 1. Added Categorize Feature
# 2. Source Cleanup
#
#
# Revision 2.2
# Contributed by Axa-Ru and MacEarl
# 1. Source Cleanup by Axa-Ru
# 2. Fixed Download Code for new System
# 3. Improved the check for already downloaded Files ( much faster ;) )
#
#
# Revision 2.1
# Contributed by MacEarl
# 1. Added a Feature to download "Your Favorites"
# 2. Added a Feature to download "user created collections"
# 3. Rewrote the check for already downloaded Files
#    (You now can rename or remove Wallpapers and they dont get downloaded again.
#     Eg. If you don''t like a wallpaper, just delete it and it won''t get downloaded again.
#     To re-enable the download of a specific Wallpaper you need to remove the
#     Wallpaper number from the file "downloaded.txt")
#
#
# Revision 2.0
# Contributed by MacEarl
# 1. Rewritten code for new Wallbase System
#
#
# Revision 1.2.1
# Contributed by MacEarl
# 1. Added Login Check for new Wallpapers
#
#
# Revision 1.2
# Contributed by MacEarl
# 1. Added a login feature to download NSFW content/category
#
#
# Revision 1.1.1
# Contributed by Hab
# 1. Updated mkdir option with -p flag
#
#
# Revision 1.1
# Contributed by MacEarl
# 1. Added a Search Function
# 2. Added a check for already existing Files
# 3. Fixed a bug (imageshack mirrored files)
#
#
# Revision 1.0
# Contributed by MacEarl
# 1. Added the much needed fixes for NSFW category
# 2. Updated the script with more options
# 3. Modified the script
#
#
#
# Wallpapers can be sorted according to
#
################################
### Section 1 :: Resolution  ###
################################
#
# Resolution
#   Accepted values are 0 => All Standard
#       800x600 | 1024x768 | 1280x960 | 1280x1024 | 1400x1050 | 1600x1200 | 2560x2048
#   Widescreen
#       1024x600 | 1280x800 | 1366x768 | 1440x900 | 1600x900 | 1680x1050 | 1920x1080 | 1920x1200 | 2560x1440 | 2560x1600
#
################################
### Section 2 :: Aspect Ratio###
################################
#
# Aspect Ratio
#   Accepted values are 0 => All
#   1.33 => 4:3
#   1.25 => 5:4
#   1.77 => 16:9
#   1.60 => 16:10
#   1.70 => Netbook
#   2.50 => Dual
#   3.20 => Dual Wide
#   0.99 => Portrait
#
################################
###  Section 3 :: Category   ###
################################
#
# Category : SFW, Sketchy, NSFW
# Each being toggled by a 1/0 value
#   So to get only SFW use 100
#   To get all categories use 111
#   To get Sketchy and NSFW use 011
#
################################
###    Section 4 :: Topic    ###
################################
#
# Topic : Anime/Manga, Wallpapers/General, High Resolution Images
#   To get Anime/Manga use 1
#   To get Wallpapers/General use 2
#   To get HR Images use 3
#   To get all use 123
#   To get only HR and WP use 23 and so on
#
################################
###    Section 5 :: Size     ###
################################
#
# Size: at least and Exactly width x height
#   To get at least desired Resolution use gteq
#   To get exactly desired Resolution use eqeq
#
################################
###    Section 6 :: THPP     ###
################################
#
# Thumbnails per page.
#  Accepted values are 20, 32, 40, 60
#
# For Max_Range multiples of the chosen THPP variable are recommended.
#
# For example if your THPP variable is 20 you should use 20, 40, 60, ... and so on for Max_Range
#
################################
###  Section 7 :: Location   ###
################################
#
# The download location Foldername of desired Location e.g. "Wallpapers"
#
################################
###   Section 8 :: Best of   ###
################################
#
# Best of:
#  All time = 0
#  3Months  = 3m
#  2Months  = 2m
#  1Month   = 1m
#  2Weeks   = 2w
#  1Week    = 1w
#  3Days    = 3d
#  1Day     = 1d
#
################################
###    Section 9 :: Type     ###
################################
#
# Random                    = 1
# Toplist                   = 2
# Newest                    = 3
# Search                    = 4
# Favourites                = 5
# User created collections  = 6
# Uploads from User X	    = 7
#
################################
###   Section 10 :: Order    ###
################################
#
# Date                  = date
# Amount of Views       = views
# Number of Favorites   = favs
# Relevancie            = relevance
#
################################
### Section 11 :: OrderType  ###
################################
#
# The following two Options are possible:
#  Ascending    = asc
#  Descending   = desc
#
################################
###   Section 12 :: Search   ###
################################
#
# Define your Search Query like this:
#  ./wallbase.sh Mario
#  For longer Search Queries you need to set QUERY manually
#  For Example set QUERY="Link OR Zelda OR Legend of Zelda OR OoT"
#  Accepted Operators are "AND" and "OR"
#
################################
###   Section 13 :: Login    ###
################################
#
# Due to changes in the wallbase.cc "Policy"
#  you now need to login to see NSFW Content
#  or newest Wallpapers
#  It is also needed if you want to download "your own Favorites" (Duh!)
#  or user collections
#  
#  Please provide your Username and Password below
#  to download NSFW content
#
################################
### Section 14 :: Collection ###
################################
#
# This Option is used for downloading your Favorites (You need an account for the same)
# and to download Collections created by other users or
# all Wallpapers uploaded from a Specific User
#
# Set the value to "-1" to download your Favorites in your "Home" Collection.
# 
# To download User Collections or different Favorite Collections open the desired
# Collection in your Browser and copy the following part
#  1. For your Favorites: http://wallbase.cc/user/favorites/"#number_of_the_collection"
#  2. For user created collections: http://wallbase.cc/user/collection/"#number_of_the_collection"
# You only need the number which is shown at the end of the URL
#
# To download Wallpapers uploaded by a specific user open the profile
# in your Browser and copy the following part
# http://wallbase.cc/user/profile/"#UserID"/uploads
# You only need the number between profile and uploads
#
################################
### Section 15 :: Categorize ###
################################
#
# This Option will help you keep your downloaded wallpapers ordered
# It will create subfolders for the TOPIC and CATEGORY
# so you wont have to spend much time looking for a special wallpaper
#
# Set this option to a value greater 0 to set it active
#
# For example:
#  TOPIC="2"
#  CATEGORY="100"
#  LOCATION="./wallpapers"
#
#  Then the path the folder are being downloaded to looks like this:
#  ./wallpapers/100/2/
#
################################
### Section 16 :: WP Range   ###
################################
#
# This Option will download a specified Range of Wallpapers
# 
# Set WP_RANGE_STOP to a value greater 0 to set it active
#
# For example:
#  WP_RANGE_START=10000
#  WP_RANGE_STOP=10200
#
#  This Setting will download all Wallpapers from
#  10.000 to 10.200
#  
################################
### Section 17 :: Related    ###
################################
#
# This Option will also Download all Related Wallpapers
# 
# Related = 0 --> Deactivated
# Related = 1 --> Activated
#
#

##################################
###    Needed for NSFW/New     ###
##################################
 
# See Section 13
# Enter your Username
USER=""
# Enter your password
PASS=""
 
#################################
###  End needed for NSFW/New  ###
#################################

 
#################################
###   Configuration Options   ###
#################################
 
# For accepted values see Section 6
MAX_RANGE=240
# For accepted values of resolution see Section 1
RESOLUTION=0
# For accepted values of aspect ratio see Section 2
ASPECTRATIO=0
# For accepted values of category see Section 3
CATEGORY=100
# For accepted values of topic see Section 4
TOPIC=123
# For accepted values for SIZE see Section 5
SIZE=gteq
# For accepted Thumbnails per page see Section 6
THPP=60
# For download location see Section 7
LOCATION=/location/to_your/wallpapers_folder
# Best of : see Section 8
TIME=0
# For Types see Section 9
TYPE=1
# For order Options see Section 10
ORDER=relevance
# See Section 11
ORDER_TYPE=desc
# See Section 12
QUERY="$1"
# See Section 14
COLLECTION=-1
# See Section 15
CATEGORIZE=0
# See Section 16
WP_RANGE_START=0
WP_RANGE_STOP=0
# See Section 17
Related=0

#################################
### End Configuration Options ###
#################################
 
# if wished categorize the downloads
# by their CATEGORY(nsfw,sfw,sketchy) 
# and TOPIC (manga, hd, general)
if [ $CATEGORIZE -gt 0 ]; then
	LOCATION="$LOCATION/$CATEGORY/$TOPIC"
fi

if [ ! -d $LOCATION ]; then
	mkdir -p $LOCATION
fi

cd $LOCATION


#
# logs in to the wallbase website to give the user more functionality
# requires 2 arguments:
# arg1: username
# arg2: password
#
function login {
	# checking parameters -> if not ok print error and exit script
	if [ $# -lt 2 ] || [ $1 == '' ] || [ $2 == '' ]; then
        echo "Please check the needed Options for NSFW/New Content (username and password)"
        echo ""
        echo "For further Information see Section 13"
        echo ""
        echo "Press any key to exit"
        read
        exit
    fi
    
    # everythings ok --> login
    echo "usrname=$USER&pass=$PASS&nopass_email=Type+in+your+e-mail+and+press+enter&nopass=0&1=1" > login
    wget --keep-session-cookies --save-cookies=cookies.txt --referer=http://wallbase.cc/start/ --post-file=login http://wallbase.cc/user/login
    wget --keep-session-cookies --load-cookies=cookies.txt --save-cookies=cookies.txt --referer=wallbase.cc http://wallbase.cc/user/adult_confirm/1
	rm home
} # /login

# 
# downloads Page with Thumbnails 
#
function getPage {
	# checking parameters -> if not ok print error and exit script
	if [ $# -lt 1 ]; then
		echo "getPage expects at least 1 argument"
		echo "arg1:	 parameters for the wget command"
		echo ""
		echo "press any key to exit"
		read
		exit
	fi

	# parameters ok --> get page
	wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc http://wallbase.cc/$1
} # /getPage

#
# downloads all the wallpapers from a wallpaperfile
# arg1:	the file containing the wallpapers
#
function downloadWallpapers {
 	# checking parameters -> if not ok print error and exit script
	if [ $# -lt 1 ]; then
		echo "downloadWallpapers expects at least 1 argument"
		echo "arg1:	 parameters for the wget command"
		echo ""
		echo "press any key to exit"
		read
		exit
	fi

	# parameters ok --> get page
	pagename=$1
	URLSFORIMAGES="$(cat $pagename | grep -o "http:.*" | cut -d " " -f 1 | grep wallpaper)"
	for imgURL in $URLSFORIMAGES
		do
		img="$(echo $imgURL | sed 's/.\{1\}$//')"
		number="$(echo $img | sed  's .\{29\}  ')"
		if cat downloaded.txt | grep "$number" >/dev/null
			then
				echo "File already downloaded!"
			else
				echo $number >> downloaded.txt
				wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc $img
				cat $number | egrep -o "http:.*(gif|png|jpg)" | egrep "wallbase2|imageshack.us|ovh.net" | wget --keep-session-cookies --load-cookies=cookies.txt --referer=http://wallbase.cc/wallpaper/$number -i -
				if [ $Related == 1 ]
					then
						wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc -O related.html http://wallbase.cc/related/$number
						URLSFORIMAGES_related="$(cat related.html | grep -o "http:.*" | cut -d " " -f 1 | grep wallpaper)"
						rm $number
						for imgURL in $URLSFORIMAGES_related
							do
							img="$(echo $imgURL | sed 's/.\{1\}$//')"
							number="$(echo $img | sed  's .\{29\}  ')"
							if cat downloaded.txt | grep "$number" >/dev/null
								then
									echo "File already downloaded!"
								else
									echo $number >> downloaded.txt
									wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc $img
									cat $number | egrep -o "http:.*(gif|png|jpg)" | egrep "wallbase2|imageshack.us|ovh.net" | wget --keep-session-cookies --load-cookies=cookies.txt --referer=http://wallbase.cc/wallpaper/$number -i -
									rm $number
							fi
							done
					else
						rm $number
				fi	
		fi
		done
        rm $pagename
} #/downloadWallpapers
 
 
# login only when it is required ( for example to download favourites or nsfw content... )
if [ $CATEGORY == 001 ] || [ $CATEGORY == 011 ] || [ $CATEGORY == 111 ] || [ $TYPE == 3 ] || [ $TYPE == 5 ] || [ $TYPE == 6 ] ; then
   login $USER $PASS
fi

if [ $WP_RANGE_STOP -gt 0 ]; then
	#WP RANGE
	for (( count= "$WP_RANGE_START"; count< "$WP_RANGE_STOP"+1; count=count+1 ));
	do
		if cat downloaded.txt | grep "$count" >/dev/null
			then
				echo "File already downloaded!"
			else
				echo $count >> downloaded.txt
				wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc http://wallbase.cc/wallpaper/$count
				cat $count | egrep -o "http:.*(gif|png|jpg)" | egrep "wallbase2|imageshack.us|ovh.net" | wget --keep-session-cookies --load-cookies=cookies.txt --referer=http://wallbase.cc/wallpaper/$number -i -
				rm $count
				if [ -f home ]; then
				rm home
				fi
		fi
		done

elif [ $TYPE == 1 ] ; then
    # RANDOM
    for (( count= 0; count< "$MAX_RANGE"; count=count+"$THPP" )); 
    do
		getPage random/$TOPIC/$SIZE/$RESOLUTION/$ASPECTRATIO/$CATEGORY/$THPP
		downloadWallpapers $THPP
    done
 
elif [ $TYPE == 2 ] ; then
    # TOPLIST
    for (( count= 0; count< "$MAX_RANGE"; count=count+"$THPP" ));
    do
        getPage toplist/$count/$TOPIC/$SIZE/$RESOLUTION/$ASPECTRATIO/$CATEGORY/$THPP/$TIME
        downloadWallpapers $TIME
    done

elif [ $TYPE == 3 ] ; then
    # NEWEST
    for (( count= 0; count< "$MAX_RANGE"; count=count+"$THPP" ));
    do
        getPage search/$count/$TOPIC/$SIZE/$RESOLUTION/$ASPECTRATIO/$CATEGORY/$THPP
        downloadWallpapers $THPP
    done
 
elif [ $TYPE == 4 ] ; then
    # SEARCH
    echo "query=$QUERY&board=$TOPIC&nsfw=$CATEGORY&res=$RESOLUTION&res_opt=$SIZE&aspect=$ASPECTRATIO&orderby=$ORDER&orderby_opt=$ORDER_TYPE&thpp=$THPP&section=wallpapers&1=1" > data
    wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc --post-file=data http://wallbase.cc/search/
    downloadWallpapers "index.html"
	rm data
	
    (( nsfw_sfw=(10#$CATEGORY / 100) ))
    (( nsfw_sketchy=(10#$CATEGORY % 100 / 10) ))
    (( nsfw_nsfw=(10#$CATEGORY % 10) ))

	echo "query=$QUERY&board=$TOPIC&res_opt=$SIZE&res=$RESOLUTION&aspect=$ASPECTRATIO&nsfw_sfw=$nsfw_sfw&nsfw_sketchy=$nsfw_sketchy&nsfw_nsfw=$nsfw_nsfw&thpp=$THPP&orderby=$ORDER&orderby_opt=$ORDER_TYPE&section=wallpapers&1=1" > data
	
    for (( count= $THPP; count< "$MAX_RANGE"; count=count+"$THPP" ));
    do
		wget --keep-session-cookies --load-cookies=cookies.txt --referer=wallbase.cc/search --post-file=data http://wallbase.cc/search/$count
		downloadWallpapers $count
	done
	rm data
	
elif [ $TYPE == 5 ] ; then
    # FAVOURITES
    for (( count= 0; count< "$MAX_RANGE"; count=count+"32" ));
	do
		getPage user/favorites/$COLLECTION/$count
		downloadWallpapers $count
	done
 
elif [ $TYPE == 6 ] ; then
    # USER CREATED COLLECTIONS
    for (( count= 0; count< "$MAX_RANGE"; count=count+"32" ));
    do
        getPage user/collection/$COLLECTION/1/$count
        downloadWallpapers $count
    done

elif [ $TYPE == 7 ] ; then
    # UPLOADS FROM SPECIFIC USER
    for (( count= 0; count< "$MAX_RANGE"; count=count+"32" ));
    do
        getPage user/profile/$COLLECTION/uploads/date/0/$count
        downloadWallpapers $count
    done

else
	echo error in TYPE please check Variable
fi
 
rm "1" "cookies.txt" "login"
