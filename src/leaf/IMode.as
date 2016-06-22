/**
 * @author Malex
 */
package leaf
{
	public interface IMode
	{
		/**
		 * Определяет/возвращает логическое значение, указывающее на то, что в данном поле разрешены только цифры.
		 */	
		function get isRestrict():Boolean
		function setRestrict(value:Boolean, restrict:String):void
	}
}