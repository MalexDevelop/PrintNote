/**
 * @author Malex
 */
package utils
{
	import value.TextValue;
	
	/**
	 * Читает XML документ и записывает данные в массив объекта TextValue.getInstance().getArray()
	 */	
	public class TextManager
	{
		private var _xml:XML;
		
		public function TextManager(xml:XML)
		{
			if(xml != null)_xml = xml;
			init();
		}
		
		private function init():void
		{
			var array:Array = TextValue.getInstance().getArray();
			
			for(var i:int = 0; i < array.length; i++){
				for each (var string:String in _xml.children()[i].elements()){
					array[i].push(string);
				}
			}
		}
	}
}