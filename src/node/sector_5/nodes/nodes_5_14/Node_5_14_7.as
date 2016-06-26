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
	
	import mvc.models.Model;
	import mvc.models.Node_5_14_7_Model;
	
	import node.Box;
	
	import value.TextValue;
	import form.FormatSubstring;
	
	public class Node_5_14_7 extends Box
	{
		/** Модель */
		protected var _model:Model;
		
		public function Node_5_14_7()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_5_14_7_Model.getModel();
			
			// Размеры объекта
			this.width = 100;
			this.height = 17;
			
			// bg
			var bg:Title = new Title("", width, height, true);
			addChild(bg);
			
			// 100 грн.
			var string:String = TextValue.getInstance().getArray()[4][20];
			var format:Format = new FormatSubstring();
			_titleField = new Title(string, 44, 17, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 5;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(46, 17, Border.status);
			_inputField.setRestrict(true, "0-9");
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width;
			_inputField.y = -1;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// border
			graphics.lineStyle(1, 0x000000);
			graphics.moveTo(_titleField.width, height - 2);
			graphics.lineTo(width - 5, height - 2);
		}
	}
}