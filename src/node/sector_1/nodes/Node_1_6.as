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
	
	import mvc.models.Model;
	import mvc.models.Node_1_6_Model;
	
	import node.Box;
	
	import value.*;
	
	public class Node_1_6 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		//protected var _controller:IController;
		
		public function Node_1_6()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_6_Model.getModel();
			
			// Controller
			
			// Размеры объекта
			this.width = 371;
			this.height = Value.heightSize;
			
			// Готiвкою
			var string:String = TextValue.getInstance().getArray()[0][4];
			var format:Format = new FormatString();
			_titleField = new Title(string, 52, height, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(213, height, Border.status);
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
		}
	}
}