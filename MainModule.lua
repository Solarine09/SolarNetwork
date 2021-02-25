local Network = {}
local ApplicationModule = {}

coroutine.wrap(function()
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	
	--[Module]--
	_G.ModuleLoadstring = game:HttpGet("https://raw.githubusercontent.com/Solarine09/SolarNetwork/main/MainModule.lua")
	loadstring(_G.ModuleLoadstring)()
	
	local function RandomString()
		local Length = math.random(10, 20)
		local Array = {}

		for i = 1, Length do
			Array[i] = string.char(math.random(32, 126))
		end
		return table.concat(Array)
	end	
	
	local function printGay()
		print("solar said ur gay")
	end
	
	--[Table Application]--
	local Tables = {}
	
	local Table = table
	local CreateTable = table.create
	local RemoveTable = table.remove
	local ClearTable = table.clear
	local PackTable = table.pack
	local UnpackTable = table.unpack
	local InsertTable = table.insert
	local FindTable = table.find
	
	--[Math Application]--
	local Math = {}
	
	--[String Application]--
	local Strings = {}
	local GenerateString = RandomString()
	
	local GeneratePrint = printGay()
end)()
