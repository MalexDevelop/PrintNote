/**
 * @author Malex
 */
package node.sector_5.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_5_2 extends Box
	{
		public function Node_5_2()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 70;
			this.height = 53;
			
			// Кількість
			var string:String = TextValue.getInstance().getArray()[4][1];
			var format:Format = new FormatString();
			format.textFormat.align = TextFormatAlign.CENTER;
			_titleField = new Title(string, width, height, true);
			_titleField.textField.wordWrap = true;
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
		}
	}
}