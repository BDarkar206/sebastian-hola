package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class CreditsState extends MusicBeatState
{
	var replayButton:FlxSprite;
	var cancelButton:FlxSprite;

	var replaySelect:Bool = false;

	public function new():Void
	{
		super();
	}

	override function create()
	{
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('creditsaydios'));
		add(bg);

		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (controls.BACK) {
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new MainMenuState());
		}
	}
}
