## ejspeak
A project to make espeak speak Japanese

espeakを日本語を喋らせるためのツールです。

installation:

first install mecab on linux just sudo apt-get install mecab on windows or mac download and install from [mecab page](http://taku910.github.io/mecab/)


use this mecab dictionary file [this mecab dictionary file](https://www.mediafire.com/?bveu874fswy6pph)


then install espeak on linux just sudo apt-get install espeak on windows or mac download and install from [espeak page](http://espeak.sourceforge.net)


install lua5.1.5 on linux sudo apt-get install espeak on windows and mac downlad and install LuaDist from from [LuaDist page](http://luadist.org)


edit these 2 lines at the top of ejspeak.lua to reclect the directories on your system: 
on Mac it is speak on Linux change to espeak on Windows change to espeak.exe:

pathToSpeachSynth = "~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak"

Mecab_Dictionary_path="~/Downloads/mecab-jumandic-7.0-20130310/"


running:
edit test.txt, must be utf-8 encoding.
Linux Mac and Powrshell *path to lua*/bin/lua ekspeak.lua
it will say the contets of test.txt