Actual weather right in bash promt
==================

![Weather right in your bash promt](https://raw.github.com/goshka/bash-weather/master/screenshot.png)

Installation
------------------

* [Download](https://raw.github.com/goshka/bash-weather/master/current_weather.sh) current_weaher.sh
* Place current_weather.sh somewhere (for example, in home directory)
* Add to youe bash profile (.bash_profile, etc) `source ~/current_weather.sh` at the top
* Call current_weather function somewhere in PS1 `PS1="\u \n\$(current_weather) "`
* Reload your bash profile – `source ~/.bash_profile`

