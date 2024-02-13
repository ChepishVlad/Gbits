local icc_normal =
{
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
    ["Item36855"] = 1000, 
    ["Item50785"] = 650, 
    ["Item50782"] = 650, 
    ["Item50780"] = 500, 
    ["Item50778"] = 650, 
    ["Item50783"] = 650, 
    ["Item50777"] = 650, 
    ["Item50784"] = 100, 
    ["Item50786"] = 500, 
    ["Item50779"] = 500, 
    ["Item50781"] = 800, 
    ["Item50776"] = 800, 
    ["Item50342"] = 2000, 
    ["Item50791"] = 650, 
    ["Item50795"] = 100, 
    ["Item50792"] = 500, 
    ["Item50789"] = 650, 
    ["Item50797"] = 500, 
    ["Item50796"] = 650, 
    ["Item50788"] = 650, 
    ["Item50790"] = 650, 
    ["Item50794"] = 800, 
    ["Item50787"] = 800, 
    ["Item50793"] = 800, 
    ["Item50340"] = 2000, 
    ["Item202238"] = 2000, 
    ["Item50807"] = 500, 
    ["Item50804"] = 650, 
    ["Item50799"] = 1000, 
    ["Item50806"] = 500, 
    ["Item50800"] = 500, 
    ["Item50801"] = 500, 
    ["Item50802"] = 650, 
    ["Item50808"] = 800, 
    ["Item50809"] = 1000, 
    ["Item50803"] = 800, 
    ["Item50805"] = 800, 
    ["Item50798"] = 800, 
    ["Item36626"] = 800, 
    ["Item50988"] = 100, 
    ["Item50990"] = 500, 
    ["Item50859"] = 650, 
    ["Item50858"] = 500, 
    ["Item50985"] = 650, 
    ["Item50812"] = 650,
    ["Item50967"] = 500, 
    ["Item50811"] = 500, 
    ["Item50852"] = 250, 
    ["Item50986"] = 680, 
    ["Item50810"] = 800, 
    ["Item50966"] = 800, 
    ["Item36627"] = 800, 
    ["Item51005"] = 500, 
    ["Item51007"] = 650, 
    ["Item51009"] = 500, 
    ["Item51006"] = 650, 
    ["Item51002"] = 500, 
    ["Item51000"] = 650, 
    ["Item51008"] = 650, 
    ["Item51001"] = 650, 
    ["Item50999"] = 800, 
    ["Item51003"] = 800, 
    ["Item51004"] = 800, 
    ["Item50998"] = 800,
    ["Item36678"] = 800,
    ["Item51020"] = 500, 
    ["Item51017"] = 650, 
    ["Item51013"] = 500, 
    ["Item51015"] = 500,
    ["Item51019"] = 650, 
    ["Item51018"] = 500, 
    ["Item51014"] = 500, 
    ["Item51012"] = 650, 
    ["Item51016"] = 650, 
    ["Item51011"] = 800, 
    ["Item51010"] = 800, 
    ["Item50341"] = 1000, 
    ["Item37970"] = 1000, 
    ["Item51380"] = 650, 
    ["Item51379"] = 500, 
    ["Item51382"] = 650, 
    ["Item51023"] = 650, 
    ["Item51325"] = 650, 
    ["Item51025"] = 500, 
    ["Item51383"] = 500, 
    ["Item51024"] = 650, 
    ["Item51381"] = 650, 
    ["Item51326"] = 800, 
    ["Item51021"] = 800, 
    ["Item51022"] = 800, 
    ["Item37955"] = 800, 
    ["Item51554"] = 500, 
    ["Item51552"] = 650, 
    ["Item51550"] = 500, 
    ["Item51551"] = 500, 
    ["Item51556"] = 500, 
    ["Item51386"] = 500, 
    ["Item51555"] = 100, 
    ["Item51387"] = 650, 
    ["Item51548"] = 650, 
    ["Item51553"] = 800, 
    ["Item51384"] = 800, 
    ["Item51385"] = 800, 
    ["Item36789"] = 800, 
    ["Item51777"] = 500, 
    ["Item51584"] = 650, 
    ["Item51585"] = 500, 
    ["Item51565"] = 500, 
    ["Item51566"] = 500, 
    ["Item51583"] = 650, 
    ["Item51586"] = 100, 
    ["Item51564"] = 650, 
    ["Item51563"] = 650, 
    ["Item51582"] = 800, 
    ["Item51561"] = 800, 
    ["Item51562"] = 800, 
    ["Item36853"] = 800, 
    ["Item51790"] = 650, 
    ["Item51789"] = 500, 
    ["Item51783"] = 650, 
    ["Item51785"] = 650, 
    ["Item51792"] = 500, 
    ["Item51787"] = 650, 
    ["Item51782"] = 650, 
    ["Item51786"] = 500, 
    ["Item51779"] = 1000, 
    ["Item51791"] = 800, 
    ["Item51788"] = 800, 
    ["Item51784"] = 800, 
    ["Item36597"] = 800, 
    ["Item51800"] = 1000, 
    ["Item51803"] = 1000, 
    ["Item51801"] = 1000, 
    ["Item51795"] = 1000, 
    ["Item51798"] = 1000, 
    ["Item51797"] = 1000, 
    ["Item51799"] = 1000, 
    ["Item51796"] = 1000, 
    ["Item51802"] = 1000
}

------------------------------------------------------------------------
function Gbits_HookSetItem() ItemName, ItemLink = GameTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, GameTooltip); end
function Gbits_HookRefItem() ItemName, ItemLink = ItemRefTooltip:GetItem(); Gbits_HookItem(ItemName, ItemLink, ItemRefTooltip); end


function Gbits_HookItem(ItemName, ItemLink, Tooltip)
    --if not ( IsEquippableItem(ItemLink) ) then return; end

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
    if icc_normal[key] then 

        local item_type, item_sub_type, _, equi_loc  = select(6, GetItemInfo(item_id))
        local item_type_coef = 1
        if equi_loc == "INVTYPE_WEAPON" or equi_loc == "INVTYPE_SHIELD" then 
            item_type_coef = 2.5
        elseif equi_loc == "INVTYPE_TRINKET" then
            item_type_coef = 3
        end
        -- print("Item type coef: " .. item_type_coef)
        
        
        
        price = icc_normal[key] * date_coef
        --print(price)
        Tooltip:AddLine("Actual Gbit price is: ".. price, 1, 0, 1)
        

        local item_type, item_sub_type, _, equi_loc  = select(6, GetItemInfo(item_id))
        -- print(item_type)
        -- print(item_sub_type)
        -- print(equi_loc)

    end
    
    
end

GameTooltip:HookScript("OnTooltipSetItem", Gbits_HookSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", Gbits_HookRefItem)