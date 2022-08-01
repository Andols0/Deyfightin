local eventframe = CreateFrame("FRAME");
local strings = {
	--Big wigs
	"is currently in combat with",
	"busy in combat",
	"Ich kämpfe gerade gegen",
	"Ich befinde mich in einem Bosskampf",
	"Estoy ocupado",
	"suis occupé à combattre",
	"Estou ocupado",
	"настоящее время",
	"正在与",
	"正在與",
	"正處於",
	"전투하느라",
	--DBM
	"is busy fighting against",
	"está ocupado",
	"正在与%s交战",
	"ist damit beschäftigt",
	"est occupé à",
	"e' occupato contro",
	"전투 때문에 바쁩니다",
	"сейчас занят",
	"正在與%s交戰",
}
local function eventHandler(_,_,arg1)
		for _,v in pairs(strings) do
		if strfind(arg1,v) then
			PlaySound(41928)
			break
		end
	end
end
eventframe:SetScript("OnEvent", eventHandler)
eventframe:RegisterEvent("CHAT_MSG_WHISPER")
eventframe:RegisterEvent("CHAT_MSG_BN_WHISPER")
