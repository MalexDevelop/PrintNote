/**
 * @author Malex
 */
package node.sector_6.nodes
{
	import form.Format;
	import form.FormatSubstring;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.*;
	
	public class Node_6_4 extends Box
	{
		public function Node_6_4()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 140;
			this.height = Value.heightSize;
			
			// Line
			graphics.lineStyle(1, 0x000000);
			graphics.lineTo(width, 0);
			
			// (прізвище, ініціали)
			var subString:String = TextValue.getInstance().getArray()[5][5];
			var subFormat:Format = new FormatSubstring();
			var _subTitleField:Title = new Title(subString, 100, 17, false);
			_subTitleField.setTextFormat(subFormat.textFormat);
			_subTitleField.x = (width - _subTitleField.width) / 2;
			_subTitleField.y = 0;
			addChild(_subTitleField);
		}
	}
}