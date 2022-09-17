local gameDictionary = {
	[5306359293] = "Island of Move",
	[6225076142] = "8th Annual Bloxy Awards",
	[6366043734] = "Why Don't We Launch Party",
	[6656109940] = "Zara Larsson Launch Party",
	[6704278765] = "Dolo Tonight Concert Experience",
	[6901029464] = "Mansion of Wonder",
	[7277488595] = "七叔（叶泽浩）Launch Party",-- Qīshū Launch Party
	[7541759836] = "凹凸世界：自由丛林",-- AOTU World: Free Jungle OR AOTU World Creation Challenge
	[7603178367] = "Chipotle Burrito Builder",
	[7655745946] = "Dunking Simulator",
	[8209480473] = "Spotify Island",
	[8526353932] = "McLaren F1 Racing Experience",
	[8528736393] = "Beatland",
	[9129288160] = "Tommy Play",
	[9230434873] = "Logitech Song Breaker Awards",
	[9377039667] = "Roblox Innovation Awards",
	[9524757503] = "IHeartLand Music Tycoon",
	[9557222597] = "Clarks' CICAVERSE",
	[9604473769] = "Tate McRae Concert Experience",
	[10057963710] = "George Ezra’s Gold Rush Kid Experience",
	[10105990977] = "Samsung Space Tycoon",
	[10146432319] = "Guacathon",
	[10204556059] = "NARS Color Quest",
	[10319501620] = "School of Sport",

	--- Sections
	-- ChainSmokers
	[9291030453] = "The Chainsmokers Concert Experience",
	[9648883891] = "Festival Tycoon",
	-- Creator Quizes
	[1871632192] = "Creator Quiz",-- Roblox Creator Challenge
	[2546610365] = "Creator Quiz",-- Roblox Creator Challenge (Libary)
	[3204381131] = "Creator Quiz",-- Roblox Creator Quiz
	[4201429814] = "Creator Quiz",-- Roblox Creator Challenge (Space)
}


local function GetLink(name)
	return string.format("https://raw.githubusercontent.com/2567-rblx/EventBypass/main/games/%s.lua", game:GetService("HttpService"):UrlEncode(name))
end


local genv = getgenv()
genv.client = game:GetService("Players").LocalPlayer
function genv.firetouch(toucher, totouch)
	firetouchinterest(toucher, totouch, 0)
	firetouchinterest(toucher, totouch, 1)
end

warn("[EventBypass] Loading;", gameDictionary[game.PlaceId])
local response = syn.request({
	Url = GetLink(gameDictionary[game.PlaceId]) --gameLinks[game.PlaceId]
})

warn("[EventBypass] Loaded!")
loadstring(response.Body)("Credits: https://v3rmillion.net/member.php?action=profile&uid=843091")
