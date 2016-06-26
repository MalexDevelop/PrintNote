/**
 * @author Malex
 */
package node.sector_6.nodes
{
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.*;
	
	public class Node_6_2 extends Box
	{
		public function Node_6_2()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 253;
			this.height = Value.heightSize * 2;
			
			// Опломбовану сумку №
			var headerString:String = TextValue.getInstance().getArray()[5][1];
			var headerFormat:Format = new FormatString();
			_titleField = new Title(headerString, 123, Value.heightSize, Border.status);
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(_titleField.width + 2, Value.heightSize - 3);
			this.graphics.lineTo(_titleField.width + 30, Value.heightSize - 3);
			
			// без перерахування
			headerString = TextValue.getInstance().getArray()[5][2];
			var _titleField_2:Title = new Title(headerString, 100, Value.heightSize, Border.status);
			_titleField_2.x = _titleField.width + 30;
			_titleField_2.y = 0;
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField_2);
			
			// вкладених у неї коштив прийняв інкасатор
			headerString = TextValue.getInstance().getArray()[5][3];
			var _titleField_3:Title = new Title(headerString, 220, Value.heightSize, Border.status);
			_titleField_3.x = (width - _titleField_3.width) / 2;
			_titleField_3.y = 20;
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField_3);
		}
	}
}