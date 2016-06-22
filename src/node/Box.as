/**
 * @author Malex
 */
package node
{
	import leaf.IInput;
	import leaf.Title;
	import leaf.Input;
	import leaf.IMode;
	
	/**
	 * Узел, который включает в себя как текстовые поля для воода, так и текствые поля - заголовки.
	 */	
	public class Box extends Node implements IMode
	{
		/** Текстовое поле - заголовок */
		protected var _titleField:Title;
		/** Редактируемое текстовое поле */
		protected var _inputField:Input;
		
		//***********************************************
		//
		// GET / SET
		//
		//***********************************************
		
		public function get isRestrict():Boolean
		{
			return _inputField.isRestrict;
		}
		public function setRestrict(value:Boolean, restrict:String):void
		{
		
		}
	}
}