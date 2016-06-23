/**
 * @author Malex
 */
package node.sector_1.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatHeader;
	import form.FormatInputField;
	import form.FormatSubstring;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.models.Model;
	import mvc.models.Node_1_1_Model;
	
	import node.Box;
	
	import value.TextValue;
	
	/**
	 * Узел - заголовок печатного листа.
	 * 
	 * Включает в себя:
	 * 1.Текстовое поле - заголовок.
	 * 2.Текстовое поле - редактируемое.
	 * 3.Текстовое поле - подстрока.
	 */	
	public class Node_1_1 extends Box
	{
		/** Модель */
		protected var _model:Model;
		/** Контроллер */
		//protected var _controller:IController;
		
		public function Node_1_1()
		{
			init();
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		override protected function init():void
		{
			// Моdel
			_model = Node_1_1_Model.getModel();
			
			// Controller
			
			// Размеры объекта
			this.width = 265;
			this.height = 69; // 35 + 17 + 17 = 69
			
			// Супровідна відомість до сумки з готівкою №
			var headerString:String = TextValue.getInstance().getArray()[0][0];
			var headerFormat:Format = new FormatHeader();
			_titleField = new Title(headerString, this.width, 18, Border.status);
			_titleField.setTextFormat(headerFormat.textFormat);
			addChild(_titleField);
			
			// Редактируемое поле
			var inputFormat:Format = new FormatInputField();
			_inputField = new Input(width, 17, Border.status);
			_inputField.setRestrict(true, "0-9.");
			_inputField.setUtils(_model);
			_inputField.y = _titleField.height;
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField.setTextFormat(inputFormat.textFormat);
			addChild(_inputField);
			
			// (дата заповнення)
			var subString:String = TextValue.getInstance().getArray()[0][1];
			var subFormat:Format = new FormatSubstring();
			var _subTitleField:Title = new Title(subString, 89, 17, Border.status);
			_subTitleField.setTextFormat(subFormat.textFormat);
			_subTitleField.y = _titleField.height + _inputField.height;
			_subTitleField.x = (width - _subTitleField.width) / 2;
			addChild(_subTitleField);
			
			// Line
			this.graphics.lineStyle(1, 0x000000);
			this.graphics.moveTo(0, _titleField.height + _inputField.height);
			this.graphics.lineTo(width, _titleField.height + _inputField.height);
		}
		
		
		//******************************************************
		//
		// PUBLIC FUNCTIONS
		//
		//******************************************************
		
		/**
		 * Очищаем текстовое поле от текста. 
		 */		
		override public function clearText():void
		{
			_inputField.clearText();
		}
	}
}