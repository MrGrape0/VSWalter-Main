function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -900, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	makeLuaSprite('Painting1', 'Painting1', 970, 110);
	setScrollFactor('Painting1', 0.9, 0.9);
	scaleObject('Painting1', 1.3, 1.3);

	makeLuaSprite('Painting2', 'Painting2', 500, 90);
	setScrollFactor('Painting2', 0.9, 0.9);
	scaleObject('Painting2', 1.4, 1.4);
	setProperty('Painting2.flipX', true); --mirror sprite horizontally

	makeLuaSprite('Painting3', 'Painting3', -10, 90);
	setScrollFactor('Painting3', 0.9, 0.9);
	scaleObject('Painting3', 1.4, 1.4);

        makeLuaSprite('Box1', 'Box1', -40, 510);
	setScrollFactor('Box1', 0.9, 0.9);
	scaleObject('Box1', 1.3, 1.3);

	makeLuaSprite('Box2', 'Box2', 1100, 550);
	setScrollFactor('Box2', 0.9, 0.9);
	scaleObject('Box2', 1.3, 1.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('Curtains', 'Curtains', -500, -300);
		setScrollFactor('Curtains', 1.3, 1.3);
		scaleObject('Curtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
    addLuaSprite('Painting3', false);
    addLuaSprite('Painting2', false);
    addLuaSprite('Painting1', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('Curtains', false);
	addLuaSprite('Box1', false);
	addLuaSprite('Box2', false);

    setProperty('Painting1.antialiasing', true)
    setProperty('Painting2.antialiasing', true)
    setProperty('Painting3.antialiasing', true)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end