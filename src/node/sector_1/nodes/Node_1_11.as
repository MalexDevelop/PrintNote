/**
 * @author Malex
 */
package node.sector_1.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatInputField;
	import form.FormatString;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.models.Model;
	import mvc.models.Node_1_9_Model;
	
	import node.Box;
	
	import value.*;
	/**
	 * Керівник піприємства(організації)____________Касир____
	 * Зазначена вище сума прийнята повністью
	 * Касир
	 * Контролер
	 */	
	public class Node_1_11 extends Box
	{
		public function Node_1_11()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 425;
			this.height = Value.heightSize * 4;
			
			//  Керівник піприємства(організації)
			var string:String = TextValue.getInstance().getArray()[0][8];
			var format:Format = new FormatString();
			_titleField = new Title(string, 178, Value.heightSize, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Касир
			var string2:String = TextValue.getInstance().getArray()[0][10];
			var _titleField2:Title = new Title(string2, 36, Value.heightSize, Border.status);
			_titleField2.setTextFormat(format.textFormat);
			_titleField2.x = width - _titleField2.width * 2;
			_titleField2.y = 0;
			addChild(_titleField2);
			
			// Зазначена вище сума прийнята повністью
			var string3:String = TextValue.getInstance().getArray()[0][9];
			var _titleField3:Title = new Title(string3, 220, Value.heightSize, Border.status);
			_titleField3.setTextFormat(format.textFormat);
			_titleField3.x = 0;
			_titleField3.y = _titleField.y + _titleField.height;
			addChild(_titleField3);
			
			// Касир
			var _titleField4:Title = new Title(string2, 36, Value.heightSize, Border.status);
			_titleField4.setTextFormat(format.textFormat);
			_titleField4.x = 0;
			_titleField4.y = _titleField3.y + _titleField3.height - 6;
			addChild(_titleField4);
			
			// Контролер
			var string4:String = TextValue.getInstance().getArray()[0][11];
			var _titleField5:Title = new Title(string4, 60, Value.heightSize, Border.status);
			_titleField5.setTextFormat(format.textFormat);
			_titleField5.x = 0;
			_titleField5.y = _titleField4.y + _titleField4.height - 6;
			addChild(_titleField5);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(0, _titleField.height);
			this.graphics.lineTo(width, _titleField.height);
		}
	}
}