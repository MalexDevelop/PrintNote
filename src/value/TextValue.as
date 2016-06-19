/**
 * @author Malex
 */
package value
{
	/**
	 * Класс возвращаеющий массив содержащий весь мпектр текстовых данных печатного листа.
	 * Истользуейте конструкцию: <br />
	 * <b>
	 * TextValue.getInstance().getArray()
	 * </b>;
	 */	
	public class TextValue
	{
		/** объект класса TextValue */	
		private static var textValue:TextValue;
		/** двумерный масив */
		private var sectors:Array;
		
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		/**
		 * Класс Одничка. Чтобы создать экземпляр данного класса или получить уже соданный нужно вызвать статически метод TextValue.getInstance().
		 * Чтобы получить двумерный массив с текстовыми метками нужно вызвать следующую конструкцию TextValue.getInstance().getArray()
		 * @param value Приватный класс PrivateClass()
		 */		
		public function TextValue(value:PrivateClass)
		{
			init();
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		/**
		 * Создает двумерный массив
		 */		
		private function init():void
		{
			sectors = new Array();
			for(var i:int = 0; i < 6; i++){
				sectors[i] = new Array();
			}	
		}
		
		//***********************************************
		//
		// PUBLIC / PUBLIC CTATIC FUNCTIONS
		//
		//***********************************************
		
		/**
		 * @return обьъект TextValue
		 */		
		public static function getInstance():TextValue
		{
			if(textValue == null){
				textValue = new TextValue(new PrivateClass());
			}
			return TextValue.textValue;
		}
		
		
		/**
		 * @return Массив с заголовками
		 */		
		public function getArray():Array
		{
			return sectors;
		}
	}
}

/* Приватный класс */
class PrivateClass{}