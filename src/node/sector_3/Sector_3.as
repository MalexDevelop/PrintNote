/**
 * @author Malex
 */
package node.sector_3
{
	import node.Node;
	
	public class Sector_3 extends Node
	{
		public function Sector_3()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 170;
			this.height = 350;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0x0000FF, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			// expect code
		}
	}
}