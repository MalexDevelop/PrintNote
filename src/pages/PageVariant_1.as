/**
 * @author Malex
 */
package pages
{
	import node.sector_1.Sector_1;
	import node.sector_2.Sector_2;
	import node.sector_3.Sector_3;

	/**
	 * Класс страницы для печати. Вариант 1.
	 */	
	public class PageVariant_1 extends Page
	{
		protected var _sector_1:Sector_1;
		protected var _sector_2:Sector_2;
		protected var _sector_3:Sector_3;
		
		public function PageVariant_1(label:String)
		{
			super(label);
			addChildren();
		}
		
		override protected function addChildren():void
		{
			_sector_1 = new Sector_1();
			addChild(_sector_1);
			
			_sector_2 = new Sector_2();
			_sector_2.x = _sector_1.width;
			_sector_2.y = 0;
			addChild(_sector_2);
			
			_sector_3 = new Sector_3();
			_sector_3.x = 0;
			_sector_3.y = _sector_1.height;
			addChild(_sector_3);
		}
	}
}