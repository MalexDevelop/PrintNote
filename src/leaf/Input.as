/**
 * @author Malex
 */
package leaf
{	
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import mvc.ctrl.Controller;
	import mvc.models.Model;

	/**
	 * Динамическое текстовое поле
	 */	
	public class Input extends Field implements IInput, IMode
	{
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		/** Логическое значение указывающее на то, что в данном поле разрешены только цифры */		
		private var _isRestrict:Boolean = false;
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		protected var _controller:Controller;
		
		/**
		 * Создает Динмическое текстовое поле
		 * @param text Текст
		 * @param width Ширина объекта
		 * @param height Высота объекта
		 * @param border Pамка вокруг объекта
		 */		
		public function Input(width:Number, height:Number, border:Boolean = false)
		{
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
			_textField = new TextField();
			_textField.width = _width;
			_textField.height = _height;
			_textField.border = _border;
			addChild(_textField);
		}
		
		override public function setTextFormat(format:TextFormat):void
		{
			_textField.defaultTextFormat = format;
		}
		
		//***********************************************
		//
		// PUBLIC FUNCTIONS
		//
		//***********************************************
		
		public function setUtils(model:Model, cont:Controller = null):void
		{
			_model = model;
			_model.addEventListener(Event.CHANGE, changeHandler);
			_controller = cont;
		}
		
		/**
		 * @param value Набор символов, которые могут быть введены пользователем в текстовом поле. 
		 */		
	/*	public function restrict(value:String):void
		{
			_textField.restrict = value;
		}*/
		
		
		/**
		 * Очищает текстовое поле от текста
		 */		
		final public function clearText():void
		{
			text = "";
		}
		
		//***********************************************
		//
		// GET / SET	
		//
		//***********************************************
		
		/**
		 * Определяет/возвращает текстовое содержимое объекта 
		 */		
		override public function get text():String
		{
			return _model.text;
		}
		override public function set text(text:String):void
		{
			if(_controller){
				_controller.text = text;
			}else{
				_model.text = text;
			}
		}
		
		
		/**
		 * Логическое значение указывающее на то, что редактируемое поле ограничено только вводом цыфр.
		 */		
		public function get isRestrict():Boolean
		{
			return _isRestrict;
		}
		public function set isRestrict(value:Boolean):void
		{
			_isRestrict = value;
		}
		
		//******************************************************
		//
		// HANDLERS
		//
		//******************************************************
		
		protected function changeHandler(event:Event):void
		{
			if(_controller){
				_textField.text = _controller.text;
			}else{
				_textField.text = text;
			}
			/**/
			//_textField.text = text;
		}
	}
}