local water_shader = dxCreateShader( "fx/water_vc.fx")
local water = dxCreateTexture( "images/waterclear256.png")
engineApplyShaderToWorldTexture(water_shader, "waterclear256")
dxSetShaderValue (water_shader, "Tex0", water)