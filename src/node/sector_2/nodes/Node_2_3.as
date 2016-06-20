/**
 * @author Malex
 */
package node.sector_2.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.TextValue;
	import value.Value;
	
	public class Node_2_3 extends Box
	{
		public function Node_2_3()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 150;
			this.height = 100;
			
			// Сума 
			var headerString:String = TextValue.getInstance().getArray()[1][1];
			var headerFormat:Format = new FormatString();
			_titleField = new Title(headerString, 75, Value.heightSize, true);
			headerFormat.textFormat.align = TextFormatAlign.CENTER;
			_titleField.setTextFormat(headerFormat.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Код 
			var headerString2:String = TextValue.getInstance().getArray()[1][4];
			var headerFormat2:Format = new FormatString();
			var _titleField2:Title = new Title(headerString2, 75, Value.heightSize, true);
			headerFormat2.textFormat.align = TextFormatAlign.CENTER;
			_titleField2.setTextFormat(headerFormat.textFormat);
			_titleField2.x = _titleField.width;
			_titleField2.y = 0;
			addChild(_titleField2);
		}

	}
	
}