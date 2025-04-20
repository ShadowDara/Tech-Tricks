<!-- written by Shadowdara -->
<!-- https://github.com/weuritz8u/read-wlan-password -->

# read-wlan-password

This is a simple trick to get the already saved / registrated wlan / wifi password from your computer

## How to do it

***Important***

- you need to have the password alrealy registered in your computer
- you need to know your SSID *(the name of the wifi / wlan, e.g. `FritzBox1`)*

You can although download the [`read_ssid.bat`](read_ssid.bat) script and run it. It will display all saved in the terminal, *but this is optional.*

**Now start**

1. open `cmd.exe` *(search it via the search bar)*

2. type in `netsh wlan show profile SSID key=clear`

3. replace `SSID` with your network name

4. scroll down to **security settings**

5. search for **Key Content**, this is the saved password

## Other

*LICENSE* : None

**would be cool to give credit when you copy and republish this but is not required.**

*Feel free to contribute via Issues (although Ideas) and forks / Pull Requests.*
