/**
 * @author Malex
 */
package leaf
{
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Заголовок, статическое текстовое поле
	 */	
	public class Title extends Field
	{
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		/**
		 * Создает статический текст
		 * @param text Текстовая метка
		 * @param width Ширина объекта
		 * @param height Высота объекта
		 * @param bold Жирное начертание текстовой метки. По умолчаню false.
		 */
		public function Title(text:String, width:Number, height:Number, border:Boolean = false)
		{
			_text = text;
			super(width, height, border);
			init();
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		override protected function init():void
		{
			mouseEnabled = false;
			mouseChildren = false;
			
			_textField = new TextField();
			_textField.width = _width;
			_textField.height = _height;
			_textField.border = _border;
			_textField.text = _text;
			addChild(_textField);
		}
		
		override public function setTextFormat(format:TextFormat):void
		{
			_textField.setTextFormat(format);
		}
	}
}