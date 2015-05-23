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
function contains_CJK(str)
	useless,length=string.gsub(str, "[%z\194-\244][\128-\191]*", "")
	if length>0 then
		return true
	else
		return false
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