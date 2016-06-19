/**
 * @author Malex
 */
package node.sector_1.nodes
{
	import form.Format;
	import form.FormatString;
	
	import mvc.models.Model;
	import mvc.models.Node_1_3_Model;
	
	import node.Box;
	
	import value.*;
	import leaf.Title;
	import form.FormatInputField;
	import leaf.Input;
	import flash.text.TextFormatAlign;
	
	/**
	 * Від(кого) 
	 */	
	public class Node_1_3 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		//protected var _controller:IController;
		
		public function Node_1_3()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_3_Model.getModel();
			
			// Controller
			
			// Размеры объекта
			this.width = 92;
			this.height = Value.heightSize;
			
			// Рахунок №
			var string:String = TextValue.getInstance().getArray()[0][13];
			var format:Format = new FormatString();
			_titleField = new Title(string, 60, height, false);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(32, height, false);
			_inputField.isRestrict = true;
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width;
			_inputField.y = (height - _inputField.height) / 2;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// border
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.lineTo(width, 0);
			this.graphics.lineTo(width, height);
			this.graphics.lineTo(0, height);
			this.graphics.lineTo(0, 0);
			this.graphics.moveTo(_titleField.width + 2, height - 3);
			this.graphics.lineTo(width - 3, height - 3);
			
		}
	}
}