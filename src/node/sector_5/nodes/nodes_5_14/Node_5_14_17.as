/**
 * @author Malex
 */
package node.sector_5.nodes.nodes_5_14
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatInputField;
	import form.FormatString;
	
	import leaf.Input;
	import leaf.Title;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_5_14_17 extends Box
	{
		public function Node_5_14_17()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 285;
			this.height = 17;
			
			// bg
			var bg:Title = new Title("", width, height, true);
			addChild(bg);
			
			// Усего
			var string:String = TextValue.getInstance().getArray()[4][29];
			var format:Format = new FormatString();
			_titleField = new Title(string, 45, 17, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 5;
			_titleField.y = 0;
			addChild(_titleField);
		}
	}
}