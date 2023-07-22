
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'Sky', -1500, -1500);
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 5, 5);

	makeLuaSprite('Ground', 'Ground', -1000, 720);
	setScrollFactor('Ground', 1, 1);
	scaleObject('Ground', 1, 1);

	makeLuaSprite('Clouds', 'Clouds', -200, -300);
	setScrollFactor('Clouds', 0.8, 0.8);
	scaleObject('Clouds', 1, 1);

	makeLuaSprite('Foreground', 'Foreground', -350, 00);
	setScrollFactor('Foreground', 1, 1);
	scaleObject('Foreground', 1, 1);

	makeAnimatedLuaSprite('lvlBG','BackLvl',-500,0)addAnimationByPrefix('lvlBG','BG','BG',24,true)
	objectPlayAnimation('lvlBG','BG',false)
	setScrollFactor('lvlBG', 0.6, 0.6);

	makeAnimatedLuaSprite('Coins','Coins',900,500)addAnimationByPrefix('Coins','Coins','coins',24,true)
	objectPlayAnimation('Coins','Coins',false)
	setScrollFactor('Coins', 1, 1);
	scaleObject('Coins', 0.8, 0.8);

	-- sprites that only load if Low Quality is turned off


	addLuaSprite('stageback', false);
	addLuaSprite('lvlBG', false);
	addLuaSprite('Clouds', false);
	addLuaSprite('Ground', false);
	addLuaSprite('Coins', false);
	addLuaSprite('Foreground', true);


end