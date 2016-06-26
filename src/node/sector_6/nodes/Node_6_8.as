/**
 * @author Malex
 */
package node.sector_6.nodes
{
	import form.Format;
	import form.FormatHeader;
	
	import node.Box;
	
	import value.*;
	import leaf.Title;
	
	public class Node_6_8 extends Box
	{
		public function Node_6_8()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 55;
			this.height = Value.heightSize;
			
			// До уваги
			var debetString:String = TextValue.getInstance().getArray()[5][9];
			var subheaderFormat:Format = new FormatHeader();
			_titleField = new Title(debetString, width, height, false);
			_titleField.setTextFormat(subheaderFormat.textFormat);
			addChild(_titleField);
			
			
		}
	}
}