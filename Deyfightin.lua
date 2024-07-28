local eventframe = CreateFrame("FRAME");
local strings = {
	--Big wigs
	"is currently in combat with",
	"busy in combat", --enUS
	"Ich kämpfe gerade gegen", --deDE
	"Ich befinde mich in einem Bosskampf", --deDE
	"Estoy ocupado", --esES & esMX
	"suis occupé à combattre", --frFR
	"Sono occupato", --itIT
	"Estou ocupado", --ptBR
	"Сейчас я в бою", --ruRU
	"настоящее время",
	"正在与", --zhCN
	"正在與", --zhTW
	"正處於", --zhTW
	"전투하느라", --koKR
	--DBM
	"is busy fighting against", --en
	"está ocupado", --br/es
	"正在与%s交战", --cn
	"ist damit beschäftigt", --de
	"est occupé à", --fr
	"sta combattendo ", --it
	"e' occupato contro",
	"전투 때문에 바쁩니다",--kr
	"сейчас занят",--ru
	"正在與%s交戰", --cn & tw
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
