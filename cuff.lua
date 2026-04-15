local _0xA={["\67\117\102\102"]="\67\117\102\102",["\84\80\80"]=10,["\66\80\84"]=20,["\68\66\66"]=0,["\84\65\80"]=true}

local _0xB=game:GetService("\80\108\97\121\101\114\115")
local _0xC=_0xB.LocalPlayer
local _0xD=_0xC.Character or _0xC.CharacterAdded:Wait()

local function _0xE(x)return string.char(table.unpack(x))end

local _0xF=_0xD:WaitForChild(_0xE({102,114,101,101,99,117,102,102}),5)
if not _0xF then return end

local _0xG=_0xF:WaitForChild(_0xE({82,101,109,111,116,101,69,118,101,110,116}),5)
if not _0xG or not _0xG:IsA(_0xE({82,101,109,111,116,101,69,118,101,110,116})) then return end

local function _0xH(c)
    local t={}
    if _0xA["\84\65\80"] then
        local n={"HumanoidRootPart","Head","Torso","UpperTorso","LowerTorso","Handle","RootPart"}
        for _,v in pairs(n) do
            local p=c:FindFirstChild(v)
            if p and p:IsA("BasePart") then table.insert(t,p) end
        end
        if #t==0 then
            for _,o in pairs(c:GetDescendants()) do
                if o:IsA("BasePart") then table.insert(t,o) break end
            end
        end
    end
    return t
end

local function _0xI(p)
    local c=p.Character
    if not c then return false end

    local pr=_0xH(c)
    if #pr==0 then return false end

    for i=1,_0xA["\84\80\80"] do
        task.spawn(function()
            for j=1,_0xA["\66\80\84"] do
                for _,pt in pairs(pr) do
                    pcall(function()
                        _0xG:FireServer(_0xA["\67\117\102\102"],pt)
                    end)
                end
                if _0xA["\68\66\66"]>0 then task.wait(_0xA["\68\66\66"]) end
            end
        end)
    end

    return true
end

local _0xJ=_0xB:GetPlayers()
local _0xK={}

for _,p in pairs(_0xJ) do
    if p~=_0xC then table.insert(_0xK,p) end
end

for _,t in pairs(_0xK) do
    task.spawn(function()
        _0xI(t)
    end)
    task.wait(0.005)
end

_G[_0xE({82,101,116,114,121,67,117,102,102})]=function()
    for _,t in pairs(_0xK) do
        _0xI(t)
        task.wait(0.05)
    end
end
