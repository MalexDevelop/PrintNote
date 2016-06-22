/**
 * @author Malex
 */
package node.sector_3
{
	import node.Node;
	import node.Box;
	import node.sector_3.nodes.Node_3_1;
	
	public class Sector_3 extends Node
	{
		private var _node_3_1:Box;
		private var _node_3_2:Box;
		private var _node_3_3:Box;
		
		public function Sector_3()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 425;
			this.height = 200;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0x0000FF, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			/** Акт/(дата складання акта) */
			_node_3_1 = new Node_3_1();
			_node_3_1.x = (width - _node_3_1.width) / 2;
			_node_3_1.y = 0;
			addChild(_node_3_1);
		}
	}
}