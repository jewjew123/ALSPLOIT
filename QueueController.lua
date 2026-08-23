local Client
do
    Client = loadstring(game:HttpGet('https://raw.githubusercontent.com/jewjew123/ALSPLOIT/main/IS/SHIT/USE/CATVAPE/OR/main.lua?ref_type=heads'))():GetMain('Client')
end

return {
    joinQueue = function(self, queue)
        Client:Get('joinQueue'):SendToServer({
            ['queueType'] = queue
        })
    end
}