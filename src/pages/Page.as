/**
 * @author Malex
 */
package pages
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.text.TextFormat;
	
	import leaf.IInput;
	import leaf.Title;
	
	import value.Value;
	
	/**
	 * Базовый класс для печатных листов.
	 */	
	public class Page extends Sprite implements IInput
	{
		/** Заголовок сектора. Например: "Перший заголовок" */
		protected var _label:String;
		/** Ширина объекта */
		protected var _width:Number = 595;
		/** Высота объекта */
		protected var _height:Number = 842;
		/** Тестовое поле */
		protected var _textField:Title;
		
		public function Page(label:String)
		{
			_label = label;
			init();
		}
		
		protected function init():void
		{
			var format:TextFormat = new TextFormat();
			format.bold = true;
			format.size = Value.textSize_11;
			
			_textField = new Title(_label, 105, 18, Border.status);
			_textField.setTextFormat(format);
			addChild(_textField);
		}
		
		protected function addChildren():void
		{
			// for override
		}
		
		public function clearText():void
		{
			for(var i:int = 0; i < this.numChildren; i++)
			{
				var child:IInput = getChildAt(i) as IInput;
				if(child){
					child.clearText();
				}
			}
		}
	}
}