function onUpdate(elapsed) 
    for i=0,3 do
    noteTweenAlpha(i+16, i, math.floor(curStep/9999), 0.3)
    end
end