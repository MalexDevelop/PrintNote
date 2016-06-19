/**
 * @author Malex
 */
package form
{
	import flash.text.TextFormat;
	import value.Value;
		
	public class FormatString extends Format
	{
		/**
		 * Данное форматирование применимо к заголовкам
		 * без жирного начертания и с кеглем 12px.
		 */	
		final public function FormatString()
		{
			super();
		}
		
		override protected function init():void
		{
			_textFormat = new TextFormat();
			_textFormat.size = Value.textSize_12;
		}
	}
}