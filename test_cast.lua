function get_jp_char(jp_only_string,index)
	--return string.sub(jp_only_string,3*(index-1)+1,3*(index-1)+1+2)--character with 3 bytes arythmetic sequence
	local count=1
	for uchar in string.gfind(jp_only_string, "([%z\1-\127\194-\244][\128-\191]*)") do
		if index == count then
			if not(uchar == nil) then 
				return uchar
			end
		end
		count=count+1
	end
end
i=1
hiragana="がぎぐげご"
romaji=""
function utf8len(str)
	useless,length=string.gsub(str, "[%z\001-\127\194-\244][\128-\191]*", "")
	return length
end
repeat
--for i = 1, string.len(hiragana) do
   	jp_char=get_jp_char(hiragana,i)--warning, using this string with a string that contains non-jp chars will cause mojibakeend
	print(jp_char)
	if jp_char=="は" and special_case[i] then
		r="wa"
	elseif jp_char=="へ" and special_case[i] then
		--print(special_case[i])
		r="e"
	else
		--r=hash_hiragana[jp_char]
		if 	jp_char=="ぎ" or jp_char=="じ" or jp_char=="ぢ" or jp_char=="び" or jp_char=="ぴ" then
			jp_char=jp_char..get_jp_char(hiragana,i+1)
			
		end
		--d=hash_hiragana_doubles[jp_char]
		if d then
			r=d
			i=i+1
		end
	end
	if not(r==nil) then
		romaji=romaji..r
	else
		romaji=romaji..jp_char
	end
	i=i+1	
until  i > utf8len(hiragana)
--repeat
--for i = 1, string.len(hiragana) do
--   	jp_char=get_jp_char(hiragana,i)
--	print(jp_char)
--	i=i+1	
--until  i > utf8len(hiragana)