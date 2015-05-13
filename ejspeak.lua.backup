-- Copyright 2014 Usmar A. Padow (amigojapan) usmpadow@gmail.com
-- BlindOE (the operation environment, should offer something like the bash shell for blind people)
--Load settings
require "settings"
--pathToSpeachSynth = "~/Downloads/espeak-1.45.04-OSX/espeak-1.45.04/speak"
--Mecab_Dictionary_path="~/Downloads/mecab-jumandic-7.0-20130310/"
--parametersToSpeachSynth="-v f5 -s 80 -f speak_this.tmp"

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
hash_hiragana_doubles["ちゃ"]="Si:a"
hash_hiragana_doubles["ちゅ"]="Si:u"
hash_hiragana_doubles["ちょ"]="Si:o"
hash_hiragana_doubles["しゃ"]="Si:a"
hash_hiragana_doubles["しゅ"]="Si:u"
hash_hiragana_doubles["しょ"]="Si:o"
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
hash_phonems_doubles["ちゃ"]="tSia"
hash_phonems_doubles["ちゅ"]="tSiu"
hash_phonems_doubles["ちょ"]="tSio"
hash_phonems_doubles["しゃ"]="Si:a"
hash_phonems_doubles["しゅ"]="Si:u"
hash_phonems_doubles["しょ"]="Si:o"
hash_phonems_doubles["きゃ"]="kja"
hash_phonems_doubles["きゃ"]="kju"
hash_phonems_doubles["きょ"]="kjo"
hash_phonems["あ"]="a"
hash_phonems["い"]="i:"
hash_phonems["う"]="u"
hash_phonems["え"]="e"
hash_phonems["お"]="o"
hash_phonems["か"]="ka"
hash_phonems["き"]="ki:"
hash_phonems["く"]="ku"
hash_phonems["け"]="ke"
hash_phonems["こ"]="ko"
hash_phonems["さ"]="sa"
hash_phonems["し"]="Si:"
hash_phonems["す"]="su"
hash_phonems["せ"]="se"
hash_phonems["そ"]="so"
hash_phonems["た"]="ta"
hash_phonems["ち"]="tSi:"
hash_phonems["つ"]="tsu"
hash_phonems["て"]="te"
hash_phonems["と"]="to"
hash_phonems["な"]="na"
hash_phonems["に"]="ni:"
hash_phonems["ぬ"]="nu"
hash_phonems["ね"]="ne"
hash_phonems["の"]="no"
hash_phonems["は"]="ha"
hash_phonems["ひ"]="hi:"
hash_phonems["ふ"]="fu"
hash_phonems["へ"]="he"
hash_phonems["ほ"]="ho"
hash_phonems["ま"]="ma"
hash_phonems["み"]="mi:"
hash_phonems["む"]="mu"
hash_phonems["め"]="me"
hash_phonems["も"]="mo"
hash_phonems["や"]="ja"
hash_phonems["ゆ"]="ju"
hash_phonems["よ"]="jo"
hash_phonems["ら"]="*a"
hash_phonems["り"]="*i:"
hash_phonems["る"]="*u"
hash_phonems["れ"]="*e"
hash_phonems["ろ"]="*o"
hash_phonems["わ"]="wa"
hash_phonems["を"]="o"
hash_phonems["ん"]="n"
hash_phonems["が"]="ga"
hash_phonems["ぎ"]="gi:"
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
hash_phonems["ぢ"]="dZi:"
hash_phonems["づ"]="zu"
hash_phonems["で"]="de"
hash_phonems["ど"]="do"
hash_phonems["ざ"]="za"
hash_phonems["じ"]="dZi:"
hash_phonems["ず"]="zu"
hash_phonems["ぜ"]="ze"
hash_phonems["ぞ"]="zo"
hash_phonems["。"]=""
hash_phonems["、"]=""--fix later
hash_phonems["（"]=""
hash_phonems["）"]=""
hash_phonems["「"]=""
hash_phonems["」"]=""
hash_phonems["　"]=" "
hash_phonems["0"]="ze*o"
hash_phonems["1"]="itSi:"
hash_phonems["2"]="ni:"
hash_phonems["3"]="san"
hash_phonems["4"]="Si:"
hash_phonems["5"]="go"
hash_phonems["6"]="*oku"
hash_phonems["7"]="Si:tSi:"
hash_phonems["8"]="hatSi:"
hash_phonems["9"]="ku"
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
function split_by_char(str,char)
	local arr = {}
	local index=1
	for i in string.gmatch(str, "[^"..char.."]+") do--this works by returning what does not match the char
		arr[index]=i
		index=index+1
	end
	return arr
end
function get_jp_char(jp_only_string,index)--warning, using this string with a string that contains non-jp chars will cause mojibake
	--return string.sub(jp_only_string,3*(index-1)+1,3*(index-1)+1+2)--character with 3 bytes arythmetic sequence
	local count=1
	for uchar in string.gfind(jp_only_string, "([%z\1-\127\194-\244][\128-\191]*)") do
		if index == count then
			return uchar
		end
		count=count+1
	end
end
function utf8len(str)
	useless,length=string.gsub(str, "[%z\001-\127\194-\244][\128-\191]*", "")
	return length
end
--def countchars(bytelist):
--	count = 0
--	for b in bytelist:
--		if b & 0x80 != 0x80 or b & 0xC0 == 0xC0:
--			count = count + 1
--	return count
--end
--countchars(bytes(str,"utf-8"))
str = os.capture("mecab -d " .. Mecab_Dictionary_path .. " test.txt",true)
arr = split_by_char(str,"\r\n")
hiragana=""
special_case={}
print(str)
for key, value in ipairs(arr) do	
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
		if arr2[6]=="*" then --HANDLE OTHER SPECIAL CASES(THIS MAY BE SOMEWHAT BUDDY)
			hiragana=hiragana..get_jp_char(arr2[1],1)
			if get_jp_char(arr2[1],1)=="ぢ" and get_jp_char(arr2[1],2)=="づ" then
				hiragana=hiragana.."づ"
			end
			if get_jp_char(arr2[1],2)=="ぴ" then
				hiragana=hiragana.."ぴ"
			end
			if get_jp_char(arr2[1],2)=="ぺ" then
				hiragana=hiragana.."ぺ"
			end			
			if (get_jp_char(arr2[1],2)=="ゃ" or get_jp_char(arr2[1],2)=="ゅ" or get_jp_char(arr2[1],2)=="ょ") then
				hiragana=hiragana..get_jp_char(arr2[1],2)
			end
		else
				hiragana=hiragana..arr2[6]
		end
	end
end
print(hiragana)
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
			--print(jp_char.."i:"..i.."len:"..utf8len(hiragana))
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
		phonetic=phonetic..jp_char
	end
	i=i+1	
until  i > utf8len(hiragana)
--Implement the sound of the small tsu
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
--phonetic=string.gsub(phonetic, "っ", "")
print(phonetic)
file = io.open("speak_this.tmp","w+")
local data=""
data="[["..phonetic.."]]"
file:write(data)
file:close()
os.execute(pathToSpeachSynth .. " " .. parametersToSpeachSynth)
--protect against shell injection(done by using temp file)
