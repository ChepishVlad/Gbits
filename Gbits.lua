local icc = {

    ["Item50773"] = 650,
    ["Item50764"] = 650,
    ["Item50774"] = 650,
    ["Item50762"] = 650,
    ["Item50772"] = 650,
    ["Item50775"] = 500,
    ["Item50763"] = 650,
    ["Item50759"] = 800,
    ["Item50771"] = 800,
    ["Item50760"] = 800,
    ["Item50761"] = 800,
    ["Item50339"] = 1000,

}


------------------------------------------------------------------------
function Gbits_HookSetItem() ItemName, ItemLink = GameTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, GameTooltip); end
function Gbits_HookRefItem() ItemName, ItemLink = ItemRefTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, ItemRefTooltip); end


function Gbits_HookItem(ItemName, ItemLink, Tooltip)
    if not ( IsEquippableItem(ItemLink) ) then return; end

    -- get coef depends on date
    _, month, _, _ = CalendarGetDate()
    if month == 3 or month == 4 then
        date_coef = 1
    elseif month == 5 or month == 6 then
        date_coef = 1.5
    elseif month == 7 or month == 8 then
        date_coef = 2
    elseif month == 9 or month == 11 then
        date_coef = 2.5
    elseif month == 12 or month == 1 then
        date_coef = 3
    elseif month == 2 then
        date_coef = 3.5
    end

    local item_id = ItemLink and string.match(ItemLink, "item:(%d+)")
    price = 0
    local key = "Item" .. item_id
    if icc[key] then 
        price = icc[key] * date_coef
        print(price)
    end
    Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
    
end

GameTooltip:HookScript("OnTooltipSetItem", Gbits_HookSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", Gbits_HookRefItem)