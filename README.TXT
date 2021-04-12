
=== The Pandora. P2P Social Network

1. OVERVIEW

Pandora is a free peer-to-peer (P2P) desktop (not web) application,
designed for ordinary people, has a graphical user interface (GUI)
and works "out of the box".

It affords functions of instant messenger, audio and video chat,
encyclopedia article and file exchange, trading platform, payment
system, distributed development system and vote system. Pandora
has its own binary protocol, uses a cryptography and trust network.

2. SYSTEM REQUIREMENTS

Mandatory:
- Linux, Windows or Mac OS
- Ruby1.9 or higher script engine
- GTK2 graphical library
- SQLite3 database library
- OpenSSL crypto library
Optional:
- GStreamer0.1 media library


3. PREPARATION OF MACOSX

Run these commands in terminal:

  xcode-select --install
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew doctor
  brew install ruby
  brew install rbenv
  brew install ruby-build
  brew install openssl
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile
  rbenv install -l
  RUBY_CONFIGURE_OPTS=--with-openssl-dir=`brew --prefix openssl` rbenv install 2.2.2
  brew install gtk+
  brew install sqlite3
  brew install Caskroom/cask/xquartz
  brew install adwaita-icon-theme
  sudo gem update --system
  rvm implode
  \curl -sSL https://get.rvm.io | bash -s stable --ruby --autolibs=enable
  rvm reload

Restart your computer. Run also:

  rvm install 2.2.2
  rvm use 2.2.2 --default
  sudo gem install sqlite3
  sudo gem install gtk2

Download and unpack master.zip (see the next chapter), run pandora.sh.

4. CONSOLE USER INTERFACE

By default Pandora launches Gtk2 graphical user interface,
but you can force it to launch Ncurses console user interface:

  ./pandora.sh -c   -- this is Curses/Ncurses mode
  ./pandora.sh -s   -- run via screen or return to session
  ./util/pancurse.sh      -- run or return screen session
  ./util/pancurse.sh -d   -- run via screen like a daemon

Console interface is useful on Raspberri Pi, dedicated or
virtual servers, when you need to have day-and-night node.

Attention: CUI has pared-down functionality in comparison with GUI.
It is recommended to setup all preferences in GUI mode on desktop
computer, then move ./base/pandora.sqlite to remote computer.