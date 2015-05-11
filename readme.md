## ejspeak
A project to make espeak speak Japanese

espeakを日本語を喋らせるためのツールです。
日本語の説明が下にあります。

installation:

first install mecab on linux just sudo apt-get install mecab on windows or mac download and install from [mecab page](http://taku910.github.io/mecab/)


Download [this mecab dictionary file](https://www.mediafire.com/?bveu874fswy6pph)
and extract it to a known folder

then install espeak on linux just sudo apt-get install espeak on windows or mac download and install from [espeak page](http://espeak.sourceforge.net)


install lua5.1.5 on linux sudo apt-get install lua5.1 on windows and mac downlad and install LuaDist from from [LuaDist page](http://luadist.org)


edit these 2 lines at the top of ejspeak.lua to reclect the directories on your system: 
on Mac it is speak on Linux change to espeak on Windows change to espeak.exe:

pathToSpeachSynth = "~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak"

Mecab_Dictionary_path="~/Downloads/mecab-jumandic-7.0-20130310/"


running:
edit test.txt, must be utf-8 encoding.
Linux Mac and Powrshell *path to lua*/bin/lua ekspeak.lua
it will say the contets of test.txt

インストールの方法：


リナックスではsudo apt-get install mecabをして下さい。WindowsまたはMacintoshをお使いの方は[ここからダウンロードとインストールをしてください](http://taku910.github.io/mecab/)

この[mecab 辞書ファイル]をダウロードし、解凍してください。(https://www.mediafire.com/?bveu874fswy6pph)

リナックスではsudo apt-get install espeak mecabをして下さい。WindowsまたはMacintoshをお使いの方は[ここからダウンロードとインストールをしてください](http://espeak.sourceforge.net)

リナックスではsudo apt-get install lua5.1 mecabをして下さい。WindowsまたはMacintoshをお使いの方は[ここからダウンロードとインストールをしてください](http://luadist.org)


ejspeak.luaファイルの最初の行に、以下の2つの項目を追加してください。
 
1つ目　ファイル名を指定してください
Macではspeak,Linuxではespeak,Windowsではespeak.exe

2つ目 フォルダのパスをあなたのシステムに合わせて指定してください：
 
例)
pathToSpeachSynth = "~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak"

Mecab_Dictionary_path="~/Downloads/mecab-jumandic-7.0-20130310/"

実行方法：

test.txt を編集してください。(エンコーディングがUTF-8であることに注意してください)

Linux、MacやPowrshellでは *luaのフォルダー*/bin/lua ekspeak.lua

実行すると、test.txtの内容を日本語で読み上げます。
