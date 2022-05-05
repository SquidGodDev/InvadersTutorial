local pd <const> = playdate
local gfx <const> = pd.graphics

class('ScreenShake').extends(gfx.sprite)

function ScreenShake:init()
    self.shakeAmount = 0
    self:add()
end

function ScreenShake:setShakeAmount(amount)
    self.shakeAmount = amount
end

function ScreenShake:update()
    if self.shakeAmount > 0 then
        local shakeAngle = math.random()*math.pi*2
        local shakeX = math.floor(math.cos(shakeAngle))*self.shakeAmount
        local shakeY = math.floor(math.sin(shakeAngle))*self.shakeAmount
        self.shakeAmount -= 1
        pd.display.setOffset(shakeX, shakeY)
    else
        pd.display.setOffset(0, 0)
    end
end