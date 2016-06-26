/**
 * @author Malex
 */
package node.sector_6.nodes
{
	import form.Format;
	import form.FormatHeader;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.*;
	
	public class Node_6_1 extends Box
	{
		public function Node_6_1()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 140;
			this.height = Value.heightSize;
			
			// Розписка
			var headerString:String = TextValue.getInstance().getArray()[5][0];
			var headerFormat:Format = new FormatHeader();
			_titleField = new Title(headerString, 60, height, Border.status);
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField);
			
			// Line
			graphics.lineStyle(1, 0x000000);
			graphics.moveTo(_titleField.width, _titleField.height - 3);
			graphics.lineTo(width, _titleField.height - 3);
		}
	}
}