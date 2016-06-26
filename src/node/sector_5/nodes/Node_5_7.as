/**
 * @author Malex
 */
package node.sector_5.nodes
{
	import node.Box;
	import value.TextValue;
	import form.Format;
	import form.FormatString;
	import leaf.Title;
	import flash.text.TextFormatAlign;
	
	public class Node_5_7 extends Box
	{
		public function Node_5_7()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 100;
			this.height = 53;
			
			// Відмітка про дефектні чеки
			var string:String = TextValue.getInstance().getArray()[4][6];
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