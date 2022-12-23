
<p align="center">
<a href="https://github.com/QuarTheDev/Sup-R"><img src="https://raw.githubusercontent.com/QuarTheDev/Sup-R/main/git/images/suprlogo.png"/>
</p>

***
<center>
<h4 align="center">A beautiful GTK+ Run prompt clone built with bash.</h4>
</center>
<p align="center">
<a href="https://github.com/QuarTheDev/Sup-R"><img src="https://raw.githubusercontent.com/QuarTheDev/Sup-R/main/git/images/preview.png"/>
</p>

---

### What is Sup-'R' ?

This is a program that tries to mimic Windows' Run prompt. It's incredibly lightweight and allows you to run anything that `xdg-open` can.

Sup-R is a play on words with Win+R and Linux's Super key. Combining the two, ultimately I came up with Sup-R.

### Tested Distros

The program has been tested and works on the following Linux distros:
- Ubuntu 22.04 - 22.10 ✅ <sub><sup> -QuarTheDev, manOnWebs<sup></sub>
- Fedora 36 [~]<sub><sup> -QuarTheDev<sup></sub>

**ⓘ** If this program works on your distro but is not listed here, please fill out [this form](https://forms.gle/DeWfkc6V1LKjFmVY6) to both help Sup-'R' development and get credit for it!

### Dependencies

- <a href="https://howtoinstall.co/en/zenity" title="Tip: run 'sudo apt install zenity' to install.">`zenity`</a> (for GTK+ dialogs)
- <a href="https://howtoinstall.co/en/xdg-utils" title="Tip: run 'sudo apt install xdg-utils' to install.">`xdg-utils`</a> (for opening directories and files)
- <a href="https://howtoinstall.co/en/sed" title="Tip: run 'sudo apt install sed' to install.">`sed`</a> (for identifying distro)*

**ⓘ** `sed` will no longer be a requirement in later releases.

### Features:

- Open any file, directory, and most websites
- Browse for any file or directory (including network drives)

### ✨ **Installation** ✨

Open your terminal and enter the following command;
```
bash <(curl -sSL https://raw.githubusercontent.com/QuarTheDev/Sup-R/main/install/init.sh)
```
A command line will open, which will automatically retrieve essential items that it needs for installation, and will install Sup-'R' in ~/.run-prompt/.

### What now?

You now have a functional Run prompt in Linux! Congratulations.

If you'd like to take it a step further and make it run when you press ❖ + R, you should be able to assign the shell script to that keybind in your distro's keyboard settings.

For Ubuntu, go to:

Settings › Keyboard › View and Customize Shortcuts › Custom Shortcuts › Add Shortcut

Add the following path:
```
/bin/sh /home/$USERNAME/.run-prompt/run.sh
```
Then select the **Set Shortcut...** button, and bind it to ❖ + R, or really anything you want. Enjoy!

### Uninstall:

Close the run prompt completely, then run the following command in your terminal:
```
bash <(curl -sSL https://raw.githubusercontent.com/QuarTheDev/Sup-R/main/uninstall/init.sh)
```

### Future features
In the future, I plan to work on the following features:

- An option to hide the terminal so only the run dialog is visible
- A way to automatically assign ❖ + R to launch Sup-R
- A `yad` port for more features (see [v1cont/yad](https://github.com/v1cont/yad))

### Known Issues
There's a small list of known issues. They are currently being worked on or investigated;

- On Ubuntu, adding the script to a keybind results in only the first dialog appearing.
- On some systems, double-brackets are interpreted as a command when ran as a standalone shell script rather than curling from GitHub.
- On Fedora Workstation, all dialog boxes appear in a light mode regardless of user settings.

### Questions

> **Will there be a Mac release?**

No, I've never touched an Apple-made PC before and that probably won't change.

> **I found a small error that won't affect the overall execution of SpotX-GUI. What do I do?**

I encourage you to make an issue regardless of the severity. General syntax errors are fine, but anything else feel free to make an issue.

> Did anyone really ask these questions?

Nope

### Thanks for checking this out!
