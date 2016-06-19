/**
 * @author Malex
 */
package mvc.ctrl
{
	import mvc.models.Model;
	
	public class Node_2_2_Controller extends Controller
	{
		/** Модель */
		private static var _model:Model;
		/** Контроллер */
		private static var _ctrl:Controller;
		
		private var strArray:Array;
		private var subStr:String;
		
		public function Node_2_2_Controller(privateClass:PrivateClass)
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
				_ctrl = new Node_2_2_Controller(new PrivateClass());
			}
			return _ctrl;
		}
		
		
		override public function get text():String
		{
			return validSum();
		}
		override public function set text(text:String):void
		{
			
		}
		
		private function validSum():String
		{
			// берем число из модели
			var str:String = _model.text;
			// ищем запятую
			var index:int = str.indexOf(",");
			// если запятая найдена
			if(index != -1){
				// разбиваем число до заятой и после в массив
				strArray = str.split(",");
				subStr = valid(strArray[0]);
				subStr += ",";
				subStr += strArray[1];
			}else{
				subStr = valid(str);
			}
			
			function valid(str:String):String
			{
				var string:String;
				
				if(str.length > 7){
					string = str.slice(0, 7);
				}
				
				if(str.length == 4){
					string = str.slice(0, 1);
					string += " ";
					string += str.slice(1);
				}else if(str.length == 5){
					string = str.slice(0, 2);
					string += " ";
					string += str.slice(2);
				}else if(str.length == 6){
					string = str.slice(0, 3);
					string += " ";
					string += str.slice(3);
				}else if(str.length == 7){
					string = str.slice(0, 1);
					string += " ";
					string += str.slice(1, 4);
					string += " ";
					string += str.slice(4);
				}else{
					string = str;
				}
				
				return string;
			}
			
			return subStr;
		}
	}
}

class PrivateClass{}