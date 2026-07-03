local deepCopyTable = {}

function deepCopyTable.DeepClone(original)
	local clone = table.clone(original) 

	for key, value in original do
		if type(value) == "table" then
			clone[key] = deepCopyTable.DeepClone(value)
		end
	end

	return clone
end

return deepCopyTable