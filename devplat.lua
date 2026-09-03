--[[INFO
local deviceInfo = {
            vr flag
            ["A"] = UserInputService.VREnabled,
            console flag
            ["B"] = isTenFootInterface(GuiService),
            windows flag
            ["C"] = GuiService.IsWindows,
            version
            ["D"] = getfenv().version(),
            gyro flag
            ["E"] = UserInputService.GyroscopeEnabled or UserInputService.AccelerometerEnabled,
            touch screen flag
            ["F"] = UserInputService.TouchEnabled,
            keyboard flag
            ["G"] = UserInputService.KeyboardEnabled,
            mouse flag
            ["H"] = UserInputService.MouseEnabled,
            apple exlusive emoji flag
            ["I"] = TextService:getTextSize(utf8.char(65535), 16, Enum.Font.SourceSans, Vector2.one * 1000) ~= TextService:getTextSize(utf8.char(63743), 16, Enum.Font.SourceSans, Vector2.one * 1000)
        }
]]
local JSON = game:GetService("HttpService")
local data = JSON:JSONDecode(game:HttpGet("https://weao.xyz/api/versions/current"))
local win = data["WindowsResponse"]["version"]
local mac = data["MacResponse"]["version"]
local ios = data["iOSResponse"]["version"]
local android = data["AndroidResponse"]["version"]
return {
            ["Windows"] = {
                ["A"] = false,
                ["B"] = false,
                ["C"] = true,
                ["D"] = win,
                ["E"] = false,
                ["F"] = false,
                ["G"] = true,
                ["H"] = true,
                ["I"] = false
            },
            ["Linux"] = {
                ["A"] = false,
                ["B"] = false,
                ["C"] = false,
                ["D"] = android,
                ["E"] = false,
                ["F"] = false,
                ["G"] = true,
                ["H"] = true,
                ["I"] = true
            },
            ["MacOS"] = {
                ["A"] = false,
                ["B"] = false,
                ["C"] = false,
                ["D"] = mac,
                ["E"] = false,
                ["F"] = false,
                ["G"] = true,
                ["H"] = true,
                ["I"] = true
            },
            ["Android"] = {
                ["A"] = false,
                ["B"] = false,
                ["C"] = false,
                ["D"] = android,
                ["E"] = true,
                ["F"] = true,
                ["G"] = false,
                ["H"] = false,
                ["I"] = false
            },
            ["VR"] = {
                ["A"] = true,
                ["B"] = false,
                ["C"] = true,
                ["D"] = win,
                ["E"] = true,
                ["F"] = false,
                ["G"] = true,
                ["H"] = true,
                ["I"] = false
            },
            ["Console"] = {
                ["A"] = false,
                ["B"] = true,
                ["C"] = false,
                ["D"] = win,
                ["E"] = false,
                ["F"] = false,
                ["G"] = true,
                ["H"] = true,
                ["I"] = false
            },
            ["IOS"] = {
                ["A"] = false,
                ["B"] = false,
                ["C"] = false,
                ["D"] = ios,
                ["E"] = false,
                ["F"] = true,
                ["G"] = false,
                ["H"] = false,
                ["I"] = true
            }
        }
