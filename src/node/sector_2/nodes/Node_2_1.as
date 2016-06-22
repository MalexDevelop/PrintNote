/**
 * @author Malex
 */
package node.sector_2.nodes
{
	import node.Box;
	import mvc.models.Model;
	import mvc.models.Node_2_1_Model;
	import form.Format;
	import form.FormatString;
	import leaf.Title;
	import value.TextValue;
	import form.FormatInputField;
	import leaf.Input;
	import flash.text.TextFormatAlign;
		
	public class Node_2_1 extends Box
	{
		/** Модель */
		protected var _model:Model;
		
		public function Node_2_1()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_2_1_Model.getModel();
			
			// Размеры объекта
			this.width = 103;
			this.height = 60;
			
			// Загловок
			var headerString:String = TextValue.getInstance().getArray()[1][0];
			var headerFormat:Format = new FormatString();
			_titleField = new Title(headerString, 73, 50, Border.status);
			_titleField.textField.wordWrap = true;
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField);
			
			// Редактируемое поле
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(35, 17, Border.status);
			_inputField.setRestrict(true, "0-9");
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width;
			_inputField.y = _titleField.height - _inputField.height - 5;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(_inputField.x, _inputField.y + _inputField.height);
			this.graphics.lineTo(width, _inputField.y + _inputField.height);
		}
	}
}