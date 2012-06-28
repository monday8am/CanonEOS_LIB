package com.monday8am.ane
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
		
		private var _ExtensionContext : ExtensionContext;
		private var _camera : Camera; 
		private var _extensionContextReady : Boolean = true;
		public  var lastError : Error;
		
		
		public function CanonEOSLib()
		{
			try 
			{
				_ExtensionContext = ExtensionContext.createExtensionContext(  "com.monday8am.ane.CanonEOSLib" , null );
			}
			catch( e : Error ) 
			{
				lastError = e;
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