-- https://lua.expert/

local Loader = loadstring(game:HttpGet('https://raw.githubusercontent.com/jewjew123/ALSPLOIT/main/IS/SHIT/USE/CATVAPE/OR/main.lua?ref_type=heads'))()
local t, GameSoundMeta, AudioManager
do
	t = Loader:GetJson('definitions/GameSound')
	GameSoundMeta = Loader:GetMeta('GameSoundMeta')
	SoundManager = Loader:GetController('SoundManager')
end

GameSoundMeta.registerGameSounds(t)
SoundManager:preload()

return {
	GameSound = t
}