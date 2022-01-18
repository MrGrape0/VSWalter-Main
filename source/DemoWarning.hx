package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;

class DemoWarning extends MusicBeatState
{
    public static var leftState:Bool = false;
    
	override function create()
    {
        super.create();
        var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        add(bg);
        var txt:FlxText = new FlxText(0, 0, FlxG.width,
            "Hello!Thanks for playing the Demo version!It means a lot for us."
            +"\nIn mind this is a only a demo,it may contain some errors/bugs."
            +"\nIn case you found anything weird,please DM me (Grape#4265) and then we can see the problem."
            + "\nPress Space to continue!Or press Esc to return.",
            32);
        txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
        txt.screenCenter();
        add(txt);

    }

	override function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.SPACE)
		{
			leftState = true;
            FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
            FlxTransitionableState.defaultTransIn;
			FlxG.switchState(new MainMenuState());
		}
        if (controls.BACK)
        {
           leftState = true;
           FlxG.sound.play(Paths.sound('cancelMenu'));
           FlxTransitionableState.defaultTransOut;
           FlxG.switchState(new TitleState());
        }
		super.update(elapsed);
	}

}
