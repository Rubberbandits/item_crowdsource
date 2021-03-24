BASE.W = 1
BASE.H = 1
BASE.Name =  "Medical Base"
BASE.Desc =  "Base medical item"
BASE.UseText = "Use"
BASE.ConsumeText = "You apply the medical."
BASE.HealAmount = 20
BASE.Stackable = true
BASE.Vars = {
	Stacked = 1,
}
BASE.functions = {}
BASE.functions.Use = {
	SelectionName = function(item)
		return item.UseText
	end,
	OnUse = function(item)
		if CLIENT then
			LocalPlayer():Notify(nil, COLOR_NOTIF, item.ConsumeText)
		else
			if item.RadiationHealAmount then
				item:Owner():SetMaxHealth(math.Clamp(item:Owner():GetMaxHealth() + item.RadiationHealAmount, 0, 100))
				item:Owner():SetRadiation(math.Clamp(item:Owner():Radiation() - item.RadiationHealAmount, 0, item:Owner():Radiation()))
			end
		
			if item.HealAmount then
				item:Owner():SetHealth(math.min(item:Owner():Health() + item.HealAmount, item:Owner():GetMaxHealth()))
			end
		end
		
		local amount = item:GetVar("Stacked", 0)
		if amount > 1 then
			item:SetVar("Stacked", amount - 1)
		else
			item:RemoveItem()
		end
		
		return true
	end,
	CanRun = function(item)
		return true
	end,
}

function BASE:QuickUse()
	self:CallFunction("Use", true)
end 