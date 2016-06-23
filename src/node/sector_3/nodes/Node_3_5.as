/**
 * @author Malex
 */
package node.sector_3.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatInputField;
	import form.FormatString;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.models.Model;
	import mvc.models.Node_3_5_Model;
	
	import node.Box;
	
	import value.*;
	
	public class Node_3_5 extends Box
	{
		/** Модель */
		protected var _model:Model;
		
		public function Node_3_5()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_3_5_Model.getModel();
			
			// Размеры объекта
			this.width = 170;
			this.height = Value.heightSize;
			
			// чеками, грн.
			var string:String = TextValue.getInstance().getArray()[2][6];
			var format:Format = new FormatString();
			_titleField = new Title(string, 78, height, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(72, height, Border.status);
			_inputField.setRestrict(true, "0-9");
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width + 20;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(_titleField.width + 20, height - 3);
			this.graphics.lineTo(width, height - 3);
		}
	}
}