/**
 * @author Malex
 */
package utils
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class XMLLoader extends EventDispatcher
	{
		/** Местоположение xml файла */
		private var _url:String;
		/** Объект класса XML */
		private var _xml:XML;
		/** Объект класса URLLoader */
		private var load:URLLoader;
		
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		/**
		 * Загружает xml документ
		 * @param url адрес xml документа
		 */	
		public function XMLLoader(url:String = null)
		{
			if(url != null && url != ""){
				_url = url;
				loadXML();
			}else{
				// expect code
				trace("ОШИБКА !!!");
			}
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		private function loadXML():void
		{
			load = new URLLoader(new URLRequest(_url));
			load.addEventListener(Event.COMPLETE, completeHandler);
		}
		
		private function completeHandler(e:Event):void
		{
			load.removeEventListener(Event.COMPLETE, completeHandler);
			
			var loader:URLLoader = e.target as URLLoader;
			_xml = new XML(loader.data);
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		//***********************************************
		//
		// GET / SET FUNCTIONS
		//
		//***********************************************
		
		/**
		 * Возвращает XML файл
		 */		
		public function get xml():XML
		{
			return _xml;
		}
	}
}