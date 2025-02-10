local M = {}

---@alias HSL table<number>

---@alias RGB table<number>

---@param hsl HSL
---@return RGB
local function hsl_to_rgb(hsl)
    local h = hsl[1] / 360
    local s = hsl[2] / 100
    local l = hsl[3] / 100

    if s == 0 then
        return { l, l, l, }
    end

    local function hue_to_rgb(p, q, t)
        if t < 0 then t = t + 1 end
        if t > 1 then t = t - 1 end
        if t < 1 / 6 then return p + (q - p) * 6 * t end
        if t < 1 / 2 then return q end
        if t < 2 / 3 then return p + (q - p) * (2 / 3 - t) * 6 end
        return p
    end

    local q = l < 1 / 2 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q

    return { hue_to_rgb(p, q, h + 1 / 3) * 255, hue_to_rgb(p, q, h) * 255, hue_to_rgb(p, q, h - 1 / 3) * 255, }
end

---@param rgb RGB
---@return HSL
local function rgb_to_hsl(rgb)
    local r = rgb[1] / 255
    local g = rgb[2] / 255
    local b = rgb[3] / 255

    local max, min = math.max(r, g, b), math.min(r, g, b)
    b = max + min
    local h = b / 2

    if max == min then
        return { 0, 0, h, }
    end

    local s, l = h, h
    local d = max - min
    s = l > 1 / 2 and d / (2 - b) or d / b

    if max == r then
        h = (g - b) / d + (g < b and 6 or 0)
    elseif max == g then
        h = (b - r) / d + 2
    elseif max == b then
        h = (r - g) / d + 4
    end

    return { h * 1 / 6 * 360, s * 100, l * 100, }
end

---@param foreground_hsl HSL foreground color
---@param opacity number number between 0 and 1
---@param background_hsl HSL background color
---@return HSL
function M.blend(foreground_hsl, opacity, background_hsl)
    local function simple_blend_channel(i)
        return opacity * foreground_hsl[i] + ((1 - opacity) * background_hsl[i])
    end

    local foreground_hue = foreground_hsl[1]
    local background_hue = background_hsl[1]

    local hue = nil
    if math.abs(foreground_hue - background_hue) > 180 then
        hue = opacity * foreground_hue - ((1 - opacity) * background_hue)
    else
        hue = opacity * foreground_hue + ((1 - opacity) * background_hue)
    end

    return { hue, simple_blend_channel(2), simple_blend_channel(3), }
end

---@param foreground_hsl HSL foreground color
---@param opacity number number between 0 and 1
---@param background_hsl HSL background color
---@return HSL
function M.blend_as_rgb(foreground_hsl, opacity, background_hsl)
    local foreground_rgb = hsl_to_rgb(foreground_hsl)
    local background_rgb = hsl_to_rgb(background_hsl)

    local function blend_channel(i)
        return opacity * foreground_rgb[i] + ((1 - opacity) * background_rgb[i])
    end

    return rgb_to_hsl({ blend_channel(1), blend_channel(2), blend_channel(3), })
end

---@param hsl HSL color to lighten
---@param amount number number between 0 and 100
---@return HSL
function M.lighten(hsl, amount)
    local lightness = hsl[3]

    local new_lightness = lightness + amount

    if new_lightness > 100 then
        new_lightness = 100
    elseif new_lightness < 0 then
        new_lightness = 0
    end

    return { hsl[1], hsl[2], new_lightness, }
end

---@param hsl HSL color to darken
---@param amount number number between 0 and 100
---@return HSL
function M.darken(hsl, amount)
    local lightness = hsl[3]

    local new_lightness = lightness - amount

    if new_lightness > 100 then
        new_lightness = 100
    elseif new_lightness < 0 then
        new_lightness = 0
    end

    return { hsl[1], hsl[2], new_lightness, }
end

---@param hsl HSL color to saturate
---@param amount number number between 0 and 100
---@return HSL
function M.saturate(hsl, amount)
    local saturation = hsl[2]

    local new_saturation = saturation + amount

    if new_saturation > 100 then
        new_saturation = 100
    elseif new_saturation < 0 then
        new_saturation = 0
    end

    return { hsl[1], new_saturation, hsl[3], }
end

---@param hsl HSL color to desaturate
---@param amount number number between 0 and 100
---@return HSL
function M.desaturate(hsl, amount)
    local saturation = hsl[2]

    local new_saturation = saturation - amount

    if new_saturation > 100 then
        new_saturation = 100
    elseif new_saturation < 0 then
        new_saturation = 0
    end

    return { hsl[1], new_saturation, hsl[3], }
end

---@param hsl HSL
---@return string
function M.hsl_to_hex(hsl)
    local rgb = hsl_to_rgb(hsl)

    return string.format("#%02x%02x%02x", rgb[1], rgb[2], rgb[3])
end

return M
