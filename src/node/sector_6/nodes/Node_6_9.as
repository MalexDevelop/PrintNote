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
	
	public class Node_6_9 extends Box
	{
		public function Node_6_9()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 150;
			this.height = 75;
			
			// Готівка сортується за номіналами банкнот. Відбиток пломбіра має бути чітким. Слід обережно поводитися  із сумкою.
			var string:String = TextValue.getInstance().getArray()[5][10];
			var format:Format = new FormatSubstring();
			_titleField = new Title(string, width, height, false);
			_titleField.setTextFormat(format.textFormat);
			_titleField.textField.wordWrap = true;
			addChild(_titleField);
		}
	}
}