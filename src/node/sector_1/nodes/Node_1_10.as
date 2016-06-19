/**
 * @author Malex
 */
package node.sector_1.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatInputField;
	import form.FormatString;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.ctrl.Controller;
	import mvc.ctrl.Node_1_10_Controller;
	import mvc.models.Model;
	import mvc.models.Node_1_10_Model;
	
	import node.Box;
	
	import value.*;
	
	/**
	 * 
	 */	
	public class Node_1_10 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		protected var _controller:Controller;
		
		
		public function Node_1_10()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_10_Model.getModel();
			
			// Controller
			_controller = Node_1_10_Controller.getController(_model);
			
			// Размеры объекта
			this.width = 425;
			this.height = Value.heightSize * 2;
			
			// Сума словами, грн.
			var string:String = TextValue.getInstance().getArray()[0][7];
			var format:Format = new FormatString();
			_titleField = new Title(string, 101, height, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(width - _titleField.width, 36, Border.status);
			_inputField.textField.wordWrap = true;
			_inputField.isRestrict = true;
			_inputField.setUtils(_model, _controller);
			_inputField.x = _titleField.width;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(_titleField.width, 18);
			this.graphics.lineTo(width, 18);
			
			this.graphics.moveTo(_titleField.width, 36);
			this.graphics.lineTo(width, 36);
		}
	}
}