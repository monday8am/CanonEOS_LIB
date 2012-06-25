package com.monday8am.photobooth
{
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	import flash.text.ReturnKeyLabel;
	
	public class CanonEOSLib extends EventDispatcher
	{
		
		public static const ExpCompValues			 : Array = [ { data: "+3" 	  , value: 0x18 },
																 { data: "+2 2/3" , value: 0x15 },
																 { data: "+2 1/2" , value: 0x14 },
																 { data: "+2 1/3" , value: 0x13 },
																 { data: "+2" 	  , value: 0x10 },
																 { data: "+1 2/3" , value: 0x0d },
																 { data: "+1 1/2" , value: 0x0c },
																 { data: "+1 1/3" , value: 0x0b },
																 { data: "+1" 	  , value: 0x08 },
																 { data: "+2/3"   , value: 0x05 },
																 { data: "+1/2"   , value: 0x04 },
																 { data: "+1/3"   , value: 0x03 },
																 { data: "0"      , value: 0x00 },
																 { data: "-1/3"   , value: 0xfd },
																 { data: "-1/2"   , value: 0xfc },
																 { data: "-1" 	  , value: 0xf8 },
																 { data: "-1 1/3" , value: 0xf5 },
																 { data: "-1 1/2" , value: 0xf4 },
																 { data: "-1 2/3" , value: 0xf3 },
																 { data: "-2" 	  , value: 0xf0 },
																 { data: "-2 1/3" , value: 0xed },
																 { data: "-2 1/2" , value: 0xec },
																 { data: "-2 2/3" , value: 0xeb },
																 { data: "-3" 	  , value: 0xe8 },
																 { data: "unknown", value: 0xffffffff }
																 ];
		

		
		
		public static const AvValues				 : Array = [ { data: "00" , value: 0x00 },
																 { data: "1"  , value: 0x08 },
																 { data: "1.1", value: 0x0B },
																 { data: "1.2", value: 0x0C },
																 { data: "1.2", value: 0x0D },
																 { data: "1.4", value: 0x10 },
																 { data: "1.6", value: 0x13 },
																 { data: "1.8", value: 0x14 },
																 { data: "1.8", value: 0x15 },
																 { data: "2"  , value: 0x18 },
																 { data: "2.2", value: 0x1B },
																 { data: "2.5", value: 0x1C },
																 { data: "2.5", value: 0x1D },
																 { data: "2.8", value: 0x20 },
																 { data: "3.2", value: 0x23 },
																 { data: "3.5", value: 0x24 },
																 { data: "3.5", value: 0x25 },
																 { data: "4"  , value: 0x28 },
																 { data: "4.5", value: 0x2B },
																 { data: "4.5", value: 0x2C },
																 { data: "5.0", value: 0x2D },
																 { data: "5.6", value: 0x30 },
																 { data: "6.3", value: 0x33 },
																 { data: "6.7", value: 0x34 },
																 { data: "7.1", value: 0x35 },
																 { data: "8"  , value: 0x38 },
																 { data: "9"  , value: 0x3B },
																 { data: "9.5", value: 0x3C },
																 { data: "10" , value: 0x3D },
																 { data: "11" , value: 0x40 },
																 { data: "13" , value: 0x43 },
																 { data: "13" , value: 0x44 },
																 { data: "14" , value: 0x45 },
																 { data: "16" , value: 0x48 },
																 { data: "18" , value: 0x4B },
																 { data: "19" , value: 0x4C },
																 { data: "20" , value: 0x4D },
																 { data: "22" , value: 0x50 },
																 { data: "25" , value: 0x53 },
																 { data: "27" , value: 0x54 },
																 { data: "29" , value: 0x55 },
																 { data: "32" , value: 0x58 },
																 { data: "36" , value: 0x5B },
																 { data: "38" , value: 0x5C },
																 { data: "40" , value: 0x5D },
																 { data: "45" , value: 0x60 },
																 { data: "51" , value: 0x63 },
																 { data: "54" , value: 0x64 },
																 { data: "57" , value: 0x65 },
																 { data: "64" , value: 0x68 },
																 { data: "72" , value: 0x6B },
																 { data: "76" , value: 0x6C },
																 { data: "80" , value: 0x6D },
																 { data: "91" , value: 0x70 },
																 { data: "unknown", value: 0xffffffff }	
																];
		
		
		public static const IsoValues				 : Array = [ { data: "Auto"   , value: 0x00 },
																 { data: "6"      , value: 0x28 },
																 { data: "12"     , value: 0x30 },
																 { data: "25"     , value: 0x38 },
																 { data: "50"     , value: 0x40 },
																 { data: "100"    , value: 0x48 },
																 { data: "125"    , value: 0x4b },
																 { data: "160"    , value: 0x4d },
																 { data: "200"    , value: 0x50 },
																 { data: "250"    , value: 0x53 },
																 { data: "320"    , value: 0x55 },
																 { data: "400"    , value: 0x58 },
																 { data: "500"    , value: 0x5b },
																 { data: "640"    , value: 0x5d },
																 { data: "800"    , value: 0x60 },
																 { data: "1000"   , value: 0x63 },
																 { data: "1250"   , value: 0x65 },
																 { data: "1600"   , value: 0x68 },
																 { data: "3200"   , value: 0x70 },
																 { data: "6400"   , value: 0x78 },
																 { data: "12800"  , value: 0x80 },
																 { data: "25600"  , value: 0x88 },
																 { data: "51200"  , value: 0x90 },
															 	 { data: "102400" , value: 0x98 },
																 { data: "unknown", value: 0xffffffff }];
		
		
		public static const AeModesValues			 : Array = [ { data: "Bulb", value: 0x0c },
																 { data: "30h" , value: 0x10 },
																 { data: "25h" , value: 0x13 },
																 { data: "20h" , value: 0x14 },
																 { data: "20h" , value: 0x15 },
																 { data: "15h" , value: 0x18 },
																 { data: "13h" , value: 0x1B },
																 { data: "10h" , value: 0x1C },
																 { data: "10h" , value: 0x1D },
																 { data: "8h"  , value: 0x20 },
																 { data: "6h"  , value: 0x23 },
																 { data: "6h"  , value: 0x24 },
																 { data: "5h"  , value: 0x25 },
																 { data: "4h"  , value: 0x28 },
																 { data: "3h2" , value: 0x2B },
																 { data: "3h"  , value: 0x2C },
																 { data: "2h5" , value: 0x2D },
																 { data: "2h"  , value: 0x30 },
																 { data: "1h6" , value: 0x33 },
																 { data: "1h5" , value: 0x34 },
																 { data: "1h3" , value: 0x35 },
																 { data: "1h"  , value: 0x38 },
																 { data: "0h8" , value: 0x3B },
																 { data: "0h7" , value: 0x3C },
																 { data: "0h6" , value: 0x3D },
																 { data: "0h5" , value: 0x40 },
																 { data: "0h4" , value: 0x43 },
																 { data: "0h3" , value: 0x44 },
																 { data: "0h3" , value: 0x45 },
																 { data: "4"   , value: 0x48 },
																 { data: "5"   , value: 0x4B },
																 { data: "6"   , value: 0x4C },
																 { data: "6"   , value: 0x4D },
																 { data: "8"   , value: 0x50 },
																 { data: "10"  , value: 0x53 },
																 { data: "10"  , value: 0x54 },
																 { data: "13"  , value: 0x55 },
																 { data: "15"  , value: 0x58 },
																 { data: "20"  , value: 0x5B },
																 { data: "20"  , value: 0x5C },
																 { data: "25"  , value: 0x5D },
																 { data: "30"  , value: 0x60 },
																 { data: "40"  , value: 0x63 },
																 { data: "45"  , value: 0x64 },
																 { data: "50"  , value: 0x65 },
																 { data: "60"  , value: 0x68 },
																 { data: "80"  , value: 0x6B },
																 { data: "90"  , value: 0x6C },
																 { data: "100" , value: 0x6D },
																 { data: "125" , value: 0x70 },
																 { data: "160" , value: 0x73 },
																 { data: "180" , value: 0x74 },
																 { data: "200" , value: 0x75 },
																 { data: "250" , value: 0x78 },
															     { data: "320" , value: 0x7B },
																 { data: "350" , value: 0x7C },
																 { data: "400" , value: 0x7D },
																 { data: "500" , value: 0x80 },
																 { data: "640" , value: 0x83 },
																 { data: "750" , value: 0x84 },
																 { data: "800" , value: 0x85 },
																 { data: "1000", value: 0x88 },
																 { data: "1250", value: 0x8B },
																 { data: "1500", value: 0x8C },
																 { data: "1600", value: 0x8D },
																 { data: "2000", value: 0x90 },
																 { data: "2500", value: 0x93 },
																 { data: "3000", value: 0x94 },
																 { data: "3200", value: 0x95 },
																 { data: "4000", value: 0x98 },
																 { data: "5000", value: 0x9B },
																 { data: "6000", value: 0x9C },
																 { data: "6400", value: 0x9D },
																 { data: "8000", value: 0xA0 },
																 { data: "unknown", value: 0xffffffff }
																 ];
		
		
		public static const TvValues				 : Array = [ { data: "P", value: 0 },
																 { data: "Tv", value: 1 },
																 { data: "Av", value: 2 },
																 { data: "M", value: 3 },
																 { data: "Bulb", value: 4 },
																 { data: "A-DEP", value: 5 },
																 { data: "DEP", value: 6 },
																 { data: "C1", value: 7 },
																 { data: "C2", value: 16 },
																 { data: "C3", value: 17 },
																 { data: "Lock", value: 8 },
																 { data: "GreenMode", value: 9 },
																 { data: "Night Portrait", value: 10 },
																 { data: "Sports", value: 11 },
																 { data: "LandScape", value: 13 },
																 { data: "Close Up", value: 14 },
																 { data: "No Strobo", value: 15 },
																 { data: "Portrait", value: 12 },
																 { data: "Creative Auto", value: 19 },
																 { data: "unknown", value: 0xffffffff }
																];
		

		private var _ExtensionContext : ExtensionContext;
		private var _camera : Camera; 
		private var _extensionContextReady : Boolean = false;
		
		public function CanonEOSLib()
		{
			try 
			{
				_ExtensionContext = ExtensionContext.createExtensionContext( "com.monday8am.photobooth" , null );
			}
			catch( e : Error ) 
			{
				trace( e);
			}	
		}
		
		
		public function get extensionContextReady():Boolean
		{
			if( _ExtensionContext == null )
			{
				_extensionContextReady = false;
			}
			else
			{
				_extensionContextReady = true;
			}
			
			return _extensionContextReady;
		}

		
		public function getCamera():Camera
		{
			if( _camera == null )
			{
				_camera = new Camera( _ExtensionContext );
			}
			
			return _camera;
		}
		
		public function dispose():void 
		{ 
			if( _camera != null ) _camera.release();
			
			return _ExtensionContext.dispose(); 	
		}	
		
		
		public function isSupported():Boolean 
		{ 
			return _ExtensionContext.call( "isSupported" ); 
		}
		
		
	}
}