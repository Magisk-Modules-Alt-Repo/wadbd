# Wireless ADB Controller  
A simple Magisk module to control wireless ADB daemon. It allows you to start wireless ADBD in current session, start automatically on boot, set custom ports, and manage ADB keys (backup/restore/import). It supports KernelSU WebUI as well.

![GitHub all releases](https://img.shields.io/github/downloads/Magisk-Modules-Alt-Repo/wadbd/total?style=for-the-badge)

![Last Updated](https://img.shields.io/badge/Updated-2024--12--27-blue)

## How to Use  
1. Install the module via **Magisk**, **KernelSU**, or **Apatch**.  
2. Reboot your device.  
3. Open **Termux** or a terminal emulator and run the following command as `su`.

---
## Commands  
```

wadbd on <port>              - Enable wireless ADB on the specified port.

wadbd off                   - Disable wireless ADB.

wadbd status                - Show the status of wireless ADB.

wadbd enable-on-boot <port> - Enable wireless ADB on boot with the specified port.

wadbd disable-on-boot       - Disable wireless ADB on boot.

wadbd --import-key <path>   - Import an adbkey.pub file to authorize ADB without prompt.

wadbd --backup <path>         - Backup authorized adb_keys

wadbd --restore <path>        -restore backed up adb_keys

wadbd --clear-keys            - Revokes all authorized Keys
```
- Note: If you don't specify a port, it will use the default port 5555.
# WebUI

- You Can Also Control This Module Using Kernel Su or Apatch WebUI

<div style="display: flex; justify-content: center; align-items: center;">
  <img src="https://github.com/rhythmcache/wireless-adb-controller/raw/main/e1.png" alt="WebUI Screenshot" width="45%">
  <img src="https://github.com/rhythmcache/wireless-adb-controller/raw/main/e2.png" alt="KernelSU Screenshot" width="45%">
</div>


# Terminal Commands

### `wadbd on [port] `
- Enables Wireless ADB on specified port and displays the necessary commands to connect to your phone wirelessly.
- default port is 5555 if not specified while running the command

### `wadbd status`  
- Displays whether Wireless ADB is currently running or not.

### `wadbd off`  
- Disables Wireless ADB.

### `wadbd enable-on-boot [port]`
- enables wireless adbd automatically on boot on specified port
(default 5555 if not specified)

### `wadbd disable-on-boot`
- Disables wirelss adbd on boot



# Experimental 👩‍🔬
⚠️ These Features/Commands are Experimental and are not guaranteed to work on all devices. Use them at your own risk. These features are not available in WebUI and will `never` be added.

#### `wadbd --import-keys <path-to-adbkey.pub>`
- For some reason , If your device is not prompting to authorize ADB, you can use this command to directly import keys.
- The adbkey.pub file is typically located at:
  - Windows: `C:\Users\<username>\.android\adbkey.pub`
  - Linux: `/home/<username>/.android/adbkey.pub`
  - Termux: `/data/data/com.termux/files/home/.android/adbkey.pub`

#### `wadbd --backup <path>` / `wadbd --restore <path>`
- Used to backup or restore authorized keys

#### `wadbd --clear-keys`
- Revokes all authorized keys
---
## License

    This Script Is Free Software. You can redistribute it
    and/or modify it under the terms of the GNU General Public
    License as published by the Free SoftwareFoundation,either version 3 of the License , or (at your option) 
    any later version.

    This script is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this script.  If not, see <http://www.gnu.org/licenses/>.
    
[![Telegram](https://img.shields.io/badge/Telegram-blue?style=flat-square&logo=telegram)](https://t.me/rhythmcache)
