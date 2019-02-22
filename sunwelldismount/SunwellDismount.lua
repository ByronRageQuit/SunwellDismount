local f = CreateFrame("Frame", nil, UIParent)

local KALEC_TEXT = "With Kalecgos freed, can you provide a teleport up to Apex Point?"
local TWINS_TEXT = "Now that Lady Sacrolash and Grand Warlock Alythess have been defeated, can you teleport me to the Witch's Sanctum."
local MURU_TEXT = "We've cleared the way to Kil'Jaeden! Can you transport me close to the Sunwell?"

local function sDismount(self, event, ...)

	local gossipText = GetGossipOptions()

	--DEFAULT_CHAT_FRAME:AddMessage(gossipText)
	
	if (gossipText == KALEC_TEXT or gossipText == TWINS_TEXT or gossipText == MURU_TEXT) then -- If the gossip text is what moorba says
		
		if IsMounted() then
			Dismount();
		end
		
		SelectGossipOption(1);
		
	end	

end

f:RegisterEvent("GOSSIP_SHOW")
f:SetScript("OnEvent", sDismount)