--[[ This network was made by Solar & VFX development team.
     This is a private API network, do not send it to anyone.
     If you are caught sending it around, you will be blacklisted & won't be able to use the API.

     This API will auto-update and should not get patched.
     If the API gets patched, I will try my best to fix it.
--]]

local Network = {}
local ApplicationModule = {}

_G.NetworkActive = true
if _G.NetworkActive == false then
	coroutine.yield()
end

coroutine.resume(coroutine.create(function()
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	
	--[Module]--
	_G.ModuleLoadstring = game:HttpGet("https://raw.githubusercontent.com/Solarine09/SolarNetwork/main/MainModule.lua")
	loadstring(_G.ModuleLoadstring)()
	
	local function RandomStringFunction()
		local Length = math.random(10, 20)
		local Array = {}

		for i = 1, Length do
			Array[i] = string.char(math.random(32, 126))
		end
		return table.concat(Array)
	end
	
	local function GetToolFunction()
		local Tool = Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
	end
	
	local function GetHandleFunction()
		local Tool = Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		local Handle = Tool:FindFirstChild("Handle") or Tool:FindFirstChildOfClass("Part")
	end
	
	local function CreateInstanceFunction(Instance, Property)
		Instance = Instance.new(Instance)
	end
	
	local function SetPropertyFunction(Set, Instance, Property)
		print("WIP")
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
	local MathRandom = math.random()
	
	--[String Application]--
	local Strings = {}
	local GenerateString = RandomStringFunction()
	
	--[StarterPack Application]--
	local GetInstance_Tool = GetToolFunction()
	local GetInstance_Handle = GetHandleFunction()
	
	--[Instance Application]--
	local CreateInstance = CreateInstanceFunction()
	
	--[Fire Application]--
	local solar_fireradius = firetouchinterest
	local solar_firesignal = firesignal
	local solar_getconnections = getconnections
end))
