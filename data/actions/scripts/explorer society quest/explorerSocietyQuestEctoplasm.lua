function onUse(cid, item, fromPosition, itemEx, toPosition)
	local player = Player(cid)
	if item.itemid == 4863 then
		if itemEx.itemid == 2913 and player:getStorageValue(90) == 45 then
			player:setStorageValue(90, 46)
			toPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
			Item(item.uid):transform(4864)
			Item(itemEx.uid):remove()
		end
	end
	return true
end
