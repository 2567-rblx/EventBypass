for i=1, 10 do
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson" .. tostring(i))
end