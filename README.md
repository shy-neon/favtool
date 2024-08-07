# Favtool

Since macOS Big Sur, Apple gave users a certain degree of customisation on Safari's homescreen. However, it is not unusual to see Safari not rendering favicon correctly, leaving ugly grey squares. This issue is well known, and related with the fact that sites have to provide special "Apple Touch Icon" images (which is the equivalent of a generic favicon), compliant to some Apple guidelines. Favtool allows you to quickly and easily customize favicons, by just dropping in your custom icons. 

☕️ Bear in mind that Favtool is a free-to-use software, developed by a single person, who spent months trobleshooting lines of code, trying to provide regular updates and listening to user hints. So, enjoy  Favtool, leave a nice comment, and if you can, contribute with a small donation! 

You can contribute by clicking the "donate" button on the app 🙏🏻 



![main](https://github.com/shy-neon/favtool/blob/main/images/main.gif)



## Getting Started

Get the source, and double click on the `.dmg` file. Here you will find the application itself or the pre compiled (recommended) last release. Please, if a pre-release is available, download it only if you are committed to contribute, those are not stable and for beta testing only.

### Apple can’t check app for malicious software
Whenever Favtool is run for the first time, the message ***"Apple can’t check app for malicious software"*** might be shown. In order to run favtool ctrl-click the app and select *"Open"*.

<img src="https://github.com/shy-neon/favtool/blob/main/images/alert.png" width="274"  />

Of course Favtool does not contain any malicious software, this is just a very bad way for Apple to commit a developer into buying a 99$/y developer subscription, no words.

### File system permission

Favtool needs to access the folder containing the icons and a database containg your favourite list. Therefore, during the first run, Favtool will ask you to access the folder located in  `~/Library/Safari/Touch Icons Cache`. Select *"Grant Access"* a finder panel will show up, select "Authorize".: this will allow favtool to read/write to the folder in which the icons are located. Once the access is granted the list on the sidebar will be populated by your favourite sites.

💡If you get the message "table not ready" close safari, and reopen it with no tabs open other than the "home page" ( topsites:// ), then click on "try again"

⚠️ After the first icon is changed, favtool locks the folder located in: `~/Library/Safari/Touch Icons Cache`. This prevents Safari from automatically restoring the default icons. If you want to unlock this folder, click on *"File"* in the menu bar and then *"Unlock Images Folder"* (or use the ⌘U shortcut. However, make sure to keep Safari closed as long as the folder is unlocked, otherwise icons may be restored).

## How to use

Congratulations! You are now ready to customize your Icons.

💡 *Your site list might contain many sites, even sites you don't have in your home page. Safari saves data even for sites you've visited once, to clean it up check the  *[Manage site list](#Manage-site-list)* below this will make your life easier. However, before doing it, close safari and reopen it with no tabs open other than the "home page" ( topsites:// )*

💡*For suggestions about where to find custom icons or how to create icons check the section  [icon suggestion](#Icons-suggestions) below.*

<img src="https://github.com/shy-neon/favtool/blob/main/images/guide.png" width="474"  />

### Change icons

It is as simple as selecting the corresponding site and dropping the icon you prefer. You can now customize another icon or restart Safari to apply changes. Icons have to be `.png` files, about `180`x`180`px (icons under this size may not work), they can be transparent.

### Manage site list

The site list might be very long and you might see sites twice or sites you don't even know. This is because Safari saves datas and touch icons even of sites you've visited once. To clean Safari's database and the list you can click on the round arrow above the sidebar. Wait a few seconds and restart Favtool. The list will clean the site list on the sidebar. 

If you want to delete a single site, you can select it and click the "trash" button above.

### Icon style

Other than the icon itself, you can choose the style used by safari to render the icon itself. The choices are "Big, transparent", "Small, glass". "Big glass"

<img src="https://github.com/shy-neon/favtool/blob/main/images/styles.png" width="474"  />

1. "Big, transparent" indicated for solid or gradient background icons
2. "Small, glass" applies for transparent background icons, if applied on a solid background image, a padding around the image will appear.
3. "Big, glass" usually applies for transparent background icons, but the icon will result bigger it is less common than the small variant, but still is provided by safari and is therefore in this list.

Other styles are apparently used by safari, but strangely they seem to have no effect on the icon, the site using those styles will display the generic "select" prompt.

### Restore default icons

This option allows you to delete any change you've made to icons. To do this, go to *Edit* > *Reset default icons* or use the keyboard shortcut ⌘⌥D . The whole `Touch Icons Cache` folder will be deleted, and recreated as soon as Safari is opened. Safari will reload all the icons from scratch. This option *might* fix missing icons. The Touch Icons folder will be automatically unlocked.

### Where to find icons suggestions

You can download icons for free from many sites, these are the ones I often use:

- [https://icons8.com](https://icons8.com/) - A very big library with many styles
- [https://macosicons.com](https://macosicons.com/) - Many styles with more of an app /program focus
- [https://www.macosicongallery.com](https://www.macosicongallery.com/) - Original Mac icons

Icons have to be `.png` files, about `144`x`144p` (Safari seems to be quite flexible, however, make sure to not overshoot `256`x`256p`), they can be transparent.

You can even make them by yourself! Get started by taking a look at the [Apple User Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/macos/icons-and-images/app-icon/).

