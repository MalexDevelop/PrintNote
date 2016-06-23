/**
 * @author Malex
 */
package node.sector_3.nodes
{
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_3_2 extends Box
	{
		public function Node_3_2()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 325;
			this.height = 20; // 18 + 17 = 35
			
			/** Під час розкриття сумки і перерахування вкладень виявилося: */
			var headerString:String = TextValue.getInstance().getArray()[2][2];
			var format:Format = new FormatString();
			_titleField = new Title(headerString, width, 20, Border.status);
			_titleField.x = 0;
			_titleField.y = 0;
			_titleField.setTextFormat(format.textFormat);
			addChild(_titleField);
		}
	}
}