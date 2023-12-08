function split_by_char(str,char)
	local arr = {}
	local index=1
	for i in string.gmatch(str, "[^"..char.."]+") do--this works by returning what does not match the char
		arr[index]=i
		index=index+1
	end
	return arr
end
function get_jp_char(jp_only_string,index)
	if string.sub(jp_only_string,string.len(jp_only_string)-5,string.len(jp_only_string)) == "名詞" then	
		return --jp_only_string[index]--
	end
	return utf8sub(jp_only_string,index,1)
end
	--local count=1
	--print("jp_only_string["..jp_only_string.."]")
	--print("local count["..count.."]")
	--print("index["..index.."]")
	--print("string.sub(jp_only_string,string.len(jp_only_string)-5,string.len(jp_only_string))["..string.sub(jp_only_string,string.len(jp_only_string)-5,string.len(jp_only_string)).."]")
	--if string.sub(jp_only_string,1,7) == "english" or string.sub(jp_only_string,1,3) == "and" or string.sub(jp_only_string,1,2) == "so" or string.sub(jp_only_string,1,3) == "the" then	
	--if string.sub(jp_only_string,string.len(jp_only_string)-5,string.len(jp_only_string)) == "名詞" then	
	--	return --jp_only_string[index]--
	--end
	--for uchar in string.gfind(jp_only_string, "([%z\1-\127\194-\244][\128-\191]*)") do
	--	if index == count then
	--		return uchar
	--	end
	--	count=count+1
	--end
--end
function utf8len(str)
	useless,length=string.gsub(str, "[%z\001-\127\194-\244][\128-\191]*", "")
	return length
end
function contains_CJK(str)
	if str==nil then
		return nil
	end
	useless,length=string.gsub(str, "[%z\194-\244][\128-\191]*", "")
	if length>0 then
		return true
	else
		return false
	end
end
function utf8sub(str,index)
	length = utf8.len(str)
	local jp =""
	for i = index, length do
		lead = utf8.offset(str, i)
		trail = utf8.offset(str, i+1) - 1
		return string.sub(str, lead, trail)
	end
end
--def countchars(bytelist):
--	count = 0
--	for b in bytelist:
--		if b & 0x80 != 0x80 or b & 0xC0 == 0xC0:
--			count = count + 1
--	return count
--end
--countchars(bytes(str,"utf-8"))