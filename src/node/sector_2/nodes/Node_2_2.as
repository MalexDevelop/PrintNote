/**
 * @author Malex
 */
package node.sector_2.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatInputField;
	import form.FormatString;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.ctrl.Controller;
	import mvc.ctrl.Node_2_2_Controller;
	import mvc.models.Model;
	import mvc.models.Node_1_10_Model;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_2_2 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		protected var _controller:Controller;
		
		/**
		 * Сума/Загальна
		 */		
		public function Node_2_2()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_10_Model.getModel();
			// Controller
			_controller = Node_2_2_Controller.getController(_model);
			
			// Размеры объекта
			this.width = 150;
			this.height = 100;
			
			// Сума 
			var headerString:String = TextValue.getInstance().getArray()[1][1];
			var headerFormat:Format = new FormatString();
			_titleField = new Title(headerString, 33, 20, Border.status);
			_titleField.setTextFormat(headerFormat.textFormat);
			_titleField.x = (width - _titleField.width) / 2;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Редактируемое поле
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(width, 50, Border.status);
			_inputField.name = "sumField";
			_inputField.isRestrict = true;
			_inputField.setUtils(_model, _controller);
			_inputField.x = 0;
			_inputField.y = _titleField.height + 5;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// Загальна
			var headerString2:String = TextValue.getInstance().getArray()[1][2];
			var _titleField2:Title = new Title(headerString2, 50, 20, Border.status);
			_titleField2.setTextFormat(headerFormat.textFormat);
			_titleField2.x = (width - _titleField2.width) / 2;
			_titleField2.y = _inputField.y + _inputField.height + 5;
			addChild(_titleField2);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.lineTo(width, 0);
			this.graphics.lineTo(width, height);
			this.graphics.lineTo(0, height);
			this.graphics.lineTo(0, 0);
			//this.graphics.moveTo(_titleField.width + 2, height - 3);
		}
	}
}