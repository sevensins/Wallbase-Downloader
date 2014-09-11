<h1>It seems that wallbase.cc was shutdown, as of now no one knows why (apparently the domain was paid for till 2015)
I will leave this Script online in case anyone needs it for a similar project. Also i just moved the Wallhaven.cc Stuff to another Repository and i will continue to work on that script (more actively once wallhaven actually hits beta status)
New Repo can be found here: <a href="https://github.com/macearl/Wallhaven-Downloader">Wallhaven Downloader</a>
</h1>
<p>
	<a href="http://wallbase.cc" target="_blank">wallbase.cc</a> is an excellent site to download wallpapers with an option to search through the wallpapers database which are tagged.<br />
	But with literally a huge database it takes ages to download the wallpapers to browse and download.<br />
	So if you are in a hurry just use the wallbase script to leech the wallpapers of the site and then sort them at your leisure.<br />
</p>
<p>
	<h3>This Script is written for GNU Linux, it should work under Mac OS</h3> <br />
</p>
<p>
	<strong>Changelog :</strong>
	<ul>
                <li>
                        <strong>Revision 2.8.1</strong><br />
                        Contributed by MacEarl
                        <ol>
                                <li>addded "-w" flag to grep for check if wallpaper was already downloaded.<\br>
                                    Before it was not looking for an exact match, so wallpaper-123 would be <\br>
                                    recognized as downloaded if you already downloaded wallpaper-1234</li>
                        </ol>
                </li>
		<li>
			<strong>Revision 2.8</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added Option to rename files accordingly to their tags. (experimental)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.7.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Fixed Login, everything should work again (except the related wallpaper feature)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.7</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Fixed most issues (wallbase v4 update). No need for Base64 anymore</li>
				<li>Login Feature does not work, that means no nsfw wallpapers, <br />
					Favourites or Uploads from a User (Collections with some nsfw Images <br />
					will be downloaded without the nsfw images)</li>
				<li>Download related Wallpapers Function does not work <br />
					(it seems the related Wallpaper function was removed, if you find it please let me know)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.6.2</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Fixed Download related Wallpapers Fuction (just forgot to add the base64 stuff last time)</li>
				<li>It is now possible to download a Range of Wallpapers with all related Wallpapers</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.6.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Fixed Download Function (They added base64 encrypted urls).<br />
				The Script now uses "base64" to decode those urls so make sure you got that installed ;)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.6</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added Function to download Related Wallpapers</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.5.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added some Explanation in Section 6 to clarify the combination of the THPP and Max_Range Variables</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.5</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added a Feature to download a specified Range of Wallpaper</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.4</strong><br />
			Contributed by MacEarl and HansTester
			<ol>
				<li>Fixed Login Feature (NSFW working again) (Thanks to HansTester)</li>
				<li>Implemented download uploads by specific User (Thanks to HansTester)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.3</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added Categorize Feature</li>
				<li>Source Cleanup</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.2</strong><br />
			Contributed by Axa-Ru and MacEarl
			<ol>
				<li>Source Cleanup by Axa-Ru</li>
				<li>Fixed Download Code for new System</li>
				<li>Improved the check for already downloaded Files ( much faster ;) )</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added a Feature to download "Your Favorites"</li>
				<li>Added a Feature to download "user created collections"</li>
				<li>Rewrote the check for already downloaded Files<br />
				(You now can rename or remove Wallpapers and they dont get downloaded again.<br />
				Eg. If you don't like a wallpaper, just delete it and it won''t get downloaded again.<br />
				To re-enable the download of a specific Wallpaper you need to remove the Wallpaper number from the file "downloaded.txt")</li>
			</ol>
		</li>
		<li>
			<strong>Revision 2.0</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Rewritten code for new Wallbase System</li>
			</ol>
		</li>
		<li>
			<strong>Revision 1.2.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added Login Check for new Wallpapers</li>
			</ol>
		</li>
		<li>
			<strong>Revision 1.2</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added a login feature to download NSFW content/category</li>
			</ol>
		</li>
		<li>
			<strong>Revision 1.1.1</strong><br />
			Contributed by Hab
			<ol>
				<li>Updated mkdir option with -p flag</li>
			</ol>
		</li>
		<li>
			<strong>Revision 1.1</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added a Search Function</li>
				<li>Added a check for already existing Files</li>
				<li>Fixed a bug (imageshack mirrored files)</li>
			</ol>
		</li>
		<li>
			<strong>Revision 1.0</strong><br />
			Contributed by MacEarl
			<ol>
				<li>Added the much needed fixes for NSFW category</li>
				<li>Updated the script with more options</li>
				<li>Modified the script</li>
			</ol>
		</li>
	</ul>
</p>
