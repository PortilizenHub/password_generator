package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

using StringTools;

class PlayState extends FlxState
{

	var pass:FlxText;

	var passwordThing:String;

	var letterData:Array<String> = [
		'a',
		'b',
		'c',
		'd',
		'e',
		'f',
		'g',
		'h',
		'i',
		'j',
		'k',
		'l',
		'm',
		'n',
		'o',
		'p',
		'q',
		'r',
		's',
		't',
		'u',
		'v',
		'w',
		'x',
		'y',
		'z',
		'0',
		'9',
		'8',
		'7',
		'6',
		'5',
		'4',
		'3',
		'2',
		'1'
	];

	var passwordsGenerated:Int = 1;

	override public function create()
	{
		trace('password NO.' + passwordsGenerated);

		passwordThing = letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)];

		pass = new FlxText(180, 60, 0, passwordThing, 24);
		add(pass);

		super.create();
	}

	override public function update(elapsed:Float)
	{

		if (FlxG.keys.justReleased.R)
		{
			passwordsGenerated++;

			trace('password NO.' + passwordsGenerated);
			
			passwordThing = letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
				+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
				+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
				+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
				+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
				+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)];

			pass.text = passwordThing;
		}

		super.update(elapsed);
	}

	function passwordString()
	{
		var password:String = letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)]
			+ letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)] + letterData[FlxG.random.int(0, letterData.length - 1)];

		return password;
	}
}
