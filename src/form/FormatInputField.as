/**
 * @author Malex
 */
package form
{
	import flash.text.TextFormat;
	import value.Value;
	
	public class FormatInputField extends Format
	{
		/**
		 * Форматирование стандартного поля для воода текста с кеглем 14рх
		 */		
		final public function FormatInputField()
		{
			super();
		}
		
		override protected function init():void
		{
			_textFormat = new TextFormat();
			_textFormat.size = Value.textSize_14;
		}
	}
}