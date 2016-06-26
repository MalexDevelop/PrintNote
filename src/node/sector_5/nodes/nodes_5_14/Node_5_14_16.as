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
	
	import mvc.ctrl.Controller;
	import mvc.ctrl.Node_2_2_Controller;
	import mvc.models.Model;
	import mvc.models.Node_1_10_Model;
	
	import node.Box;
	
	import value.TextValue;
	
	public class Node_5_14_16 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		protected var _controller:Controller;
		
		public function Node_5_14_16()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 310;
			this.height = 17;
			
			// Моdel
			_model = Node_1_10_Model.getModel();
			// Controller
			_controller = Node_2_2_Controller.getController(_model);
			
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
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(265, 17, Border.status);
			_inputField.name = "sumField2";
			_inputField.setRestrict(true, "0-9");
			_inputField.setUtils(_model, _controller);
			_inputField.x = _titleField.width;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
		}
	}
}