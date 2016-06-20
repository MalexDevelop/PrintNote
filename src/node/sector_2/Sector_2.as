/**
 * @author Malex
 */
package node.sector_2
{
	import node.Box;
	import node.Node;
	import node.sector_2.nodes.Node_2_1;
	import node.sector_2.nodes.Node_2_2;
	import node.sector_2.nodes.Node_2_3;
	
	
	public class Sector_2 extends Node
	{
		private var _node_2_1:Box;
		private var _node_2_2:Box;
		private var _node_2_3:Box;
		
		public function Sector_2()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 170;
			this.height = 360;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0x00FF00, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			/** Сумка опломбована пломбіром № */
			_node_2_1 = new Node_2_1();
			_node_2_1.x = 30;
			_node_2_1.y = 18;
			addChild(_node_2_1);
			
			/** Сумма/Загальна */
			_node_2_2 = new Node_2_2();
			_node_2_2.x = 10; 
			_node_2_2.y = _node_2_1.y + _node_2_1.height;
			addChild(_node_2_2);
			
			_node_2_3 = new Node_2_3();
			_node_2_3.x = 10; 
			_node_2_3.y = _node_2_2.y + _node_2_2.height + 10;
			addChild(_node_2_3);
		}
	}
}