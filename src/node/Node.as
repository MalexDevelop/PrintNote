/**
 * @author Malex
 */
package node
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import leaf.IInput;
	
	/**
	 * Абстрактный класс.
	 * Должен быть расширен а не унаследован.
	 * Классы Box.as и Sector.as должны расширять данный класс.
	 */	
	public class Node extends Sprite implements IInput
	{
		/** Ширина объекта */
		protected var _width:Number;
		/** Высота объекта */
		protected var _height:Number;
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		protected function init():void
		{
			// for override
		}
		
		//***********************************************
		//
		// PUBLIC FUNCTIONS
		//
		//***********************************************
		
		public function clearText():void
		{
			for(var i:int = 0; i < this.numChildren; i++)
			{
				var child:IInput = getChildAt(i) as IInput;
				if(child){
					child.clearText();
				}
			}
		}
		
		//***********************************************
		//
		// GET / SET
		//
		//***********************************************
		
		override public function get width():Number
		{
			return _width
		}
		override public function set width(value:Number):void
		{
			_width = value;
			dispatchEvent(new Event(Event.RESIZE));
		}
		
		
		
		override public function get height():Number
		{
			return _height;
		}
		override public function set height(value:Number):void
		{
			_height = value;
			dispatchEvent(new Event(Event.RESIZE));
		}
	}
}