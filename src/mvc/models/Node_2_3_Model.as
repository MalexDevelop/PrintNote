/**
 * @author Malex
 */
package mvc.models
{
	
	public class Node_2_3_Model extends Model
	{
		private static var _model:Model;
		
		public function Node_2_3_Model(privateClass:PrivateClass)
		{
			
		}
		
		public static function getModel():Model
		{
			if(_model == null){
				_model = new Node_2_3_Model(new PrivateClass());
			}
			return _model;
		}
	}
}

class PrivateClass{}