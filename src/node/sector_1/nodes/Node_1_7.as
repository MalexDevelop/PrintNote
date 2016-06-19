/**
 * @author Malex
 */
package node.sector_1.nodes
{
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import mvc.models.Model;
	import mvc.models.Node_1_7_Model;
	
	import node.Box;
	
	import value.*;
	
	public class Node_1_7 extends Box
	{
		/** Модель */
		protected var _model:Model;
		
		public function Node_1_7()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_7_Model.getModel();
			
			// Controller
			
			// Размеры объекта
			this.width = 110;
			this.height = 50;
			
			// чеками з рахункiв згiдно з перелiком на зворотному боцi
			var string:String = TextValue.getInstance().getArray()[0][16];
			var format:Format = new FormatString();
			_titleField = new Title(string, width - 6, height, false);
			_titleField.setTextFormat(format.textFormat);
			_titleField.textField.wordWrap = true;
			_titleField.x = 3;
			_titleField.y = 0;
			addChild(_titleField);
			
			// border
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.lineTo(width, 0);
			this.graphics.lineTo(width, height);
			this.graphics.lineTo(0, height);
			this.graphics.lineTo(0, 0);
			this.graphics.moveTo(_titleField.width + 2, height - 3);
		}
	}
}