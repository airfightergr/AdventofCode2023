local puzzle = "puzzle.txt"

local file = io.open(puzzle, "r")

-- store line by line
local lines_tbl = {}

for line in file:lines() do
  table.insert(lines_tbl, line)
end

print("Total lines: " .. #lines_tbl)

for i = 1, 3 do print("line [" .. i .. "]: " .. lines_tbl[i]) end

-- store only the numbers per line
local numbers = {}

for i = 1, 3 do
  for d in string.gmatch(lines_tbl[i], "%w") do
  numbers[i] = d
end
end
print("numbers: " .. #numbers .. "|" .. numbers[1])
local isNum = {}

--for i = 1, #letters do
  --  for j = 1, #letters[i] do
    --    if tonumber(letters[i][j]) ~= nil then
      --      table.insert(isNum, letters[i][j])
        --    print(letters[i][j])
        --end
    --end
--end

for n = 1, #isNum do
print("isNum: " .. isNum[n])
end
--local numIs = tonumber(isNum[1] .. isNum[#isNum])
--print(type(numIs) .. " | Num: " .. numIs)
