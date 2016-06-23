/**
 * @author Malex
 */
package node.sector_5
{
	import node.Node;
	
	
	public class Sector_5 extends Node
	{
		public function Sector_5()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 595;
			this.height = 354;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0x912273, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			
		}
	}
}