LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons

LGRI.UI = {}

local wim = GetWindowManager()

function LGRI.UI.BuildUI()
    local LGRIFrame = wim:CreateTopLevelWindow("LGRITLW")
    LGRIFrame:SetDimensions(75, 30)
    LGRIFrame:SetAnchor(CENTER, GuiRoot, TOP, 0, 100)
    LGRIFrame:SetMovable(false)
    LGRIFrame:SetHidden(not LGRI.savedVars.visible)

    local LGRIRaceIcon = wim:CreateControl("LGRIRaceIcon", LGRIFrame, CT_TEXTURE)
    LGRIRaceIcon:SetDimensions(30, 30)
    LGRIRaceIcon:SetAnchor(CENTER, LGRIframe, LEFT, 0, 0)
    LGRIRaceIcon:SetTexture("")
    LGRIRaceIcon:SetMouseEnabled(true)

    local LGRIClassIcon = wim:CreateControl("LGRIClassIcon", LGRIFrame, CT_TEXTURE)
    LGRIClassIcon:SetDimensions(30, 30)
    LGRIClassIcon:SetAnchor(CENTER, LGRIframe, CENTER, 0, 0)
    LGRIClassIcon:SetTexture("")

    local LGRIRoleIcon = wim:CreateControl("LGRIRoleIcon", LGRIFrame, CT_TEXTURE)
    LGRIRoleIcon:SetDimensions(30, 30)
    LGRIRoleIcon:SetAnchor(CENTER, LGRIframe, RIGHT, 0, 0)
    LGRIRoleIcon:SetTexture("")

    LGRI.UI.LGRIFrame = LGRIFrame
    LGRI.UI.LGRIRaceIcon = LGRIRaceIcon
    LGRI.UI.LGRIClassIcon = LGRIClassIcon
    LGRI.UI.LGRIRoleIcon = LGRIRoleIcon
end