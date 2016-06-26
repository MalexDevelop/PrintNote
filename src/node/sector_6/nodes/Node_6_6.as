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
	
	public class Node_6_6 extends Box
	{
		public function Node_6_6()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 40;
			this.height = Value.heightSize;
			
			// М.П.
			var string:String = TextValue.getInstance().getArray()[5][7];
			var format:Format = new FormatString();
			_titleField = new Title(string, width, height, false);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
		}
	}
}