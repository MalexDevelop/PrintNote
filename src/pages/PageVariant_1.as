/**
 * @author Malex
 */
package pages
{
	import node.sector_1.Sector_1;
	import node.sector_2.Sector_2;
	import node.sector_3.Sector_3;
	import node.sector_4.Sector_4;
	import node.sector_5.Sector_5;

	/**
	 * Класс страницы для печати. Вариант 1.
	 */	
	public class PageVariant_1 extends Page
	{
		protected var _sector_1:Sector_1;
		protected var _sector_2:Sector_2;
		protected var _sector_3:Sector_3;
		protected var _sector_4:Sector_4;
		protected var _sector_5:Sector_5;
		
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
			
			_sector_4 = new Sector_4();
			_sector_4.x = 0;
			_sector_4.y =_sector_3.y + _sector_3.height - 15;
			addChild(_sector_4);
			
			_sector_5 = new Sector_5();
			_sector_5.x = 0;
			_sector_5.y =_sector_4.y + _sector_4.height;
			addChild(_sector_5);
		}
	}
}