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
	
	public class Node_6_10 extends Box
	{
		public function Node_6_10()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 160;
			this.height = 65;
			
			// Цей примірник залишається в здавача готівки як квитанція  про приймання інкасатором сумки з готівкою.
			var string:String = TextValue.getInstance().getArray()[5][11];
			var format:Format = new FormatSubstring();
			_titleField = new Title(string, width, height, false);
			_titleField.setTextFormat(format.textFormat);
			_titleField.textField.wordWrap = true;
			addChild(_titleField);
		}
	}
}