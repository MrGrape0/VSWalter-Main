package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

var walter:FlxSprite;

class WalterEasterEgg extends MusicBeatState
{

	var replaySelect:Bool = false;

	var walter:FlxSprite;

	public function new():Void
	{
		super();
	}

	override function create()
	{
		if (FlxG.sound.music != null)
			FlxG.sound.music.stop();

	   walter = new FlxSprite().loadGraphic(Paths.image('walter'));
	   walter.setGraphicSize(Std.int(walter.width * 2));
	   walter.screenCenter();
	   add(walter);
 
	   #if desktop
	   //Discord update
	   DiscordClient.changePresence("Looking at a dog.", null);
	   #end

	   trace('Dog jumpscare!!!');

		super.create();
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			{
				MusicBeatState.switchState(new MainMenuState());
				FlxG.sound.playMusic(Paths.music('freakyMenu'));
			}
		}

		super.update(elapsed);
	}
}
