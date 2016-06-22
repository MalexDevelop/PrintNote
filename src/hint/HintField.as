/**
 * @author Malex
 */
package hint
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	
	import leaf.Input;
	
	/**
	 * Всплывающее текстовое поле для воода текста.
	 */	
	public class HintField extends Sprite
	{
		/** Текстовое поле */
		private var _field:TextField;
		/** Объект в координаты которго будет добавлено всплывающее поле */
		private var _parent:Input;
		/** Координаты добавления объекта в список отображаения */
		private var _point:Point = new Point();
		
		/** Ввод всех символов */
		private var inputLetter:String = null;
		
		private var _colorBorder:uint = 0x33a5d0;
		private var _colorBg:uint = 0xfffeeb;
		private var _colorText:uint = 0xc40000;
		
		public function HintField()
		{
			init();
		}
		
		private function init():void
		{
			var filter:Array = [];
			var shadow:DropShadowFilter = new DropShadowFilter(2, 90, 0x000000, .3, 10, 10);
			filter.push(shadow);
			
			var format:TextFormat = new TextFormat(null, 16, null); 
			
			_field = new TextField();
			_field.defaultTextFormat = format;
			
			_field.type = TextFieldType.INPUT;
			_field.border = true;
			_field.borderColor = _colorText;
			_field.background = true;
			_field.backgroundColor = _colorBg;
			_field.textColor = _colorText;
			_field.filters = filter;
			addChild(_field);
		}
		
		/**
		 * Добавить всплывающее текстовое поле в список отображаения
		 */		
		public function toShow(parent:Input):void
		{
			/**************************/
			if(_parent != null && _parent != parent){
				toHide();
			}
			
			_parent = parent;
			
			if(_parent.isRestrict){
				setRestrict(_parent.restrict);
			}else{
				setRestrict(inputLetter);
			}
			
			if(_parent.text != null){
				_field.text = _parent.text;
			}
			
			_field.width = _parent.width;
			
			if(_parent.height < 24){
				_field.height = 24;
			}
			else
			{
				_field.height = _parent.height;			
			}
			
			width = _field.width;
			height = _field.height;
			
			/**************************/
			
			_point.x = 0;
			_point.y = 0;
			
			var parentContainer:DisplayObjectContainer = _parent;
			
			while (parentContainer.parent != stage)
			{
				_point.x += parentContainer.x;
				_point.y += parentContainer.y;
				
				parentContainer = parentContainer.parent;
			}
			
			this.x = _point.x;
			this.y = _point.y;
			
			_parent.stage.addChild(this);
		}
		
		
		/**
		 * Удалить всплывающее текстовое поле из списка отображаения
		 */		
		public function toHide():void
		{
			if(_field.text != null){
				_parent.text = _field.text;
			}
			_field.text = "";
			_parent.stage.removeChild(this);
			_parent = null;
		}
		
		
		//*****************************************************
		//
		// GET / SET
		//
		//*****************************************************
		
		/**
		 * 
		 * @param string 
		 * 
		 */		
		private function setRestrict(string:String):void
		{
			_field.restrict = string;
		}
		
		public function get text():String
		{
			return _field.text;
		}
	}
}