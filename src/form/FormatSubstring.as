/**
 * @author Malex
 */
package form
{
	import flash.text.TextFormat;
	import value.Value;
	
	public class FormatSubstring extends Format
	{
		final public function FormatSubstring()
		{
			super();
		}
		
		override protected function init():void
		{
			_textFormat = new TextFormat();
			_textFormat.size = Value.textSize_11;
		}
	}
}