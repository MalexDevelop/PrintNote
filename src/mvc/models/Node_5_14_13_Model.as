/**
 * @author Malex
 */
package mvc.models
{
	
	public class Node_5_14_13_Model extends Model
	{
		private static var _model:Model;
		
		public function Node_5_14_13_Model(privateClass:PrivateClass)
		{
			
		}
		
		public static function getModel():Model
		{
			if(_model == null){
				_model = new Node_5_14_13_Model(new PrivateClass());
			}
			return _model;
		}
	}
}

class PrivateClass{}