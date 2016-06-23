/**
 * @author Malex
 */
package node.sector_3.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatHeader;
	import form.FormatInputField;
	import form.FormatSubstring;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.models.Model;
	import mvc.models.Node_3_1_Model;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_3_1 extends Box
	{
		/** Модель */
		protected var _model:Model;
		
		public function Node_3_1()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_3_1_Model.getModel();
			
			// Размеры объекта
			this.width = 128;
			this.height = 35; // 18 + 17 = 35
			
			// Акт
			var headerString:String = TextValue.getInstance().getArray()[2][0];
			var headerFormat:Format = new FormatHeader();
			_titleField = new Title(headerString, 26, 18, Border.status);
			_titleField.x = 0;
			_titleField.y = 0;
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField);
			
			// Редактируемое поле
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(width - _titleField.width, 17, Border.status);
			_inputField.setRestrict(true, "0-9.");
			_inputField.setUtils(_model);
			_inputField.x = 26;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// (дата складання акта)
			var subString:String = TextValue.getInstance().getArray()[2][1];
			var subFormat:Format = new FormatSubstring();
			var _subTitleField:Title = new Title(subString, 105, 17, Border.status);
			_subTitleField.setTextFormat(subFormat.textFormat);
			_subTitleField.y = _titleField.height;
			_subTitleField.x = width - _subTitleField.width;
			addChild(_subTitleField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(_titleField.width, _titleField.height);
			this.graphics.lineTo(width, _titleField.height);
		}
	}
}