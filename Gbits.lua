local n, ns = ...

local rs_normal = ns.rs_normal
local rs_heroic = ns.rs_heroic
local toc25_normal = ns.toc25_normal
local toc25_heroic = ns.toc25_heroic
local icc_normal = ns.icc10_normal
local icc10_heroic = ns.icc10_heroic
local icc25_normal = ns.icc25_normal
local icc25_heroic = ns.icc25_heroic
local toc25_heroic_tokens = ns.toc25_heroic_tokens
local weapon_loc = {
    "INVTYPE_WEAPON", 
    "INVTYPE_SHIELD", 
    "INVTYPE_RANGED", 
    "INVTYPE_2HWEAPON", 
    "INVTYPE_WEAPONMAINHAND", 
    "INVTYPE_WEAPONOFFHAND",
    "INVTYPE_HOLDABLE",
    "INVTYPE_THROWN",
    "INVTYPE_RANGEDRIGHT"
}

------------------------------------------------------------------------
function Gbits_HookSetItem() ItemName, ItemLink = GameTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, GameTooltip); end
function Gbits_HookRefItem() ItemName, ItemLink = ItemRefTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, ItemRefTooltip); end


function Gbits_HookItem(ItemName, ItemLink, Tooltip)

    _, month, day, _ = CalendarGetDate()
    if month == 3 or month == 4 then
        date_coef = 1
    elseif month == 5 or month == 6 then
        date_coef = 1.5
    elseif month == 7 or month == 8 then
        date_coef = 2
    elseif month >= 9 and month <= 11 then
        date_coef = 2.5
    elseif month == 12 or month == 1 then
        date_coef = 3
    elseif month == 2 then
        if day <= 26 then
            date_coef = 3.5
        else
            date_coef = 1
        end
    end

    local item_id = ItemLink and string.match(ItemLink, "item:(%d+)")
    if item_id then
        local key = "Item" .. item_id 

        local item_type, item_sub_type, _, equi_loc  = select(6, GetItemInfo(item_id))
        local item_type_coef = 2

        if ns.contains(weapon_loc, equi_loc) then
            item_type_coef = 2.5
        elseif equi_loc == "INVTYPE_TRINKET" then
            item_type_coef = 3
        end

        if icc_normal[key] then 
            price = icc_normal[key] * date_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if icc25_normal[key] then 
            price = icc25_normal[key] * date_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if rs_normal[key] then 
            price = rs_normal[key] * date_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if toc25_normal[key] then 
            price = toc25_normal[key] * date_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end
        
        if icc25_heroic[key] then
            price = icc25_heroic[key] * date_coef * item_type_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if icc10_heroic[key] then
            price = icc10_heroic[key] * date_coef * item_type_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if rs_heroic[key] then
            price = rs_heroic[key] * date_coef * item_type_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if toc25_heroic[key] then
            price = toc25_heroic[key] * date_coef * item_type_coef
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

        if toc25_heroic_tokens[key] then
            price = toc25_heroic_tokens[key] * date_coef * 3
            Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        end

    end

end

GameTooltip:HookScript("OnTooltipSetItem", Gbits_HookSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", Gbits_HookRefItem)