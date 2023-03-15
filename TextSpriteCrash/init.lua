function OnWorldPreUpdate()
    -- Doesn't always crash so keep spawning more
    if GameGetFrameNum() % 30 == 0 then
        local player = EntityGetWithTag("player_unit")[1]
        local x, y = EntityGetTransform(player)
        e = EntityLoad("mods/TextSpriteCrash/entity.xml", x, y)
    end

    -- Need to wait a frame so that the visuals actually exist
    if GameGetFrameNum() % 30 == 1 then
        EntityInflictDamage(e, 100, "DAMAGE_PROJECTILE", "", "NORMAL", 0, 0)
    end
end
