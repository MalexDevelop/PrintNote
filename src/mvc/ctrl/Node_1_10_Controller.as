/**
 * @author Malex
 */
package mvc.ctrl
{
	import mvc.models.Model;
	
	import utils.SublimateNumber;
	
	public class Node_1_10_Controller extends Controller
	{
		/** Модель */
		private static var _model:Model;
		/** Контроллер */
		private static var _ctrl:Controller;
		/** Хранит сумму выраженную словами(в тексте) */
		private var _sublimateText:String = "";
		/** Регуляроне выражение ищущее совпадения с числами без плавающей запятой */
		private var _regExp:RegExp = /^[1-9][0-9]*$/;
		/** Регуляроне выражение ищущее совпадения с числами с плавающей запятой  */
		private var _regExp2:RegExp = /^[1-9][0-9]*\,[0-9][0-9]?$/;
		/** Логическое значение указывающее на то, что пользователь ввел валидную сумму */
		private var _isValid:Boolean = false;
		/** Копейки */
		private var _kopeks:String = "";
		private var _kopekStr:String = " коп.";
		/** Грн */
		private var _noteStr:String = " грн.";
		
		 //***********************************************
		 //
		 // CONSTRUCTOR
		 //
		 //***********************************************
		
		public function Node_1_10_Controller(privateClass:PrivateClass)
		{
			
		}
		
		//***********************************************
		//
		// GET / SET	
		//
		//***********************************************
		
		public static function getController(model:Model):Controller
		{
			_model = model;
			
			if(_ctrl == null){
				_ctrl = new Node_1_10_Controller(new PrivateClass());
			}
			return _ctrl;
		}
		
		override public function get text():String
		{
			return _sublimateText;
		}
		override public function set text(text:String):void
		{
			sublimateText(text);
			
			if(_isValid){
				_model.text = text;
			}else{
				_model.text = "";
			}
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		private function sublimateText(str:String):void
		{
			_isValid = false;
			_kopeks = " 00";
			
			if(_regExp.test(str)){
				_isValid = true;
				sublimate(str);
				_sublimateText += _kopeks;
				_sublimateText += _kopekStr;
			}
			else if(_regExp2.test(str)){
				_isValid = true;
				var array:Array = str.split(",");
				sublimate(array[0]);
				_kopeks = array[1];
				if(_kopeks.length == 1) _kopeks += "0";
				_sublimateText += " " + _kopeks;
				_sublimateText += _kopekStr;
			}else{
				_sublimateText = "";
			}
		}
		
		
		
		private function sublimate(str:String):void
		{
			_sublimateText = "";
			_sublimateText = SublimateNumber.convertNote(str);
			_sublimateText += _noteStr;
		}
	}
}

class PrivateClass{}