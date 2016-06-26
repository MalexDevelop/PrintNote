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
	
	public class Node_5_9 extends Box
	{
		public function Node_5_9()
		{
			init();
		}
		
		override protected function init():void
		{
			
			// Размеры объекта
			this.width = 70;
			this.height = 272;
			
			// 3
			var format:Format = new FormatString();
			format.textFormat.align = TextFormatAlign.CENTER;
			_titleField = new Title("3", width, 17, true);
			_titleField.textField.wordWrap = true;
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			for(var i:int = 0; i < 15; i++){
				_titleField = new Title("", width, 17, true);
				_titleField.y = 17 + (_titleField.height * i);
				addChild(_titleField);
			}
		}
	}
}