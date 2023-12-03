local allowedplayer = {
    ["STEAM_0:1:461318085"] = "ZK", -- STEAM_0:1:461318085
    ["STEAM_0:0:156253535"] = "Nayl",
    ["STEAM_0:0:174504077"] = "xPsyko",
    ["STEAM_0:1:460011880"] = "ZK2",
}

if allowedplayer[LocalPlayer():SteamID()] then
    local msg = [[
                                
    $$$$$$$$\ $$\   $$\ 
    \____$$  |$$ | $$  |
        $$  / $$ |$$  / 
    $$  /  $$$$$  /  
    $$  /   $$  $$<   
    $$  /    $$ |\$$\  
    $$$$$$$$\ $$ | \$$\ 
    \________|\__|  \__|   


    //   ______                             __  __                                                        _                  __ 
    //  /_  __/__    ___  ___  ___ ___     / /_/ /  ___   __ _  ___ ___  __ __   ___  _______ ___ ___    (_)__  ___ ___ ____/ /_
    //   / / / _ \  / _ \/ _ \/ -_) _ \   / __/ _ \/ -_) /  ' \/ -_) _ \/ // /  / _ \/ __/ -_|_-<(_-<   / / _ \(_-</ -_) __/ __/
    //  /_/  \___/  \___/ .__/\__/_//_/   \__/_//_/\__/ /_/_/_/\__/_//_/\_,_/  / .__/_/  \__/___/___/  /_/_//_/___/\__/_/  \__/ 
    //                 /_/                                                    /_/                                                         
    ]]
    MsgC(Color( 50, 205, 50 ), msg)                                                         

elseif not allowedplayer[LocalPlayer():SteamID()] then
    local msg = [[
        ______           _                                ____                  __
        /_  __/_ __  ___ ( )__ ___   ___  ___ ____   ___ _/ / /__ _    _____ ___/ /
         / / / // / / _ \|/ -_|_-<  / _ \/ _ `(_-<  / _ `/ / / _ \ |/|/ / -_) _  / 
        /_/  \_,_/ /_//_/ \__/___/ / .__/\_,_/___/  \_,_/_/_/\___/__,__/\__/\_,_/  
                                  /_/                                              
    ]]

    MsgC(Color( 255, 0, 0 ), msg)                                                         


end 


if allowedplayer[LocalPlayer():SteamID()] then
    local msg = [[
    Say !help in chat for all commandes.                  
    ]]
    MsgC(Color( 0, 255, 0 ), msg)                                
end

CreateClientConVar("bhop", "0", true,false)
CreateClientConVar("Flash", "0", true,false)
CreateClientConVar("Hand", "0", true,false)
CreateClientConVar("zkfov", "0", true,false)
CreateClientConVar("value_fov", "90", true,false)
CreateClientConVar("3eme", "0", true,false)
CreateClientConVar("physgun", "1", true,false)
CreateClientConVar("physgun_value", "85", true,false)
CreateClientConVar("bindd", "0", true,false)
CreateClientConVar("gun", "0", true,false)
CreateClientConVar("propp", "0", true,false)
CreateClientConVar("visu", "0", true,false)
CreateClientConVar("door", "0", true,false)
CreateClientConVar("esp", "0", true,false)
CreateClientConVar("chams", "0", true,false)



local colors_matterial = {
    mat1 = "models/wireframe",
    mat2 = "models/props_combine/tprings_globe",
    mat3 = "models/props_combine/com_shield001a",
    mat4 = "Models/effects/comball_tape",
    mat5 =  "models/debug/debugwhite",
    mat6 = "Models/effects/vol_light001",
    mat7 = "models/shiny",
    col_violet = Color( 150, 50, 255 ),
    col_white = Color(255, 255, 255),
    col_crimson = Color(220, 20, 60),
    col_lime = Color( 50, 205, 50 ),
    col_red = Color(225, 225, 225),
    col_blue = Color( 0, 191, 255),
    col_green = Color( 80, 200, 120 ),	
    col_bluee = Color( 30, 144, 255 ),
    faded_black = Color( 20, 20, 20, 254 ),
    faded_beige = Color(250, 215, 160 ),
    faded_gris = Color( 60, 60, 60, 254 ),
    faded_black = Color( 30, 30, 30, 254 ),
    button_col_blue  = Color( 33, 65, 65, 254 ),
    mat = Material( "models/props_combine/stasisshield_sheet" ),
}

local propslist = {
    bindgate = 'bind "f" "gm_spawn models/props/de_tides/gate_large.mdl',
    bindfridge = 'bind "r" "gm_spawn models/props/cs_militia/refrigerator01.mdl"',
    bindwheels = 'bind "e" "gm_spawn models/props_phx/wheels/moped_tire.mdl"',
    bindglass = 'bind "g" "gm_spawn models/props_phx/construct/glass/glass_angle360.mdl"',
    bindplate = 'bind "n" "gm_spawn models/props_phx/construct/metal_plate4x4.mdl"',
    bindtrack = 'bind "h" "gm_spawn models/xqm/coastertrack/slope_225_2.mdl"',
}

commande = {
    add_kevlar = "ulx armor \"".. LocalPlayer():Nick().. "\" 255",
    add_hp = "ulx hp \"".. LocalPlayer():Nick().. "\" 100",
    allcommande = { "!Kevlar = add 255 kevlar ", " !hp = add 100 HP"},
    ok = {"ok"},
}


hook.Add("OnPlayerChat", "kevlar", function( ply, txt )
    if txt == "!kevlar" then
        LocalPlayer():ConCommand( commande.add_kevlar ) 
    end
end)

hook.Add("OnPlayerChat", "hp", function( ply, txt )
    if txt == "!hp" then
        LocalPlayer():ConCommand( commande.add_hp ) 
    end
end)

hook.Add("OnPlayerChat", "info", function( ply, txt )
    if txt == "!help" then
        chat.AddText(( colors_matterial.col_crimson ),"[ZK MENU]",Color(255,255,255),"All commande : if superadmin(Armor = !kevlar, "    ,  "    HP = !hp)")
    end
end)


if allowedplayer[LocalPlayer():SteamID()] then

    local function color( class, color, material )   
        for k, v in ipairs(ents.FindByClass(class )) do     
            v:SetColor( color )
            v:SetMaterial( material )
        end
    end

    hook.Add( "PreDrawEffects", "entcolor", function()
        if GetConVarNumber ("gun") == 1 then
            color( "viewmodel*", colors_matterial.col_violet, colors_matterial.mat1 ) 
        elseif GetConVarNumber ("gun") == 0 then
            color( "viewmodel*") 
        end
    end)   
    
    hook.Add( "PreDrawEffects", "entcolorr", function()
        if GetConVarNumber ("propp") == 1 then
            color( "prop_physics", colors_matterial.col_violet, colors_matterial.mat1 )
        elseif GetConVarNumber ("propp") == 0 then
            color( "prop_physics") 
        end
    end)   
    
    hook.Add( "PreDrawEffects", "entcolorrr", function()
        if GetConVarNumber ("door") == 1 then
            color( "prop_door_rotating", colors_matterial.col_violet, colors_matterial.mat1 )
        elseif GetConVarNumber ("door") == 0 then
            color( "prop_door_rotating") 
        end
    end)   
end

local satrouville = player.GetAll

hook.Add("OnPlayerChat", "id", function( ply, txt ) 
    if txt == "!steamid" then
        for k, v in pairs(satrouville()) do 
            print(v:SteamID())
        end
    end     
end)

hook.Add( "HUDPaint", "ESP", function()
    if GetConVarNumber( "esp" ) == 1  then
      for k, v in pairs(satrouville()) do 
            if v != LocalPlayer() then

                local pos = v:EyePos() + Vector(0, 0, 10) 
                local ok = pos:ToScreen()
                draw.SimpleText(v:Name(), "esp", ok.x , ok.y - 34 , Color( 220, 220, 220, 255 ), 1, 1)
                draw.RoundedBox(25, ok.x - 3, ok.y - 10, 10, 10, Color(255, 0, 0, 255 ), 1, 1)
                draw.SimpleText(v:Health(), "esplife", ok.x , ok.y - 20 , Color( 0, 255, 0, 255 ), 1, 1)

                /*if v != LocalPlayer() && Health < 51 then
                    draw.SimpleText(v:Health(), "esplife", ok.x , ok.y - 20 , Color( 0, 255, 0, 255 ), 1, 1)
                elseif v != LocalPlayer() && Health < 26 then
                    draw.SimpleText(v:Health(), "esplife", ok.x , ok.y - 20 , Color( 255, 128, 0, 255 ), 1, 1)
                elseif v != LocalPlayer() && Health > 25 then
                    draw.SimpleText(v:Health(), "esplife", ok.x , ok.y - 20 , Color( 255, 0, 0, 255 ), 1, 1)
                end */
            end
        end
    end
end)


hook.Add("PreDrawPlayerHands", "NoHand", function()
    if GetConVarNumber ("Hand") == 1 then
        return true
    
    elseif GetConVarNumber ("Hand") == 0 then
        return false
    end
end)
 

hook.Add("Think", "flashligth", function()
    if GetConVarNumber( "Flash" ) == 1 && input.IsKeyDown( KEY_F ) == true then
        RunConsoleCommand("impulse", "100")
        timer.Simple(0.1, function()
        end) 
        
    end 
end) 

local function Createbhop()
    if LocalPlayer():GetMoveType() == MOVETYPE_NOCLIP then return end 
    if input.IsKeyDown( KEY_SPACE ) and LocalPlayer():IsOnGround() then
        LocalPlayer():ConCommand(" +Jump" )
    else
        LocalPlayer():ConCommand(" -Jump" )
    end
end

hook.Add("Think", "bhop", function()
    if GetConVarNumber( "Bhop" ) == 1 then
        Createbhop()
    end
    
end)

hook.Add( "Think", "phygunspeed", function(ply)
	if GetConVarNumber("physgun") == 1 then
        physgun_speed = GetConVarNumber( "physgun_value" )
        RunConsoleCommand("physgun_wheelspeed", GetConVarNumber("physgun_value"))
    end 
end)

hook.Add( "CalcView", "MyCalcView", function( ply, pos, angles, fov )
	if GetConVarNumber("zkfov") == 1 then
        local view = {
		origin = pos,
		angles = angles,
		fov = GetConVarNumber( "value_fov" ), 
		drawviewer = false}
        return view
    end
end)

hook.Add( "CalcView", "view", function( ply, pos, angles, fov )
    if GetConVarNumber("3eme") == 1 then 
    local view = {
        origin = pos - ( angles:Forward() * 140 ),
        angles = angles,
        fov = fov,
        drawviewer = true
    }
    return view
    end
end)
surface.CreateFont( "esp", {
    font = "BFHUD",
    size = 14,
    weight = 500,
})

surface.CreateFont( "esplife", {
    font = "BFHUD",
    size = 15,
    weight = 500,
})


surface.CreateFont( "Vitesse", {
    font = "BFHUD",
    size = 35,
    weight = 500,
    antialias = true,
})

surface.CreateFont( "font5", {
    font = "BFHUD",
    size = 17,
    weight = 500,
})

surface.CreateFont( "font1", {
    font = "BFHUD",
    size = 18,
    weight = 500,
})

surface.CreateFont( "font2", {
    font = "BFHUD",
    size = 20,
    weight = 500,
})

surface.CreateFont( "font3", {
    font = "BFHUD",
    size = 30,
    weight = 500,
})

hook.Add("HUDPaint", "velocity", function()
    if  LocalPlayer():GetVelocity():Length() >= 0 && GetConVarNumber("bhop") == 1 then 
        draw.SimpleTextOutlined( math.Round (LocalPlayer():GetVelocity():Length()), "Vitesse", ScrW() /2, ScrH() -100, Color( 0, 0, 0 ), 1 , 1 , 1 ,   colors_matterial.col_lime )
    end
end)

local function DrawRainbowText( frequency, str, font, x, y )
	surface.SetFont( font )
	surface.SetTextPos( x, y )

	for i = 1, #str do
		local raimbow = HSVToColor( i * 4 +  frequency % 360, 1, 1 ) -- Providing 3 numbers to surface.SetTextColor rather
		surface.SetTextColor( raimbow.r, raimbow.g, raimbow.b )			-- than a single color is faster
		surface.DrawText( string.sub( str, i, i ) )
	end
end

local menubind

ismenubopen = 0
local function bindmenu()
    local speed = 165
    if IsValid(menubind) == false then
        menubind = vgui.Create( "DFrame" )
        menubind:SetSize( 600, 400 )
        menubind:SetPos(1275, 1080/2 - 200)
        menubind:SetDraggable(false )
        menubind:ShowCloseButton( false )
        menubind:IsDraggable( false )
        menubind:MakePopup()
        menubind:SetTitle( "" )
        menubind.Paint = function( self, w, h )
            draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_black)
            DrawRainbowText( speed, "ZK Bind", "font2", 520, 8, color_white )
            surface.SetDrawColor(25, 25, 25, 254)
            surface.DrawOutlinedRect( 0, 0, 600, 400, 5 )
            surface.SetDrawColor(45, 45, 45, 255)
        end
        local gate = vgui.Create( "DModelPanel", menubind )
        gate:SetSize( 125, 125 )
        gate:SetPos(25, 25)
        gate:SetFOV(70)
        gate:SetCamPos(Vector(50, 50, 50))
        gate:SetModel( "models/props/de_tides/gate_large.mdl" )
        gate:SetCamPos( Vector(0,200,61.841629) )
        gate:SetLookAt( gate.Entity:GetPos() + Vector(2.375754 ,-0.003799 ,61.841629) )
        function gate:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 

        local gatebutton = vgui.Create( "DButton", menubind )
        gatebutton:SetSize( 80, 30)
        gatebutton:SetPos(50, 180)
        gatebutton:SetText( "" )
        gatebutton.DoClick = function()
            SetClipboardText( ' bind "f" "gm_spawn models/props/de_tides/gate_large.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        gatebutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor(0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "GATE", "font2", 40, 4  , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    
        local fridge = vgui.Create( "DModelPanel", menubind )
        fridge:SetSize( 270, 130 )
        fridge:SetPos( -50, 200)
        fridge:SetCamPos( Vector(40, 40, 40) )
        fridge:SetFOV(70)
        fridge:SetModel( "models/props/cs_militia/refrigerator01.mdl" )
        fridge:SetCamPos( Vector(0,200,61.841629) )
        fridge:SetLookAt( fridge.Entity:GetPos() + Vector(2.375754 ,-0.003799 ,61.841629) )
        function fridge:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 


        local Fridgebutton = vgui.Create( "DButton", menubind )
        Fridgebutton:SetSize(80, 30)
        Fridgebutton:SetPos(50, 355 )
        Fridgebutton:SetText( "" )
        Fridgebutton.DoClick = function()
            SetClipboardText( ' bind "r" "gm_spawn models/props/cs_militia/refrigerator01.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        Fridgebutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor( 0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "FRIDGE", "font2", 40, 4 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    
        local wheels = vgui.Create( "DModelPanel", menubind ) 
        wheels:SetSize( 220, 130 )
        wheels:SetPos( 150, 50)
        wheels:SetCamPos( Vector(40, 40, 40) )
        wheels:SetFOV(30)
        wheels:SetModel( "models/props_phx/wheels/moped_tire.mdl" )   
        wheels:SetCamPos( Vector(0,200,85) )
        wheels:SetLookAt( wheels.Entity:GetPos() + Vector(0 ,0 ,0) )
        function wheels:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 


        local wheelsbutton = vgui.Create( "DButton", menubind )
        wheelsbutton:SetSize(80, 30)
        wheelsbutton:SetPos(220, 180 )
        wheelsbutton:SetText( "" )
        wheelsbutton.DoClick = function()
            SetClipboardText( ' bind "e" "gm_spawn models/props_phx/wheels/moped_tire.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        wheelsbutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor( 0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "WHEELS", "font2", 40, 4 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )   
        end
    
  
        local glass = vgui.Create( "DModelPanel", menubind ) 
        glass:SetSize( 150, 130 )
        glass:SetPos( 185, 230)
        glass:SetCamPos( Vector(40, 40, 40) )
        glass:SetFOV(30)
        glass:SetModel( "models/props_phx/construct/glass/glass_angle360.mdl" )   
        glass:SetCamPos( Vector(0,200,85) )
        glass:SetLookAt( glass.Entity:GetPos() + Vector(0 ,0 ,0) )
        function glass:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 

        local glassbutton = vgui.Create( "DButton", menubind )
        glassbutton:SetSize(80, 30)
        glassbutton:SetPos(220, 355 )
        glassbutton:SetText( "" )
        glassbutton.DoClick = function()
            SetClipboardText( ' bind "g" "gm_spawn models/props_phx/construct/glass/glass_angle360.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        glassbutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor( 0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "GLASS", "font2", 40, 4 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )   
        end
    

        local plate = vgui.Create( "DModelPanel", menubind ) 
        plate:SetSize( 120, 120 )
        plate:SetPos( 380, 50)
        plate:SetCamPos( Vector(40, 40, 40) )
        plate:SetFOV(70)
        plate:SetModel( "models/props_phx/construct/metal_plate4x4.mdl" )   
        plate:SetCamPos( Vector(0,200,85) )
        plate:SetLookAt( plate.Entity:GetPos() + Vector(0 ,0 ,0) )
        function plate:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 

        local platebutton = vgui.Create( "DButton", menubind )
        platebutton:SetSize(80, 30)
        platebutton:SetPos(400, 180 )
        platebutton:SetText( "" )
        platebutton.DoClick = function()
            SetClipboardText( ' bind "g" "gm_spawn models/props_phx/construct/metal_plate4x4.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        platebutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor( 0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "PLATE", "font2", 40, 4 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )   
        end

        local track = vgui.Create( "DModelPanel", menubind )
        track:SetSize( 120, 130 )
        track:SetPos( 380, 200)
        track:SetCamPos( Vector(40, 40, 40) )
        track:SetFOV(80)
        track:SetModel( "models/xqm/coastertrack/slope_225_2.mdl" )
        track:SetCamPos( Vector(0,200,61.841629) )
        track:SetLookAt( track.Entity:GetPos() + Vector(2.375754 ,-0.003799 ,61.841629) )
        function track:LayoutEntity( Entity ) 
            Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        end 


        local trackbutton = vgui.Create( "DButton", menubind )
        trackbutton:SetSize(80, 30)
        trackbutton:SetPos(400, 355 )
        trackbutton:SetText( "" )
        trackbutton.DoClick = function()
            SetClipboardText( ' bind "r" "gm_spawn models/xqm/coastertrack/slope_225_2.mdl" ' )
            chat.AddText(( colors_matterial.col_blue ),"[ZK MENU]",Color(255,255,255),"Le bind du props a ete copier.")
        end
        trackbutton.Paint = function(self, w, h)
            draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
            surface.SetDrawColor( 0, 191, 255, 255 )
            surface.DrawOutlinedRect( 0, 0, 80, 30, 3 )
            draw.SimpleText( "TRACK", "font2", 40, 4 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )     

        end

    end
end  

local function visualmenu()
    local speed = 165
    if IsValid(menuvisu) == false then
        menuvisu = vgui.Create( "DFrame" )
        menuvisu:SetSize( 600, 400 )
        menuvisu:SetPos(50, 1080/2 - 200)
        menuvisu:SetDraggable(false )
        menuvisu:ShowCloseButton( false )
        menuvisu:IsDraggable( false )
        menuvisu:MakePopup()
        menuvisu:SetTitle( "" )
        menuvisu.Paint = function( self, w, h )
            draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_black)
            DrawRainbowText( speed, "ZK Visual", "font2", 520, 8, color_white )
            draw.SimpleText( "Soon ...", "font1", 275, 160 , colors_matterial.col_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
            surface.SetDrawColor(25, 25, 25, 254)
            surface.DrawOutlinedRect( 0, 0, 600, 400, 5 )
            surface.SetDrawColor(45, 45, 45, 255)
        end
    end   

    local gunbutton = vgui.Create( "DButton", menuvisu )
    gunbutton:SetPos(25, 80)
    gunbutton:SetSize(100, 50)
    gunbutton:SetText( "" )
    gunbutton.DoClick = function()        
        if GetConVarNumber("gun") == 1 then 
            RunConsoleCommand("gun", "0")
        else 
            RunConsoleCommand("gun", "1")
        end
    end
    gunbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "gun" ) == 1 then
            draw.SimpleText( "WEAPON", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("gun") == 0 then
            draw.SimpleText( "WEAPON", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 

    local propbutton = vgui.Create( "DButton", menuvisu )
    propbutton:SetPos(25, 180)
    propbutton:SetSize(100, 50)
    propbutton:SetText( "" )
    propbutton.DoClick = function()        
        if GetConVarNumber("propp") == 1 then 
            RunConsoleCommand("propp", "0")
        else 
            RunConsoleCommand("propp", "1")
        end
    end
    propbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "propp" ) == 1 then
            draw.SimpleText( "PROPS", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("propp") == 0 then
            draw.SimpleText( "PROPS", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 

 local propbutton = vgui.Create( "DButton", menuvisu )
    propbutton:SetPos(25, 180)
    propbutton:SetSize(100, 50)
    propbutton:SetText( "" )
    propbutton.DoClick = function()        
        if GetConVarNumber("propp") == 1 then 
            RunConsoleCommand("propp", "0")
        else 
            RunConsoleCommand("propp", "1")
        end
    end
    propbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "propp" ) == 1 then
            draw.SimpleText( "PROPS", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("propp") == 0 then
            draw.SimpleText( "PROPS", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 

    local doorbutton = vgui.Create( "DButton", menuvisu )
    doorbutton:SetPos(25, 280)
    doorbutton:SetSize(100, 50)
    doorbutton:SetText( "" )
    doorbutton.DoClick = function()        
        if GetConVarNumber("door") == 1 then 
            RunConsoleCommand("door", "0")
        else 
            RunConsoleCommand("door", "1")
        end
    end
    doorbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "door" ) == 1 then
            draw.SimpleText( "DOOR", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("door") == 0 then
            draw.SimpleText( "DOOR", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 

    local espbutton = vgui.Create( "DButton", menuvisu )
    espbutton:SetPos(220, 80)
    espbutton:SetSize(100, 50)
    espbutton:SetText( "" )
    espbutton.DoClick = function()        
        if GetConVarNumber("esp") == 1 then 
            RunConsoleCommand("esp", "0")
        else 
            RunConsoleCommand("esp", "1")
        end
    end
    espbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "esp" ) == 1 then
            draw.SimpleText( "ESP", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("esp") == 0 then
            draw.SimpleText( "ESP", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 
    
    local chamsbutton = vgui.Create( "DButton", menuvisu )
    chamsbutton:SetPos(220, 180)
    chamsbutton:SetSize(100, 50)
    chamsbutton:SetText( "" )
    chamsbutton.DoClick = function()        
        if GetConVarNumber("chams") == 1 then 
            RunConsoleCommand("chams", "0")
        else 
            RunConsoleCommand("chams", "1")
        end
    end
    chamsbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(150, 50, 255, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        draw.SimpleText( "CHAMS", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        if GetConVarNumber( "chams" ) == 1 then
            draw.SimpleText( "CHAMS", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("chams") == 0 then
            draw.SimpleText( "CHAMS", "font1", 50, 15 , colors_matterial.white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 
end

local function keymenu()
    if input.IsKeyDown( KEY_INSERT ) and ismenuopen == 0 then
        openmenu()
        ismenuopen = 1
    elseif input.IsKeyDown( KEY_INSERT ) then
    else
        ismenuopen = 0
    end
end    
 
if allowedplayer[LocalPlayer():SteamID()] then
    hook.Add( "Think", "keyopenmenu", keymenu )
    local menu = vgui.Create( "DFrame" )
    menu:SetSize( 600, 400 )
    menu:Center() 
    menu:MakePopup()
    menu:SetDraggable(false )
    menu:ShowCloseButton( false )
    menu:IsDraggable( false )
    menu:SetTitle( "" )
    menu.Paint = function( self, w, h )
        local speed = 165
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_black)
        DrawRainbowText( speed, "ZK Menu", "font2", 520, 8, color_white )
        surface.SetDrawColor(25, 25, 25, 254)
        surface.DrawOutlinedRect( 0, 0, 600, 400, 5 )
        surface.SetDrawColor(45, 45, 45, 255)
        surface.DrawRect(140, 20, 20 , 360 )
        surface.SetDrawColor(0, 255, 127, 255)
        surface.DrawOutlinedRect( 140, 20, 20, 360, 2 )
        surface.SetDrawColor(45, 45, 45, 255)
        surface.DrawRect(300, 20, 20 , 360 )
        surface.SetDrawColor(0, 255, 127, 255)
        surface.DrawOutlinedRect( 300, 20, 20, 360, 2 )
        draw.SimpleText( "MISC", "font3", 70, 18, colors_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        surface.SetDrawColor(0, 255, 127, 255)
        surface.DrawRect(30, 50, 80, 5 )
        draw.SimpleText( "PK", "font3", 230, 18, colors_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        surface.SetDrawColor(0, 255, 127, 255)
        surface.DrawRect(190, 50, 80, 5 )
        draw.SimpleText( "3ème view", "font2", 85, 365 , color_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        draw.SimpleText( "phys_speed", "font2", 245, 365 , color_white , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )

    end
    
    local icon = vgui.Create( "DModelPanel", menu )
    icon:SetSize( 350, 350 )
    icon:SetPos(275, 25)
    icon:SetModel( "models/player/hostage/hostage_04.mdl" )
    icon:SetAnimSpeed(50)
    function icon:LayoutEntity( Entity ) 
        Entity:SetAngles(Angle(0,CurTime() * 75 ,0))
        
    end  
    
    openmenu = function()   
        visible = not visible
        menu:SetVisible(visible)
        if !visible && IsValid(menubind) then
            menubind:Close()
            RunConsoleCommand("bindd", "0")
        end
        if !visible && IsValid(menuvisu) then
            menuvisu:Close()
            RunConsoleCommand("gun", "0")
        end

    end
    
    local flashbutton = vgui.Create( "DButton", menu )
    flashbutton:SetPos(20, 80)
    flashbutton:SetSize(100, 50)
    flashbutton:SetText( "" )
    flashbutton.DoClick = function()
        if GetConVarNumber("Flash") == 1 then 
            RunConsoleCommand("Flash", "0")
        else 
            RunConsoleCommand("Flash", "1")
            bandicout = true
        end
    end

    flashbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(60, 179, 113, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "Flash" ) == 1 then
            draw.SimpleText( "FLASH", "font2", 50, 14 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("Flash") == 0 then
            draw.SimpleText( "FLASH", "font2", 50, 14 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end

    local bhopbutton = vgui.Create( "DButton", menu )
    bhopbutton:SetPos(20, 150)
    bhopbutton:SetSize(100, 50)
    bhopbutton:SetText( "" )
    bhopbutton.DoClick = function()
        if GetConVarNumber( "Bhop" ) == 1 then 
            RunConsoleCommand( "Bhop", "0" )
        else 
            RunConsoleCommand( "Bhop", "1" )
        end
    end

    bhopbutton.Paint = function(self, w, h)
        draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
        surface.SetDrawColor( 60, 179, 113, 255 )
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "Bhop" ) == 1 then
            draw.SimpleText( "BHOP", "font2", 50, 14 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber( "Bhop" ) == 0 then
            draw.SimpleText( "BHOP", "font2", 50, 14 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end

    local handbutton = vgui.Create( "DButton", menu )
    handbutton:SetPos(20, 215)
    handbutton:SetSize(100, 50)
    handbutton:SetText( "" )
    handbutton.DoClick = function()
        if GetConVarNumber( "Hand" ) == 1 then 
            RunConsoleCommand( "Hand", "0" )
        else 
            RunConsoleCommand( "Hand", "1" )
        end
    end

    handbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(60, 179, 113, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "Hand" ) == 1 then
            draw.SimpleText( "DRAW HAND", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber( "Hand" ) == 0 then
            draw.SimpleText( "DRAW HAND", "font1", 50, 15 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end

    local fovbutton = vgui.Create( "DButton", menu )
    fovbutton:SetPos(20, 280)
    fovbutton:SetSize(100, 50)
    fovbutton:SetText( "" )
    fovbutton.DoClick = function()
        if GetConVarNumber("zkfov") == 1 then 
            RunConsoleCommand( "zkfov", "0" )
        else 
            RunConsoleCommand( "zkfov", "1" )
        end
    end

    fovbutton.Paint = function( self, w, h )
        draw.RoundedBox( 2, 0, 0, w, h, colors_matterial.faded_gris )
        surface.SetDrawColor( 60, 179, 113, 255 )
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "zkfov" ) == 1 then
            draw.SimpleText( "FOV", "font2", 50, 14 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber( "zkfov" ) == 0 then
            draw.SimpleText( "FOV", "font2", 50, 14 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end

    local DermaNumSlider = vgui.Create( "DNumSlider", menu )
    DermaNumSlider:SetPos( - 63, 345 )				
    DermaNumSlider:SetSize( 215, 12 )			
    DermaNumSlider:SetMin( 70 )				
    DermaNumSlider:SetMax( 150 )				
    DermaNumSlider:SetDecimals( 0 )				
    DermaNumSlider:SetConVar( "value_fov" )	
    DermaNumSlider.OnValueChanged = function( self, value )
    end

    function DermaNumSlider.Slider:Paint (w, h)
        draw.RoundedBox( 100, 0, 0, w, h, Color( 45, 45, 45, 250 ))
        surface.SetDrawColor( 60, 179, 113, 255 )--     surface.DrawOutlinedRect( 0, 0, w, h, 1.5 )
    end

    function DermaNumSlider.Slider.Knob:Paint(w,h)
        draw.RoundedBox( 99, 0, 0, w-8, h-2, Color( 60, 179, 113, 255 ))
    end

    local DermaCheckbox =  vgui.Create( "DCheckBoxLabel", menu) -- Create the checkbox
    DermaCheckbox:SetPos( 25, 370 )	
    DermaCheckbox:SetText("")					-- Set the text next to the box
    DermaCheckbox:SetConVar("3eme")			
    DermaCheckbox:SetValue( false )						
    DermaCheckbox:SizeToContents()		
    if SetValue == true then 
        RunConsoleCommand( "3eme", "1" )
    end

    local DermaCheckbox =  vgui.Create( "DCheckBoxLabel", menu) -- Create the checkbox
    DermaCheckbox:SetPos( 180, 370 )	
    DermaCheckbox:SetText("")					-- Set the text next to the box
    DermaCheckbox:SetConVar("physgun")			
    DermaCheckbox:SetValue( false )						
    DermaCheckbox:SizeToContents()		
    if SetValue == true then 
        RunConsoleCommand( "physgun", "1" )
    end

    local DermaNumSlider1 = vgui.Create( "DNumSlider", menu )
    DermaNumSlider1:SetPos( 100, 345 )				
    DermaNumSlider1:SetSize( 215, 12 )			
    DermaNumSlider1:SetMin( 0 )		
    DermaNumSlider1:SetMax( 200 )				
    DermaNumSlider1:SetDecimals( 0 )				
    DermaNumSlider1:SetConVar( "physgun_value" )	
    DermaNumSlider1.OnValueChanged = function( self, value )
    end

    function DermaNumSlider1.Slider:Paint (w, h)
        draw.RoundedBox( 100, 0, 0, w, h, Color( 45, 45, 45, 250 ))
        surface.SetDrawColor( 60, 179, 113, 255 )
    end

    function DermaNumSlider1.Slider.Knob:Paint(w,h)
        draw.RoundedBox( 99, 0, 0, w-8, h-2, Color( 60, 179, 113, 255 ))
    end

    local physgunbutton = vgui.Create( "DButton", menu )
    physgunbutton:SetPos(180, 80)
    physgunbutton:SetSize(100, 50)
    physgunbutton:SetText( "" )
    physgunbutton.DoClick = function()        
        if GetConVarNumber("bindd") == 1 then 
            RunConsoleCommand("bindd", "0")
            if IsValid(menubind) == true then
                menubind:Close()
            end
        else 
            RunConsoleCommand("bindd", "1")
            bindmenu()
        end
    end
    physgunbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(60, 179, 113, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "bindd" ) == 1 then
            draw.SimpleText( "BIND", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("bindd") == 0 then
            draw.SimpleText( "BIND", "font1", 50, 15 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 

    local visualbutton = vgui.Create( "DButton", menu )
    visualbutton:SetPos(180, 150)
    visualbutton:SetSize(100, 50)
    visualbutton:SetText( "" )
    visualbutton.DoClick = function()        
        if GetConVarNumber("visu") == 1 then 
            RunConsoleCommand( "visu", "0" )
        else 
            RunConsoleCommand( "visu", "1" )
        end
       
       if IsValid(menuvisu) == true then
            menuvisu:Close()
        
        else 
            visualmenu()
        end
    end
    visualbutton.Paint = function(self, w, h)
        draw.RoundedBox(2, 0, 0, w, h, colors_matterial.faded_gris)
        surface.SetDrawColor(60, 179, 113, 255)
        surface.DrawOutlinedRect( 0, 0, 100, 50, 3 )
        if GetConVarNumber( "visu" ) == 1 then
            draw.SimpleText( "VISUAL", "font1", 50, 15 , colors_matterial.col_lime , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        elseif GetConVarNumber("visu") == 0 then
            draw.SimpleText( "VISUAL", "font1", 50, 15 , colors_matterial.col_red , TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP )
        end
    end 
end 

