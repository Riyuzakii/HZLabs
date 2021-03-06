#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [

	{sep => "QUICK START"},
    
    #          COMMAND                                     LABEL                ICON
    {item => ["exo-open --launch TerminalEmulator",       "Open Terminal",         "utilities-terminal"]},
    
    {beg  => ["Launch Apps", "launch"]},
    #          NAME            LABEL                ICON
    {cat => ["utility",     "Accessories", "applications-utilities"]},
    {cat => ["development", "Development", "applications-development"]},
    {cat => ["education",   "Education",   "applications-science"]},
    {cat => ["game",        "Games",       "applications-games"]},
    {cat => ["graphics",    "Graphics",    "applications-graphics"]},
    {cat => ["audiovideo",  "Multimedia",  "applications-multimedia"]},
    {cat => ["network",     "Network",     "applications-internet"]},
    {cat => ["office",      "Office",      "applications-office"]},
    {cat => ["other",       "Other",       "applications-other"]},
    {cat => ["settings",    "Settings",    "applications-accessories"]},
    {cat => ["system",      "System",      "applications-system"]},
    {end  => undef},
    
    {sep  => undef},
    
    {pipe => ["python2 ~/.config/openbox/pipe-menu/ob-randr.py", "Monitor Settings", "system-config-display"]},
    {obgenmenu => ["Advanced Settings", "applications-engineering"]},
    
    # SESSIONS
    {sep => "SESSIONS"},
    
    # Pipe Menu
    {pipe => ["~/.config/openbox/pipe-menu/date-menu.sh", "Show Date", "date"]},
    #{pipe => ["bash -c '~/.config/openbox/pipe-menu/battery.sh'", "Battery Info", "battery"]},
    {pipe => ["python2 ~/.config/openbox/pipe-menu/show_ob_keybindings.py", "Show Keybindings", "keyboard"]},
    {pipe => ["perl ~/.config/openbox/pipe-menu/ob-sysinfo.pl", "System Info", "dialog-information"]},
    #{pipe => ["python2 ~/.config/openbox/pipe-menu/ob-cpufreq.py", "CPU - GPU Info", "cpu"]},
    
    {sep  => undef},
    
    # Screenshot Menu
    {beg  => ["Screenshot", "deepin-screenshot"]},
    {item => ["scrot -e 'mv $f ~/Pictures/'", "Shot now", "deepin-screenshot"]},
    {item => ["bash -c '~/.scripts/shotify'", "Shot in 5s with notify", "deepin-screenshot"]},
    {item => ["scrot -s -e 'mv $f ~/Pictures/'", "Select window or draw", "deepin-screenshot"]},
    {end  => undef},
    
    # Lockscreen Menu
    {item => ["slimlock", "Lockscreen", "system-lock-screen"]},
    
    # Logout Menu    
    {exit => ["Exit Openbox", "application-exit"]},

    ## This uses the "oblogout" menu
    # {item => ["oblogout", "Exit", "application-exit"]},
]
