/**
 * @author Malex
 */
package form
{
	import flash.text.TextFormat;

	/**
	 * Шаблон - Одиночка.
	 * Абстрактный/базовый класс форматирования текста.
	 * Возвращает фотрмат текста.
	 */	
	public class Format
	{
		/** объект класса Format */	
		protected var _format:Format;
		/** Объект класса TextFormat */
		protected var _textFormat:TextFormat;
		
		final public function Format()
		{
			init();
		}
		
		/**
		 * Создает объект TextFormat
		 */		
		protected function init():void
		{
			// for override
		}
		
		final public function get textFormat():TextFormat
		{
			return _textFormat;
		}
	}
}