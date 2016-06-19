/**
 * @author Malex
 */
package mvc.models
{
	import action.NodeEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	/**
	 * Одиночка. Абстрактный класс.
	 */	
	public class Model extends EventDispatcher
	{
		/**/
		private var _value:String;
		
		public function Model()
		{
			
		}
		
		//**********************************************
		//
		// GET / SET
		//
		//**********************************************
		
		public function get text():String
		{
			return _value;
		}
		public function set text(str:String):void
		{
			_value = str;
			dispatchEvent(new Event(Event.CHANGE));
		}
	}
}