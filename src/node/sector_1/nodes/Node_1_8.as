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
	import mvc.models.Node_1_8_Model;
	
	import node.Box;
	
	import value.*;
	
	/**
	 * Вiд кого
	 */	
	public class Node_1_8 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		//protected var _controller:IController;
		
		public function Node_1_8()
		{
			init();
		}
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_8_Model.getModel();
			
			// Controller
			
			// Размеры объекта
			this.width = 315;
			this.height = Value.heightSize;;
			
			// Для зарахування на рахунок
			var string:String = TextValue.getInstance().getArray()[0][5];
			var format:Format = new FormatString();
			_titleField = new Title(string, 150, height, Border.status);
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Input
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(165, height, Border.status);
			_inputField.isRestrict = true;
			_inputField.setUtils(_model);
			_inputField.x = _titleField.width;
			_inputField.y = 0;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(0, _titleField.height);
			this.graphics.lineTo(width, _titleField.height);
		}
	}
}