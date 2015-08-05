-- Copyright 2014 Usmar A. Padow (amigojapan) usmpadow@gmail.com
-- BlindOE (the operation environment, should offer something like the bash shell for blind people)
--stupid lua
package.path=package.path..";/Users/amigojapan/Documents/ejspeak/ejspeak/?.lua"--add path to ejspeak
--Load settings
require "ejssettings"
--utf8 fuctions
require("utf8functions")
pathToSpeachSynth = "/Users/amigojapan/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak"
pathToMecab="mecab"--maybe on some systems should be full path to binary
Mecab_Dictionary_path="/Users/amigojapan/Downloads/mecab-jumandic-7.0-20130310/"
--parametersToSpeachSynth="-v f5 -s 80 -f speak_this.tmp"
function safe_speak(text,lang)
	print(text)
	file = io.open("speak_this.tmp","w+")
	local data=""
	data=text
	file:write(data)
	file:close()
	if lang=="jp" then
		os.execute(pathToSpeachSynth .. " " .. parametersToSpeachSynthJP..tempfile)
	else
		os.execute(pathToSpeachSynth .. " " .. parametersToSpeachSynthEN..tempfile)
	end		
end

hash_hiragana={}
hash_hiragana_doubles={}
hash_hiragana_doubles["じゃ"]="ja"
hash_hiragana_doubles["じゅ"]="ju"
hash_hiragana_doubles["じょ"]="jo"
hash_hiragana_doubles["ぢゃ"]="jia"
hash_hiragana_doubles["ぢゅ"]="jiu"
hash_hiragana_doubles["ぢょ"]="jio"
hash_hiragana_doubles["びゃ"]="bya"
hash_hiragana_doubles["びゅ"]="byu"
hash_hiragana_doubles["びょ"]="byo"
hash_hiragana_doubles["ぴゃ"]="pya"
hash_hiragana_doubles["ぴゅ"]="pyu"
hash_hiragana_doubles["ぴょ"]="pyo"
hash_hiragana_doubles["ちゃ"]="Sia"
hash_hiragana_doubles["ちゅ"]="Siu"
hash_hiragana_doubles["ちょ"]="Sio"
hash_hiragana_doubles["しゃ"]="Sia"
hash_hiragana_doubles["しゅ"]="Siu"
hash_hiragana_doubles["しょ"]="Sio"
hash_hiragana["あ"]="a"
hash_hiragana["い"]="i"
hash_hiragana["う"]="u"
hash_hiragana["え"]="e"
hash_hiragana["お"]="o"
hash_hiragana["か"]="ka"
hash_hiragana["き"]="ki"
hash_hiragana["く"]="ku"
hash_hiragana["け"]="ke"
hash_hiragana["こ"]="ko"
hash_hiragana["さ"]="sa"
hash_hiragana["し"]="shi"
hash_hiragana["す"]="su"
hash_hiragana["せ"]="se"
hash_hiragana["そ"]="so"
hash_hiragana["た"]="ta"
hash_hiragana["ち"]="chi"
hash_hiragana["つ"]="tsu"
hash_hiragana["て"]="te"
hash_hiragana["と"]="to"
hash_hiragana["な"]="na"
hash_hiragana["に"]="ni"
hash_hiragana["ぬ"]="nu"
hash_hiragana["ね"]="ne"
hash_hiragana["の"]="no"
hash_hiragana["は"]="ha"
hash_hiragana["ひ"]="hi"
hash_hiragana["ふ"]="fu"
hash_hiragana["へ"]="he"
hash_hiragana["ほ"]="ho"
hash_hiragana["ま"]="ma"
hash_hiragana["み"]="mi"
hash_hiragana["む"]="mu"
hash_hiragana["め"]="me"
hash_hiragana["も"]="mo"
hash_hiragana["や"]="ya"
hash_hiragana["ゆ"]="yu"
hash_hiragana["よ"]="yo"
hash_hiragana["ら"]="ra"
hash_hiragana["り"]="ri"
hash_hiragana["る"]="ru"
hash_hiragana["れ"]="re"
hash_hiragana["ろ"]="ro"
hash_hiragana["わ"]="wa"
hash_hiragana["を"]="o"
hash_hiragana["ん"]="n"
hash_hiragana["が"]="ga"
hash_hiragana["ぎ"]="gi"
hash_hiragana["ぐ"]="gu"
hash_hiragana["げ"]="ge"
hash_hiragana["ご"]="go"
hash_hiragana["ば"]="ba"
hash_hiragana["び"]="bi"
hash_hiragana["ぶ"]="bu"
hash_hiragana["べ"]="be"
hash_hiragana["ぼ"]="bo"
hash_hiragana["だ"]="da"
hash_hiragana["ぢ"]="di"
hash_hiragana["づ"]="du"
hash_hiragana["で"]="de"
hash_hiragana["ど"]="do"
hash_hiragana["。"]="."
hash_hiragana["、"]=""
--incomplete
hash_phonems={}
hash_phonems_doubles={}
hash_phonems_doubles["きゃ"]="kja"
hash_phonems_doubles["きゅ"]="kju"
hash_phonems_doubles["きょ"]="kjo"
hash_phonems_doubles["しゃ"]="Sia"
hash_phonems_doubles["しゅ"]="Siu"
hash_phonems_doubles["しょ"]="Sio"
hash_phonems_doubles["ちゃ"]="tSia"
hash_phonems_doubles["ちゅ"]="tSiu"
hash_phonems_doubles["ちょ"]="tSio"
hash_phonems_doubles["にゃ"]="nia"
hash_phonems_doubles["にゅ"]="niu"
hash_phonems_doubles["にょ"]="nio"
hash_phonems_doubles["ひゃ"]="hia"
hash_phonems_doubles["ひゅ"]="hiu"
hash_phonems_doubles["ひょ"]="hio"
hash_phonems_doubles["みゃ"]="mia"
hash_phonems_doubles["みゅ"]="miu"
hash_phonems_doubles["みょ"]="mio"
hash_phonems_doubles["りゃ"]="*ia"
hash_phonems_doubles["りゅ"]="*iu"
hash_phonems_doubles["りょ"]="*io"
hash_phonems_doubles["ぎゃ"]="gja"
hash_phonems_doubles["ぎゅ"]="gju"
hash_phonems_doubles["ぎょ"]="gjo"
hash_phonems_doubles["じゃ"]="dZja"
hash_phonems_doubles["じゅ"]="dZju"
hash_phonems_doubles["じょ"]="dZjo"
hash_phonems_doubles["ぢゃ"]="dZja"
hash_phonems_doubles["ぢゅ"]="dZju"
hash_phonems_doubles["ぢょ"]="dZjo"
hash_phonems_doubles["びゃ"]="bja"
hash_phonems_doubles["びゅ"]="bju"
hash_phonems_doubles["びょ"]="bjo"
hash_phonems_doubles["ぴゃ"]="pja"
hash_phonems_doubles["ぴゅ"]="pju"
hash_phonems_doubles["ぴょ"]="pjo"
hash_phonems["あ"]="a"
hash_phonems["い"]="i"
hash_phonems["う"]="u"
hash_phonems["え"]="e"
hash_phonems["お"]="o"
hash_phonems["か"]="ka"
hash_phonems["き"]="ki"
hash_phonems["く"]="ku"
hash_phonems["け"]="ke"
hash_phonems["こ"]="ko"
hash_phonems["さ"]="sa"
hash_phonems["し"]="Si"
hash_phonems["す"]="su"
hash_phonems["せ"]="se"
hash_phonems["そ"]="so"
hash_phonems["た"]="ta"
hash_phonems["ち"]="tSi"
hash_phonems["つ"]="tsu"
hash_phonems["て"]="te"
hash_phonems["と"]="to"
hash_phonems["な"]="na"
hash_phonems["に"]="ni"
hash_phonems["ぬ"]="nu"
hash_phonems["ね"]="ne"
hash_phonems["の"]="no"
hash_phonems["は"]="ha"
hash_phonems["ひ"]="hi"
hash_phonems["ふ"]="fu"
hash_phonems["へ"]="he"
hash_phonems["ほ"]="ho"
hash_phonems["ま"]="ma"
hash_phonems["み"]="mi"
hash_phonems["む"]="mu"
hash_phonems["め"]="me"
hash_phonems["も"]="mo"
hash_phonems["や"]="ja"
hash_phonems["ゆ"]="ju"
hash_phonems["よ"]="jo"
hash_phonems["ら"]="*a"
hash_phonems["り"]="*i"
hash_phonems["る"]="*u"
hash_phonems["れ"]="*e"
hash_phonems["ろ"]="*o"
hash_phonems["わ"]="wa"
hash_phonems["を"]="o"
hash_phonems["ん"]="n"
hash_phonems["が"]="ga"
hash_phonems["ぎ"]="gi"
hash_phonems["ぐ"]="gu"
hash_phonems["げ"]="ge"
hash_phonems["ご"]="go"
hash_phonems["ば"]="ba"
hash_phonems["び"]="bi"
hash_phonems["ぶ"]="bu"
hash_phonems["べ"]="be"
hash_phonems["ぼ"]="bo"
hash_phonems["ぱ"]="pa"
hash_phonems["ぴ"]="pi"
hash_phonems["ぷ"]="pu"
hash_phonems["ぺ"]="pe"
hash_phonems["ぽ"]="po"
hash_phonems["だ"]="da"
hash_phonems["ぢ"]="dZi"
hash_phonems["づ"]="zu"
hash_phonems["で"]="de"
hash_phonems["ど"]="do"
hash_phonems["ざ"]="za"
hash_phonems["じ"]="dZi"
hash_phonems["ず"]="zu"
hash_phonems["ぜ"]="ze"
hash_phonems["ぞ"]="zo"
hash_phonems_doubles["キャ"]="kja"
hash_phonems_doubles["キュ"]="kju"
hash_phonems_doubles["キョ"]="kjo"
hash_phonems_doubles["シャ"]="Sia"
hash_phonems_doubles["シュ"]="Siu"
hash_phonems_doubles["ショ"]="Sio"
hash_phonems_doubles["チャ"]="tSia"
hash_phonems_doubles["チュ"]="tSiu"
hash_phonems_doubles["チョ"]="tSio"
hash_phonems_doubles["ニャ"]="nia"
hash_phonems_doubles["ニュ"]="niu"
hash_phonems_doubles["ニョ"]="nio"
hash_phonems_doubles["ヒャ"]="hia"
hash_phonems_doubles["ヒュ"]="hiu"
hash_phonems_doubles["ヒョ"]="hio"
hash_phonems_doubles["ミャ"]="mia"
hash_phonems_doubles["ミュ"]="miu"
hash_phonems_doubles["ミョ"]="mio"
hash_phonems_doubles["リャ"]="*ia"
hash_phonems_doubles["リュ"]="*iu"
hash_phonems_doubles["リョ"]="*io"
hash_phonems_doubles["ギャ"]="gja"
hash_phonems_doubles["ギュ"]="gju"
hash_phonems_doubles["ギョ"]="gjo"
hash_phonems_doubles["ジャ"]="dZja"
hash_phonems_doubles["ジュ"]="dZju"
hash_phonems_doubles["ジョ"]="dZjo"
hash_phonems_doubles["ヂャ"]="dZja"
hash_phonems_doubles["ヂュ"]="dZju"
hash_phonems_doubles["ヂョ"]="dZjo"
hash_phonems_doubles["ビャ"]="bja"
hash_phonems_doubles["ビュ"]="bju"
hash_phonems_doubles["ビョ"]="bjo"
hash_phonems_doubles["ピャ"]="pja"
hash_phonems_doubles["ピュ"]="pju"
hash_phonems_doubles["ピョ"]="pjo"
hash_phonems["ア"]="a"
hash_phonems["イ"]="i"
hash_phonems["ウ"]="u"
hash_phonems["エ"]="e"
hash_phonems["オ"]="o"
hash_phonems["カ"]="ka"
hash_phonems["キ"]="ki"
hash_phonems["ク"]="ku"
hash_phonems["ケ"]="ke"
hash_phonems["コ"]="ko"
hash_phonems["サ"]="sa"
hash_phonems["シ"]="Si"
hash_phonems["ス"]="su"
hash_phonems["セ"]="se"
hash_phonems["ソ"]="so"
hash_phonems["タ"]="ta"
hash_phonems["チ"]="tSi"
hash_phonems["ツ"]="tsu"
hash_phonems["テ"]="te"
hash_phonems["ト"]="to"
hash_phonems["ナ"]="na"
hash_phonems["ニ"]="ni"
hash_phonems["ヌ"]="nu"
hash_phonems["ネ"]="ne"
hash_phonems["ノ"]="no"
hash_phonems["ハ"]="ha"
hash_phonems["ヒ"]="hi"
hash_phonems["フ"]="fu"
hash_phonems["ヘ"]="he"
hash_phonems["ホ"]="ho"
hash_phonems["マ"]="ma"
hash_phonems["ミ"]="mi"
hash_phonems["ム"]="mu"
hash_phonems["メ"]="me"
hash_phonems["モ"]="mo"
hash_phonems["ヤ"]="ja"
hash_phonems["ユ"]="ju"
hash_phonems["ヨ"]="jo"
hash_phonems["ラ"]="*a"
hash_phonems["リ"]="*i"
hash_phonems["ル"]="*u"
hash_phonems["レ"]="*e"
hash_phonems["ロ"]="*o"
hash_phonems["ワ"]="wa"
hash_phonems["ヲ"]="o"
hash_phonems["ン"]="n"
hash_phonems["ガ"]="ga"
hash_phonems["ギ"]="gi"
hash_phonems["グ"]="gu"
hash_phonems["ゲ"]="ge"
hash_phonems["ゴ"]="go"
hash_phonems["バ"]="ba"
hash_phonems["ビ"]="bi"
hash_phonems["ブ"]="bu"
hash_phonems["ベ"]="be"
hash_phonems["ボ"]="bo"
hash_phonems["パ"]="pa"
hash_phonems["ピ"]="pi"
hash_phonems["プ"]="pu"
hash_phonems["ペ"]="pe"
hash_phonems["ポ"]="po"
hash_phonems["ダ"]="da"
hash_phonems["ヂ"]="dZi"
hash_phonems["ヅ"]="zu"
hash_phonems["デ"]="de"
hash_phonems["ド"]="do"
hash_phonems["ザ"]="za"
hash_phonems["ジ"]="dZi"
hash_phonems["ズ"]="zu"
hash_phonems["ゼ"]="ze"
hash_phonems["ゾ"]="zo"
hash_phonems["ー"]=":"
hash_phonems["。"]="]].[["
hash_phonems["、"]="]],[["--fix later(done)
hash_phonems["（"]=""
hash_phonems["）"]=""
hash_phonems["「"]=""
hash_phonems["」"]=""
hash_phonems["　"]=" "
hash_phonems["0"]="ze*o"
hash_phonems["1"]="itSi"
hash_phonems["2"]="ni"
hash_phonems["3"]="san"
hash_phonems["4"]="jon"
hash_phonems["5"]="go"
hash_phonems["6"]="*oku"
hash_phonems["7"]="nana"
hash_phonems["8"]="hatSi"
hash_phonems["9"]="ku"
hash_phonems["０"]="ze*o"
hash_phonems["１"]="itSi"
hash_phonems["２"]="ni"
hash_phonems["３"]="san"
hash_phonems["４"]="jon"
hash_phonems["５"]="go"
hash_phonems["６"]="*oku"
hash_phonems["７"]="nana"
hash_phonems["８"]="hatSi"
hash_phonems["９"]="ku"
hash_phonems["零"]="ze*o"
hash_phonems["一"]="itSi"
hash_phonems["二"]="ni"
hash_phonems["三"]="san"
hash_phonems["四"]="jon"
hash_phonems["五"]="go"
hash_phonems["六"]="*oku"
hash_phonems["七"]="nana"
hash_phonems["八"]="hatSi"
hash_phonems["九"]="ku"

---add Katakana(done)
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end


str = os.capture(pathToMecab.. " -d " .. Mecab_Dictionary_path .. " " .. arg[1].." 2>/dev/null",true)--arg[1] is the input filename , I rederect stderr to null to hide a small bug
arr = split_by_char(str,"\r\n")
hiragana=""
special_case={}
print(str)
ibo=false
for key, value in ipairs(arr) do
	print("value:"..value)
	if value=="EOS" then
		ibo=true
	end	
	if not ibo then
		arr2 = split_by_char(value,",")
		if not (arr2[6]==nil) then 
			if arr2[6]=="は" and arr2[2]=="副助詞" then
				--hiragana=hiragana.."wa" 
				--special_case[string.len(hiragana)/3+1]=true--adjust for double bytes
				special_case[utf8len(hiragana)+1]=true
			elseif arr2[6]=="へ" and arr2[2]=="格助詞" then
				--special_case[string.len(hiragana)/3+1]=true--adjust for three bytes
				--print((string.len(hiragana))/3+1)
				special_case[utf8len(hiragana)+1]=true
			end
			if arr2[6]=="*" then --HANDLE OTHER SPECIAL CASES(THIS MAY BE SOMEWHAT BUGGY)(I think I fixed the bugs, test with full hiragana***)
				for i=1,utf8len(arr2[1])-3,1 do
					hiragana=hiragana..get_jp_char(arr2[1],i)			
				end
				if not contains_CJK(get_jp_char(arr2[1],1)) then
					hiragana=hiragana.." "
				end
				print(arr2[1])
			else
					hiragana=hiragana..arr2[6]
					--if get_jp_char(arr2[1],1)=="ぢ" and get_jp_char(arr2[1],2)=="づ" then
				--	hiragana=hiragana.."づ"
				--end
				--if get_jp_char(arr2[1],2)=="ぴ" then
				--	hiragana=hiragana.."ぴ"
				--end
				--if get_jp_char(arr2[1],2)=="ぺ" then
				--	hiragana=hiragana.."ぺ"
				--end			
				--if (get_jp_char(arr2[1],2)=="ゃ" or get_jp_char(arr2[1],2)=="ゅ" or get_jp_char(arr2[1],2)=="ょ") then
				--	hiragana=hiragana..get_jp_char(arr2[1],2)
				--end
				--else
				--	hiragana=hiragana..arr2[6]
			end
		end
	end
end
print("hiragana:"..hiragana)
--print(hiragana)
romaji=""
i=1
repeat
--for i = 1, string.len(hiragana) do
   	jp_char=get_jp_char(hiragana,i)--warning, using this string with a string that contains non-jp chars will cause mojibakeend
	--print(jp_char)
	if jp_char=="は" and special_case[i] then
		r="wa"
	elseif jp_char=="へ" and special_case[i] then
		--print(special_case[i])
		r="e"
	else
		r=hash_hiragana[jp_char]
		if 	jp_char=="ぎ" or jp_char=="じ" or jp_char=="ぢ" or jp_char=="び" or jp_char=="ぴ" then
			--print(jp_char.."i"..i.."len:"..utf8len(hiragana))
			jp_char=jp_char..get_jp_char(hiragana,i+1)
		end
		d=hash_hiragana_doubles[jp_char]
		if d then
			r=d
			i=i+1--increment the counter to go infront of the double characters
		end
	end
	if not(r==nil) then
		romaji=romaji..r
	else
		romaji=romaji..jp_char
	end
	i=i+1	
until  i > utf8len(hiragana)
--print(romaji)
phonetic=""
i=1
english=""
japanese="[["
function small_tsu()
	while true do
		start, ending =string.find(phonetic, "っ")
		--print(start)
		if not start then
			break
		end
		--put : after the consonant after the small tsu
		h1=string.sub(phonetic, 1, start-1)
		h2=string.sub(phonetic, ending+1,ending+1)..":"..string.sub(phonetic, ending+2)
		phonetic=h1..h2
	end
end

repeat
--for i = 1, string.len(hiragana) do
   	jp_char=get_jp_char(hiragana,i)--warning, using this string with a string that contains non-jp chars will cause mojibakeend
	
	--print(jp_char)
	--print(special_case[i])
	if jp_char=="は" and special_case[i] then
		--print("hot wa")
		r="wa"
	elseif jp_char=="へ" and special_case[i] then
		--print(special_case[i])
		r="e"
	else
		r=hash_phonems[jp_char]
		if 	jp_char=="ぎ" or jp_char=="じ" or jp_char=="ぢ" or jp_char=="び" or jp_char=="ぴ" or jp_char=="ち"  or jp_char=="し" or jp_char=="き" then
			
			jp_char=jp_char..get_jp_char(hiragana,i+1)
			--print("here:"..jp_char.."|")
		end
		d=hash_phonems_doubles[jp_char]
		if d then
			r=d
			i=i+1--increment the counter to go infront of the double characters
		end
	end
	if not(r==nil) then
		--print(r)
		phonetic=phonetic..r
	else
		if not (contains_CJK(jp_char)) then
			if not (phonetic==nil) then
				small_tsu()
				japanese=japanese..phonetic.."]]"
				safe_speak(japanese,"jp")
				japanese="[["
				phonetic=""
			end
			repeat
				english=english..jp_char
				i=i+1
				jp_char=get_jp_char(hiragana,i)
				--print(hiragana)
			until contains_CJK(jp_char) or contains_CJK(jp_char)==nil--this brakes if there is a japanese character or the last characters are english 
			--print("english:"..english)
			safe_speak(english,"en")
			english=""
			i=i-1
		else
			phonetic=phonetic..jp_char
		end
	end
	i=i+1	
until  i > utf8len(hiragana)
--Implement the sound of the small tsu
small_tsu()
if not (phonetic==nil) then
	japanese=japanese..phonetic.."]]"
	safe_speak(japanese,"jp")
	japanese="[["
end
--phonetic=string.gsub(phonetic, "っ", "")
--protect against shell injection(done by using temp file)
--vdamewood: amigojapan: May you could try adding a sound called a 'glottal stop' after those vowels to see if that fixes it.
--￼￼￼￼￼￼? ʔ glt stp 0294 LATIN LETTER GLOTTAL STOP
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[?i]]"
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i?]]"
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i?]]"
--^[[APadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i:?]]"
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -v es-mx -s 40 "[[i?]]"
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -v es-mx -s 40 "[[i]]"
--^[[APadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -v es-mx -s 40 "[[i?]]"
--PadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i:?]]"
--^[[APadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i?]]"
--^[[A^[[APadowUsmar-no-MacBook-Air:ejspeak amig~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i]]"
--^[[APadowUsmar-no-MacBook-Air:ejspeak amigojapan$ ~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak -s 40 "[[i?]]"
--amigojapan: vdamewood: I tried adding the “?” after the last vowel,  but to be honest I cant hear any difference (I did hear a difference in single sillables like [[i]] vs [[i?]]        but as a hole I dont think the problem is that ti is too long, I think the problem is that the tone goes up instead of staying lfat the way it would in Japanese