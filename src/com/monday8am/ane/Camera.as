package com.monday8am.ane
{

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.events.TimerEvent;
	import flash.external.ExtensionContext;
	import flash.utils.Timer;
	
	
	
	public class Camera extends EventDispatcher
	{
		
		public static const PropertyDescChanged : String = "PropertyDescChanged";
		public static const PropertyChanged	    : String = "PropertyChanged";
		public static const EvfDataChanged 		: String = "EvfDataChanged";
		public static const DeviceBusy 			: String = "DeviceBusy";
		public static const Error 				: String = "error";
		public static const Other				: String = "info";
		
		
		private var _extension : ExtensionContext;
		
		
		public function Camera( extension : ExtensionContext )
		{
			_extension = extension;
			_extension.addEventListener(  StatusEvent.STATUS, onStatus );
			
			initCamera();
		}
		

		
		/**
		 * 
		 * Init methods
		 * 
		 **/  
		
		private function initCamera() : Boolean { return _extension.call( "initCamera" ); }
		public  function release()	  : Boolean { return _extension.call( "releaseCamera" ); }
		
		
		
		/**
		 * 
		 *  Camera Setting methods
		 * 
		 **/
		
		public function getAv()   				 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_Av )); }
		public function getIso()			  	 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_ISOSpeed  )); }
		public function getTv()					 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_Tv )); }
		public function getAeMode()				 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_AEMode )); }
		public function getImageQuality()		 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_ImageQuality )); }
		public function getMeteringMode()		 : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_MeteringMode )); }
		public function getExposureComposition() : uint { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_ExposureCompensation )); }
		
		public function setAv( newValue : uint)	 				  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_Av, newValue  );  }
		public function setTv( newValue : uint)					  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_Tv , newValue  );  }
		public function setIso( newValue : uint)				  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_ISOSpeed, newValue  );  }
		public function setAeMode( newValue : uint)				  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_AEMode, newValue  );  }
		public function setImageQuality( newValue : uint)		  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_ImageQuality, newValue  );  }
		public function setMeteringMode( newValue : uint)		  : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_MeteringMode, newValue  );  }
		public function setExposureCompensation( newValue : uint) : Boolean { return _extension.call( "setCameraProperty", EDSDKTypes.kEdsPropID_ExposureCompensation, newValue  );  }
		
		public function getCameraProperty( propId : uint ) : uint 
		{ 
			return uint( _extension.call( "getCameraProperty" ,propId )); 
		}
		
		public function setCameraProperty( propId : uint, propValue : uint ) : Boolean 
		{ 
			return _extension.call( "setCameraProperty" ,propId, propValue ); 
		}
		
		public function getCameraPropertyDesc( propId : uint, propValues : Array ) : Boolean 
		{ 
			return _extension.call( "getCameraPropertyDesc" ,propId, propValues ); 
		}		
		

		/**
		 * 
		 *  Shoot methods
		 * 
		 **/
		
		public function takePicture( path : String ): Boolean { return _extension.call( "executeCommand", "TakePicture", path ) }
		public function pressingHalfway()			: Boolean { return _extension.call( "executeCommand", "pressingHalfway" ); }
		public function pressingCompletely()		: Boolean { return _extension.call( "executeCommand", "pressingCompletely" ); }
		public function pressingOff()				: Boolean { return _extension.call( "executeCommand", "pressingOff" ); }

		
		/**
		 * 
		 *  EVF methods
		 * 
		 **/
		
		public function startEVF():Boolean 
		{  
			var timer : Timer = new Timer( 4000, 1 );
			timer.addEventListener( TimerEvent.TIMER_COMPLETE, onTimerComplete );
			timer.start();
			function onTimerComplete( e : Event ) : void {  _extension.call( "executeCommand", "downloadEVF" );  }
			
			return  _extension.call( "executeCommand", "startEVF" );  
		}
		
		public function getEVF( _bitmapData : BitmapData ) : Boolean { return _extension.call( "getEVF", _bitmapData ); }	
		public function endEVF()						   : Boolean { return _extension.call( "executeCommand", "endEVF" );  }
		public function evfAFOn()						   : Boolean { return _extension.call( "executeCommand", "evfAFOn" );  }
		public function evfAFOff()						   : Boolean { return _extension.call( "executeCommand", "evfAFOff" );  }
		public function getEvfWidth()  				 : uint 	{ return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_Evf_Width ) ); } 
		public function getEvfHeight() 				 : uint     { return uint( _extension.call( "getCameraProperty", EDSDKTypes.kEdsPropID_Evf_Height ) ); }
		
		
		/**
		 * 
		 *  Event handlers
		 * 
		 */ 
		
		private function onStatus( event : StatusEvent ):void
		{
			var e : StatusEvent = new StatusEvent( StatusEvent.STATUS );
			e.level = event.level;
			e.code  = event.code;
			dispatchEvent( e );
		}	
		
		
		/**
		 * 
		 *  Utils
		 * 
		 */ 
		
		private function getNumberAsHexString( number_str:String, minimumLength:uint = 1, showHexDenotation:Boolean = true ) : String 
		{
			
			// The string that will be output at the end of the function.
			var string:String = number_str.toUpperCase();
			
			// While the minimumLength argument is higher than the length of the string, add a leading zero.
			while (minimumLength > string.length) 
			{
				string = "0" + string;
			}
			
			// Return the result with a "0x" in front of the result.
			if (showHexDenotation) { string = "0x" + string; }
			
			return string;
		}	
			

		
	}
}