-- ============================================
--  AWA V2 精简版
--  作者: AWA
--  版本: V2.0
-- ============================================

-- 加载UI库
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/MoonX/main/MoonX.lua"))()

if not Library then
    print("❌ UI库加载失败！")
    return
end

-- ============================================
--  创建主窗口
-- ============================================
local Window = Library:CreateWindow("🔥 AWA V2", "主菜单")

-- ============================================
--  功能标签页
-- ============================================
local MainTab = Window:CreateTab("💀 功能", true)
local VisualTab = Window:CreateTab("👁️ 视觉", false)

-- ============================================
--  💀 功能标签页
-- ============================================

-- 飞行
MainTab:CreateButton("✈️ 飞行", "自由飞行模式", function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/brP8SAfJ"))()
        Library:Notify("✅ 飞行已开启", 2)
    end)
end)

-- 黑洞
MainTab:CreateButton("🕳️ 黑洞", "生成黑洞吸引周围物体", function()
    pcall(function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Super-ring-Parts-V6-28581"))()
        Library:Notify("✅ 黑洞已生成", 2)
    end)
end)

-- 踏空行走
MainTab:CreateButton("👣 踏空行走", "在空中行走", function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
        Library:Notify("✅ 踏空行走已开启", 2)
    end)
end)

-- 防摔伤
MainTab:CreateButton("🛡️ 防摔伤", "从高处掉落不受伤害", function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/Fall-injury/main/防止摔落伤害"))()
        Library:Notify("✅ 防摔伤已开启", 2)
    end)
end)

-- 刷钱
MainTab:CreateButton("💰 刷钱", "快速刷取游戏货币", function()
    pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/3869823500-hash/AWA/refs/heads/main/AWA.lua'))()
        Library:Notify("✅ 刷钱脚本已加载", 2)
    end)
end)

-- 加速
MainTab:CreateButton("🏃 加速行走", "提高移动速度", function()
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        Library:Notify("✅ 速度已设为 50", 2)
    end)
end)

-- 超级跳跃
MainTab:CreateButton("🦘 超级跳跃", "提高跳跃高度", function()
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
        Library:Notify("✅ 跳跃高度已设为 100", 2)
    end)
end)

-- ============================================
--  👁️ 视觉标签页
-- ============================================

-- 透视
VisualTab:CreateToggle("🔲 透视", "显示所有玩家位置", function(state)
    pcall(function()
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character then
                for _, part in pairs(v.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if state then
                            part.LocalTransparencyModifier = 0.5
                        else
                            part.LocalTransparencyModifier = 0
                        end
                    end
                end
            end
        end
        Library:Notify(state and "✅ 透视已开启" or "❌ 透视已关闭", 2)
    end)
end)

-- 夜视
VisualTab:CreateToggle("🌙 夜视", "提高亮度看清黑暗", function(state)
    pcall(function()
        game.Lighting.Brightness = state and 10 or 0.5
        game.Lighting.ClockTime = state and 12 or 0
        Library:Notify(state and "✅ 夜视已开启" or "❌ 夜视已关闭", 2)
    end)
end)

-- ============================================
--  启动通知
-- ============================================
Library:Notify("🔥 AWA V2 精简版已加载！", 2)
Library:Notify("👨‍💻 作者: AWA", 2)

print("✅ AWA V2 精简版加载成功！")
print("📌 功能: 飞行 | 黑洞 | 踏空 | 防摔 | 刷钱 | 加速 | 跳跃 | 透视 | 夜视")
