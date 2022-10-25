local function EventFuncker(inst)
	for IDoN0t, letter in ipairs(inst:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")) do
		game:GetService("ReplicatedStorage").Events.UpdateData:FireServer(letter.Name)
	end
end

EventFuncker(game:GetService("ReplicatedStorage")["VenueUI_PlayerData"].LettersVenue)-- VIP Pass
EventFuncker(game:GetService("ReplicatedStorage")["VenueUI_PlayerData"].LettersConcert)-- Drum Kit