/**
 * @author Malex
 */
package form
{
	import flash.text.TextFormat;
	import value.Value;
	
	/**
	 * Фотрматирование заголовка страницы.
	 */	
	public class FormatHeader extends Format
	{
		final public function FormatHeader()
		{
			super();
		}
		
		override protected function init():void
		{
			_textFormat = new TextFormat();
			_textFormat.size = Value.textSize_12;
			_textFormat.bold = true;
		}
	}
}