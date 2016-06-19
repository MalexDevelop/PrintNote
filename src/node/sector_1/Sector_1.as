/**
 * @author Malex
 */
package node.sector_1
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatHeader;
	import form.FormatInputField;
	
	import leaf.Input;
	import leaf.Title;
	
	import mvc.models.InputField_1_Model;
	import mvc.models.Model;
	
	import node.Box;
	import node.Node;
	import node.sector_1.nodes.*;
	
	import value.TextValue;
	
	/**
	 * Сектор №1 печатного листа.
	 */	
	public class Sector_1 extends Node
	{
		/** Модель */
		protected var _inputField_1_Model:Model;
		/** Контроллер */
		//protected var _controller:IController;
		
		
		/** Заголовок */
		protected var _node_1:Box;
		/** Редактируемое поле - Дебет */
		protected var _inputField_1:Input;
		protected var _debet:Title;
		/** Рахунок №  */
		protected var _node_2:Box;
		/** Кредит */
		protected var _credit:Title;
		/** Рахунок №  */
		protected var _node_3:Box;
		/** Вiд кого  */
		protected var _node_4:Box;
		/** Одержувач  */
		protected var _node_5:Box;
		/** Готiвкою  */
		protected var _node_6:Box;
		/** чеками з рахунків  згідно з переліком на зворотному боці */
		protected var _node_7:Box;
		/** Для зарахування на рахунок */
		protected var _node_8:Box;
		/** Банк одержувача */
		protected var _node_9:Box;
		/** Сума словами, грн. */
		protected var _node_10:Box;
		/** Керівник піприємства(організації) */
		protected var _node_11:Box;
		
		public function Sector_1()
		{
			init();
			addNodes();
		}
		
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 425;
			this.height = 280;
			
			_inputField_1_Model = InputField_1_Model.getModel();
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0xFF0000, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			/* Супровідна відомість до сумки з готівкою № */
			_node_1 = new Node_1_1();
			_node_1.x = 50;
			_node_1.y = 18;
			addChild(_node_1);
			
			/* Поле для ввода */
			var inputFormat:Format = new FormatInputField();
			inputFormat.textFormat.align = TextFormatAlign.CENTER;
			_inputField_1 = new Input(93, 42, true);
			_inputField_1.isRestrict = true;
			_inputField_1.setUtils(_inputField_1_Model);
			_inputField_1.x = width - _inputField_1.width;
			_inputField_1.y = 0;
			_inputField_1.setTextFormat(inputFormat.textFormat);
			addChild(_inputField_1);
			
			/* Дебет */
			var debetString:String = TextValue.getInstance().getArray()[0][12];
			var subheaderFormat:Format = new FormatHeader();
			_debet = new Title(debetString, 36, 18, false);
			_debet.setTextFormat(subheaderFormat.textFormat);
			_debet.x = (_inputField_1.width - _debet.width) / 2 + _inputField_1.x;
			_debet.y = _inputField_1.y + _inputField_1.height;
			addChild(_debet);
			
			// Рахунок №
			_node_2 = new Node_1_2();
			_node_2.x = _inputField_1.x;
			_node_2.y = _debet.y + _debet.height;
			addChild(_node_2);
			
			/* Кредит */
			var creditString:String = TextValue.getInstance().getArray()[0][14];
			_credit = new Title(creditString, 45, 20, false);
			_credit.setTextFormat(subheaderFormat.textFormat);
			_credit.x = (_inputField_1.width - _debet.width) / 2 + _inputField_1.x;
			_credit.y = _node_2.y + _node_2.height;
			addChild(_credit);
			
			// Рахунок №
			_node_3 = new Node_1_3();
			_node_3.x = _inputField_1.x;
			_node_3.y = _credit.y + _credit.height;
			addChild(_node_3);
			
			// Вiд кого
			_node_4 = new Node_1_4();
			_node_4.x = 0;
			_node_4.y = _node_2.y + 10;
			addChild(_node_4);
			
			// Одержувач
			_node_5 = new Node_1_5();
			_node_5.x = 0;
			_node_5.y = _node_4.y + _node_4.height;
			addChild(_node_5);
			
			// Готiвкою
			_node_6 = new Node_1_6();
			_node_6.x = 50;
			_node_6.y = _node_5.y + _node_5.height;
			addChild(_node_6);
			
			// чеками з рахункiв згiдно з перелiком на зворотному боцi
			_node_7 = new Node_1_7();
			_node_7.x = width - _node_7.width;
			_node_7.y = _node_3.y + _node_3.height;
			addChild(_node_7);
			
			// Для зарахування на рахунок
			_node_8 = new Node_1_8();
			_node_8.x = 0;
			_node_8.y = _node_6.y + _node_6.height;
			addChild(_node_8);
			
			// Банк одержувача
			_node_9 = new Node_1_9();
			_node_9.x = 0;
			_node_9.y = _node_8.y + _node_8.height;
			addChild(_node_9);
			
			// Сума словами, грн.
			_node_10 = new Node_1_10();
			_node_10.x = 0;
			_node_10.y = _node_9.y + _node_9.height;
			addChild(_node_10);
			
			// Керівник піприємства(організації)
			_node_11 = new Node_1_11();
			_node_11.x = 0;
			_node_11.y = _node_10.y + _node_10.height;
			addChild(_node_11);
		}
	}
}