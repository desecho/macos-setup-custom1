# macOS Setup

## Install apps

Install these apps:

* [VS Code](https://code.visualstudio.com/)
* [Chrome](https://www.google.com/intl/en/chrome/browser/)
* [Docker](https://docs.docker.com/desktop/setup/install/mac-install/)
* [Homebrew](http://brew.sh/)
* [Kitty](https://sw.kovidgoyal.net/kitty/binary/)

Install JetBrains Mono Font

* [JetBrains Mono Font](https://www.jetbrains.com/lp/mono/)

Type `git` in the terminal - this will install developer tools.

## Configuration

### System preferences

Open `System Preferences`

Open `Keyboard` → `Keyboard`

* `Key repeat` - set to the fastest setting

Open `Dock & Menu Bar`

* `Minimize windows using` → set `Scale effect`
* Enable `Minimize windows into application icon`
* Enable `Automatically hide and show the Dock`

Open `Software Update`

* Enable `Automatically keep my Mac up to date`

Open `Touch ID`

* Add fingerprint

### Setup VS Code

* Launch VS Code
* Open the Command Palette [Cmd + Shift + P] and type `Install 'code' command in PATH`

### Configure Docker

* Run Docker
* Open `Preferences` → `General` → enable `Start Docker Desktop when you log in`
* Open `Preferences` → `Software updates` → enable `Always download updates`

## Setup/Configuration Part 2

Run

```bash
sudo su
USERNAME="[username]"
echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
```

Create a key with

```bash
EMAIL="[email]"
ssh-keygen -t rsa -C "$EMAIL" -N ""
cat ~/.ssh/id_rsa.pub
```

Add key on the GitHub [SSH and GPG keys settings page](https://github.com/settings/keys)

Then run

```bash
git clone git@github.com:desecho/macos-setup-custom1.git
cd macos-setup-custom1
```

To configure VS Code run

```bash
make configure-vs-code
```

To install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) run

```bash
make install-oh-my-zsh-1
make install-oh-my-zsh-2
```

To install Homebrew packages run

```bash
make install-brew-pkgs
```

To install Python packages run

```bash
make install-python-pkgs
```

To install Ansible run

```bash
python3.12 -m venv .venv
source .venv/bin/activate
pip install ansible==13.6.0
```

Run this command:

```
USERNAME=<your_username>
echo 'export PATH="/Users/$USERNAME/Library/Python/3.9/bin:$PATH"' >> ~/.zshrc
```

Then you need to configure the variables in `ansible/vars.yml`.

You might also want to change variables in `ansible/roles/main/defaults/main.yml`.

Then run

```bash
make provision
```
