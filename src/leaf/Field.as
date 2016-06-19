/**
 * @author Malex
 */
package leaf
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * Абстрактный класс, от него наследуются Input.as/Title.as
	 */	
	public class Field extends Sprite
	{
		/** Текстовое поле */
		protected var _textField:TextField;
		
		/** Текст */
		protected var _text:String;
		
		/** Ширина объекта */
		protected var _width:Number = 50;
		
		/** Высота объекта */
		protected var _height:Number = 26;
		
		/** Видимая граница объекта */
		protected var _border:Boolean;
		
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		/**
		 * Конструктор абстрактного класса.
		 * @param text Текст по умолчанию
		 * @param width Ширина объекта
		 * @param height Высота объекта
		 */			
		public function Field(width:Number, height:Number, border:Boolean = false)
		{
			if(width) _width = width;
			if(height) _height = height;
			_border = border;
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		/**
		 * Инициализирует объект 
		 */		
		protected function init():void
		{
			// for override
		}
		
		
		
		//***********************************************
		//
		// PUBLIC FUNCTIONS
		//
		//***********************************************
		
		/**
		 * Задает форматирование текста.
		 */		
		public function setTextFormat(format:TextFormat):void
		{
			// for override
		}
		
		//***********************************************
		//
		// GET / SET FUNCTIONS
		//
		//***********************************************
		
		/**
		 * Возвращает объект TextField
		 */	
		public function get textField():TextField
		{
			return _textField;
		}
		
		/**
		 * Определяет/возвращает текстовое содержимое объекта 
		 */		
		public function get text():String
		{
			return _textField.text;
		}
		public function set text(text:String):void
		{
			_textField.text = text;
		}
		
		
		/**
		 * Определяет/возвращает ширину объекта
		 */		
		override public function get width():Number
		{
			return _width;
		}
		override public function set width(w:Number):void
		{
			_width = w;
			_textField.width = _width;
		}
		
		
		/**
		 * Определяет/возвращает высоту объекта
		 */		
		override public function get height():Number
		{
			return _height;
		}
		override public function set height(h:Number):void
		{
			_height = h;
			_textField.height = _height;
		}
	}
}