package com.monday8am.ane
{
	
	public class EDSDKTypes 
	{
		
		/******************************************************************************
		 Definition of Constants
		 ******************************************************************************/
		public static const EDS_MAX_NAME            : int = 256;
		public static const EDS_TRANSFER_BLOCK_SIZE : int = 512;
		
		/******************************************************************************
		 Definition of Data Types
		 ******************************************************************************/
		/*-----------------------------------------------------------------------------
		Basic Types
		-----------------------------------------------------------------------------*/
		
		public static const FALSE                   : int = 0;
		public static const TRUE                    : int = 1;
		
		
		
		/*----------------------------------
		Camera Setting Properties
		----------------------------------*/
		public static const kEdsPropID_Unknown                : uint = 0x0000ffff;
		
		public static const kEdsPropID_ProductName            : uint = 0x00000002;
		public static const kEdsPropID_OwnerName              : uint = 0x00000004;
		public static const kEdsPropID_MakerName              : uint = 0x00000005;
		public static const kEdsPropID_DateTime               : uint = 0x00000006;
		public static const kEdsPropID_FirmwareVersion        : uint = 0x00000007;
		public static const kEdsPropID_BatteryLevel           : uint = 0x00000008;
		public static const kEdsPropID_CFn                    : uint = 0x00000009;
		public static const kEdsPropID_SaveTo                 : uint = 0x0000000b;
		public static const kEdsPropID_CurrentStorage         : uint = 0x0000000c;
		public static const kEdsPropID_CurrentFolder          : uint = 0x0000000d;
		public static const kEdsPropID_MyMenu		           : uint = 0x0000000e;
		
		public static const kEdsPropID_BatteryQuality         : uint = 0x00000010;
		
		public static const kEdsPropID_BodyIDEx			   : uint = 0x00000015;
		public static const kEdsPropID_HDDirectoryStructure   : uint = 0x00000020;
		
		
		/*----------------------------------
		Image Properties
		----------------------------------*/
		public static const kEdsPropID_ImageQuality           : uint = 0x00000100;
		public static const kEdsPropID_JpegQuality            : uint = 0x00000101;
		public static const kEdsPropID_Orientation            : uint = 0x00000102;
		public static const kEdsPropID_ICCProfile             : uint = 0x00000103;
		public static const kEdsPropID_FocusInfo              : uint = 0x00000104;
		public static const kEdsPropID_DigitalExposure        : uint = 0x00000105;
		public static const kEdsPropID_WhiteBalance           : uint = 0x00000106;
		public static const kEdsPropID_ColorTemperature       : uint = 0x00000107;
		public static const kEdsPropID_WhiteBalanceShift      : uint = 0x00000108;
		public static const kEdsPropID_Contrast               : uint = 0x00000109;
		public static const kEdsPropID_ColorSaturation        : uint = 0x0000010a;
		public static const kEdsPropID_ColorTone              : uint = 0x0000010b;
		public static const kEdsPropID_Sharpness              : uint = 0x0000010c;
		public static const kEdsPropID_ColorSpace             : uint = 0x0000010d;
		public static const kEdsPropID_ToneCurve              : uint = 0x0000010e;
		public static const kEdsPropID_PhotoEffect            : uint = 0x0000010f;
		public static const kEdsPropID_FilterEffect           : uint = 0x00000110;
		public static const kEdsPropID_ToningEffect           : uint = 0x00000111;
		public static const kEdsPropID_ParameterSet           : uint = 0x00000112;
		public static const kEdsPropID_ColorMatrix            : uint = 0x00000113;
		public static const kEdsPropID_PictureStyle           : uint = 0x00000114;
		public static const kEdsPropID_PictureStyleDesc       : uint = 0x00000115;
		public static const kEdsPropID_PictureStyleCaption    : uint = 0x00000200;
		
		/*----------------------------------
		Image Processing Properties
		----------------------------------*/
		public static const kEdsPropID_Linear                 : uint = 0x00000300;
		public static const kEdsPropID_ClickWBPoint           : uint = 0x00000301;
		public static const kEdsPropID_WBCoeffs               : uint = 0x00000302;
		
		
		/*----------------------------------
		Image GPS Properties
		----------------------------------*/
		public static const kEdsPropID_GPSVersionID			  : uint = 0x00000800; 	
		public static const	kEdsPropID_GPSLatitudeRef		  : uint = 0x00000801;		
		public static const	kEdsPropID_GPSLatitude			  : uint = 0x00000802;
		public static const	kEdsPropID_GPSLongitudeRef		  : uint = 0x00000803; 	
		public static const	kEdsPropID_GPSLongitude			  : uint = 0x00000804; 		
		public static const	kEdsPropID_GPSAltitudeRef		  : uint = 0x00000805; 		
		public static const	kEdsPropID_GPSAltitude			  : uint = 0x00000806; 		
		public static const	kEdsPropID_GPSTimeStamp			  : uint = 0x00000807; 		
		public static const	kEdsPropID_GPSSatellites		  : uint = 0x00000808; 		
		public static const	kEdsPropID_GPSStatus			  : uint = 0x00000809;
		public static const	kEdsPropID_GPSMapDatum			  : uint = 0x00000812; 		
		public static const	kEdsPropID_GPSDateStamp			  : uint = 0x0000081D; 		
		
		
		/*----------------------------------
		Property Mask
		----------------------------------*/
		public static const kEdsPropID_AtCapture_Flag         	  : uint = 0x80000000;
		
		
		/*----------------------------------
		Capture Properties
		----------------------------------*/
		public static const kEdsPropID_AEMode                 : uint = 0x00000400;
		public static const kEdsPropID_DriveMode              : uint = 0x00000401;
		public static const kEdsPropID_ISOSpeed               : uint = 0x00000402;
		public static const kEdsPropID_MeteringMode           : uint = 0x00000403;
		public static const kEdsPropID_AFMode                 : uint = 0x00000404;
		public static const kEdsPropID_Av                     : uint = 0x00000405;
		public static const kEdsPropID_Tv                     : uint = 0x00000406;
		public static const kEdsPropID_ExposureCompensation   : uint = 0x00000407;
		public static const kEdsPropID_FlashCompensation      : uint = 0x00000408;
		public static const kEdsPropID_FocalLength            : uint = 0x00000409;
		public static const kEdsPropID_AvailableShots         : uint = 0x0000040a;
		public static const kEdsPropID_Bracket                : uint = 0x0000040b;
		public static const kEdsPropID_WhiteBalanceBracket    : uint = 0x0000040c;
		public static const kEdsPropID_LensName               : uint = 0x0000040d;
		public static const kEdsPropID_AEBracket              : uint = 0x0000040e;
		public static const kEdsPropID_FEBracket              : uint = 0x0000040f;
		public static const kEdsPropID_ISOBracket             : uint = 0x00000410;
		public static const kEdsPropID_NoiseReduction         : uint = 0x00000411;
		public static const kEdsPropID_FlashOn                : uint = 0x00000412;
		public static const kEdsPropID_RedEye                 : uint = 0x00000413;
		public static const kEdsPropID_FlashMode              : uint = 0x00000414;
		public static const kEdsPropID_LensStatus             : uint = 0x00000416;
		public static const kEdsPropID_Artist	              : uint = 0x00000418;
		public static const kEdsPropID_Copyright	          : uint = 0x00000419;
		public static const kEdsPropID_DepthOfField	       	  : uint = 0x0000041b;
		public static const kEdsPropID_EFCompensation         : uint = 0x0000041e;
		
		/*----------------------------------
		EVF Properties
		----------------------------------*/
		public static const kEdsPropID_Evf_OutputDevice        : uint = 0x00000500;
		public static const kEdsPropID_Evf_Mode                : uint = 0x00000501;
		public static const kEdsPropID_Evf_WhiteBalance        : uint = 0x00000502;
		public static const kEdsPropID_Evf_ColorTemperature    : uint = 0x00000503;
		public static const kEdsPropID_Evf_DepthOfFieldPreview : uint = 0x00000504;
		public static const kEdsPropID_Evf_Width			   : uint = 0x00000506;
		public static const kEdsPropID_Evf_Height			   : uint = 0x00000507;
		
		// EVF IMAGE DATA Properties
		public static const kEdsPropID_Evf_Zoom                : uint = 0x00000507;
		public static const kEdsPropID_Evf_ZoomPosition        : uint = 0x00000508;
		public static const kEdsPropID_Evf_FocusAid            : uint = 0x00000509;
		public static const kEdsPropID_Evf_Histogram           : uint = 0x0000050A;
		public static const kEdsPropID_Evf_ImagePosition       : uint = 0x0000050B;
		public static const kEdsPropID_Evf_HistogramStatus     : uint = 0x0000050C;
		public static const kEdsPropID_Evf_AFMode              : uint = 0x0000050E;
		
		public static const kEdsPropID_Evf_CoordinateSystem    : uint = 0x00000540;
		public static const kEdsPropID_Evf_ZoomRect            : uint = 0x00000541;
		
		/*-----------------------------------------------------------------------------
		Camera Commands
		-----------------------------------------------------------------------------*/
		
		/*----------------------------------
		Send Commands
		----------------------------------*/
		public static const kEdsCameraCommand_TakePicture                     : uint = 0x00000000;
		public static const kEdsCameraCommand_ExtendShutDownTimer             : uint = 0x00000001;
		public static const kEdsCameraCommand_BulbStart					  	  : uint = 0x00000002;
		public static const kEdsCameraCommand_BulbEnd						  : uint = 0x00000003;
		public static const kEdsCameraCommand_DoEvfAf                         : uint = 0x00000102;
		public static const kEdsCameraCommand_DriveLensEvf                    : uint = 0x00000103;
		public static const kEdsCameraCommand_DoClickWBEvf                    : uint = 0x00000104;
		
		public static const kEdsCameraCommand_PressShutterButton			   : uint = 0x00000004;
		
		
		/*----------------------------------
		Camera Status Commands
		----------------------------------*/
		public static const kEdsCameraStatusCommand_UILock                    : uint = 0x00000000;
		public static const kEdsCameraStatusCommand_UIUnLock                  : uint = 0x00000001;
		public static const kEdsCameraStatusCommand_EnterDirectTransfer       : uint = 0x00000002;
		public static const kEdsCameraStatusCommand_ExitDirectTransfer        : uint = 0x00000003;
		;
		/*-----------------------------------------------------------------------------
		Camera Events
		-----------------------------------------------------------------------------*/
		/*----------------------------------
		Property Event
		----------------------------------*/
		
		/* Notifies all property events. */
		public static const kEdsPropertyEvent_All                       : uint = 0x00000100;
		
		/* Notifies that a camera property value has been changed. 
		The changed property can be retrieved from event data. 
		The changed value can be retrieved by means of EdsGetPropertyData. 
		In the case of type 1 protocol standard cameras, 
		notification of changed properties can only be issued for custom functions (CFn). 
		If the property type is 0x0000FFFF, the changed property cannot be identified. 
		Thus, retrieve all required properties repeatedly. */
		public static const kEdsPropertyEvent_PropertyChanged           : uint = 0x00000101;
		
		/* Notifies of changes in the list of camera properties with configurable values. 
		The list of configurable values for property IDs indicated in event data 
		can be retrieved by means of EdsGetPropertyDesc. 
		For type 1 protocol standard cameras, the property ID is identified as "Unknown"
		during notification. 
		Thus, you must retrieve a list of configurable values for all properties and
		retrieve the property values repeatedly. 
		(For details on properties for which you can retrieve a list of configurable
		properties, 
		see the description of EdsGetPropertyDesc). */
		public static const kEdsPropertyEvent_PropertyDescChanged       : uint = 0x00000102;
		
		/*----------------------------------
		Object Event
		----------------------------------*/
		
		/* Notifies all object events. */
		public static const kEdsObjectEvent_All                         : uint = 0x00000200;
		
		/* Notifies that the volume object (memory card) state (VolumeInfo)
		has been changed. 
		Changed objects are indicated by event data. 
		The changed value can be retrieved by means of EdsGetVolumeInfo. 
		Notification of this event is not issued for type 1 protocol standard cameras. */
		public static const kEdsObjectEvent_VolumeInfoChanged           : uint = 0x00000201;
		
		/* Notifies if the designated volume on a camera has been formatted.
		If notification of this event is received, get sub-items of the designated
		volume again as needed. 
		Changed volume objects can be retrieved from event data. 
		Objects cannot be identified on cameras earlier than the D30
		if files are added or deleted. 
		Thus, these events are subject to notification. */
		public static const kEdsObjectEvent_VolumeUpdateItems           : uint = 0x00000202;
		
		/* Notifies if many images are deleted in a designated folder on a camera.
		If notification of this event is received, get sub-items of the designated
		folder again as needed. 
		Changed folders (specifically, directory item objects) can be retrieved
		from event data. */
		public static const kEdsObjectEvent_FolderUpdateItems           : uint = 0x00000203;
		
		/* Notifies of the creation of objects such as new folders or files
		on a camera compact flash card or the like. 
		This event is generated if the camera has been set to store captured
		images simultaneously on the camera and a computer,
		for example, but not if the camera is set to store images
		on the computer alone. 
		Newly created objects are indicated by event data. 
		Because objects are not indicated for type 1 protocol standard cameras,
		(that is, objects are indicated as NULL),
		you must again retrieve child objects under the camera object to 
		identify the new objects. */
		public static const kEdsObjectEvent_DirItemCreated              : uint = 0x00000204;
		
		/* Notifies of the deletion of objects such as folders or files on a camera
		compact flash card or the like. 
		Deleted objects are indicated in event data. 
		Because objects are not indicated for type 1 protocol standard cameras, 
		you must again retrieve child objects under the camera object to
		identify deleted objects. */
		public static const kEdsObjectEvent_DirItemRemoved              : uint = 0x00000205;
		
		/* Notifies that information of DirItem objects has been changed. 
		Changed objects are indicated by event data. 
		The changed value can be retrieved by means of EdsGetDirectoryItemInfo. 
		Notification of this event is not issued for type 1 protocol standard cameras. */
		public static const kEdsObjectEvent_DirItemInfoChanged          : uint = 0x00000206;
		
		/* Notifies that header information has been updated, as for rotation information
		of image files on the camera. 
		If this event is received, get the file header information again, as needed. 
		This function is for type 2 protocol standard cameras only. */
		public static const kEdsObjectEvent_DirItemContentChanged       : uint = 0x00000207;
		
		/* Notifies that there are objects on a camera to be transferred to a computer. 
		This event is generated after remote release from a computer or local release
		from a camera. 
		If this event is received, objects indicated in the event data must be downloaded.
		Furthermore, if the application does not require the objects, instead
		of downloading them,
		execute EdsDownloadCancel and release resources held by the camera. 
		The order of downloading from type 1 protocol standard cameras must be the order
		in which the events are received. */
		public static const kEdsObjectEvent_DirItemRequestTransfer      : uint = 0x00000208;
		
		/* Notifies if the camera's direct transfer button is pressed. 
		If this event is received, objects indicated in the event data must be downloaded. 
		Furthermore, if the application does not require the objects, instead of
		downloading them, 
		execute EdsDownloadCancel and release resources held by the camera. 
		Notification of this event is not issued for type 1 protocol standard cameras. */
		public static const kEdsObjectEvent_DirItemRequestTransferDT    : uint = 0x00000209;
		
		/* Notifies of requests from a camera to cancel object transfer 
		if the button to cancel direct transfer is pressed on the camera. 
		If the parameter is 0, it means that cancellation of transfer is requested for
		objects still not downloaded,
		with these objects indicated by kEdsObjectEvent_DirItemRequestTransferDT. 
		Notification of this event is not issued for type 1 protocol standard cameras. */
		public static const kEdsObjectEvent_DirItemCancelTransferDT     : uint = 0x0000020a;
		
		public static const kEdsObjectEvent_VolumeAdded                 : uint = 0x0000020c;
		public static const kEdsObjectEvent_VolumeRemoved               : uint = 0x0000020d;
		
		/*----------------------------------
		State Event
		----------------------------------*/
		
		/* Notifies all state events. */
		public static const kEdsStateEvent_All                          : uint = 0x00000300;
		
		/* Indicates that a camera is no longer connected to a computer, 
		whether it was disconnected by unplugging a cord, opening
		the compact flash compartment, 
		turning the camera off, auto shut-off, or by other means. */
		public static const kEdsStateEvent_Shutdown                     : uint = 0x00000301;
		
		/* Notifies of whether or not there are objects waiting to
		be transferred to a host computer. 
		This is useful when ensuring all shot images have been transferred 
		when the application is closed. 
		Notification of this event is not issued for type 1 protocol 
		standard cameras. */
		public static const kEdsStateEvent_JobStatusChanged             : uint = 0x00000302;
		
		/* Notifies that the camera will shut down after a specific period. 
		Generated only if auto shut-off is set. 
		Exactly when notification is issued (that is, the number of
		seconds until shutdown) varies depending on the camera model. 
		To continue operation without having the camera shut down,
		use EdsSendCommand to extend the auto shut-off timer.
		The time in seconds until the camera shuts down is returned
		as the initial value. */
		public static const kEdsStateEvent_WillSoonShutDown             : uint = 0x00000303;
		
		/* As the counterpart event to kEdsStateEvent_WillSoonShutDown,
		this event notifies of updates to the number of seconds until
		a camera shuts down. 
		After the update, the period until shutdown is model-dependent. */
		public static const kEdsStateEvent_ShutDownTimerUpdate          : uint = 0x00000304;
		
		/* Notifies that a requested release has failed, due to focus
		failure or similar factors. */
		public static const kEdsStateEvent_CaptureError                 : uint = 0x00000305;
		
		/* Notifies of internal SDK errors. 
		If this error event is received, the issuing device will probably
		not be able to continue working properly,
		so cancel the remote connection. */
		public static const kEdsStateEvent_InternalError                : uint = 0x00000306;
		
		
		public static const kEdsStateEvent_AfResult                     : uint = 0x00000309;
		
		
		public static const kEdsStateEvent_BulbExposureTime             : uint = 0x00000310;	
		
		
		
		/*-----------------------------------------------------------------------------
		Image Quality
		-----------------------------------------------------------------------------*/
		
		/* Jpeg Only */
		public static const EdsImageQuality_LJ		: uint = 	0x0010ff0f;	/* Jpeg Large */
		public static const EdsImageQuality_M1J		: uint = 	0x0510ff0f;	/* Jpeg Middle1 */
		public static const EdsImageQuality_M2J		: uint = 	0x0610ff0f;	/* Jpeg Middle2 */
		public static const EdsImageQuality_SJ		: uint = 	0x0210ff0f;	/* Jpeg Small */
		public static const EdsImageQuality_LJF		: uint = 	0x0013ff0f;	/* Jpeg Large Fine */
		public static const EdsImageQuality_LJN		: uint = 	0x0012ff0f;	/* Jpeg Large Normal */
		public static const EdsImageQuality_MJF		: uint = 	0x0113ff0f;	/* Jpeg Middle Fine */
		public static const EdsImageQuality_MJN		: uint = 	0x0112ff0f;	/* Jpeg Middle Normal */
		public static const EdsImageQuality_SJF		: uint = 	0x0213ff0f;	/* Jpeg Small Fine */
		public static const EdsImageQuality_SJN		: uint = 	0x0212ff0f;	/* Jpeg Small Normal */
		public static const EdsImageQuality_S1JF	: uint = 	0x0E13ff0f;	/* Jpeg Small1 Fine */
		public static const EdsImageQuality_S1JN	: uint = 	0x0E12ff0f;	/* Jpeg Small1 Normal */
		public static const EdsImageQuality_S2JF	: uint = 	0x0F13ff0f;	/* Jpeg Small2 */
		public static const EdsImageQuality_S3JF	: uint = 	0x1013ff0f;	/* Jpeg Small3 */
		
		/* RAW + Jpeg */
		public static const EdsImageQuality_LR		: uint = 	0x0064ff0f;	/* RAW */
		public static const EdsImageQuality_LRLJF	: uint = 	0x00640013;	/* RAW + Jpeg Large Fine */
		public static const EdsImageQuality_LRLJN	: uint = 	0x00640012;	/* RAW + Jpeg Large Normal */
		public static const EdsImageQuality_LRMJF	: uint = 	0x00640113;	/* RAW + Jpeg Middle Fine */
		public static const EdsImageQuality_LRMJN	: uint = 	0x00640112;	/* RAW + Jpeg Middle Normal */
		public static const EdsImageQuality_LRSJF	: uint = 	0x00640213;	/* RAW + Jpeg Small Fine */
		public static const EdsImageQuality_LRSJN	: uint = 	0x00640212;	/* RAW + Jpeg Small Normal */
		public static const EdsImageQuality_LRS1JF	: uint = 	0x00640E13;	/* RAW + Jpeg Small1 Fine */
		public static const EdsImageQuality_LRS1JN	: uint = 	0x00640E12;	/* RAW + Jpeg Small1 Normal */
		public static const EdsImageQuality_LRS2JF	: uint = 	0x00640F13;	/* RAW + Jpeg Small2 */
		public static const EdsImageQuality_LRS3JF	: uint = 	0x00641013;	/* RAW + Jpeg Small3 */
		
		public static const EdsImageQuality_LRLJ	: uint = 	0x00640010;	/* RAW + Jpeg Large */
		public static const EdsImageQuality_LRM1J	: uint = 	0x00640510;	/* RAW + Jpeg Middle1 */
		public static const EdsImageQuality_LRM2J	: uint = 	0x00640610;	/* RAW + Jpeg Middle2 */
		public static const EdsImageQuality_LRSJ	: uint = 	0x00640210;	/* RAW + Jpeg Small */
		
		/* MRAW(SRAW1) + Jpeg */
		public static const EdsImageQuality_MR		: uint = 	0x0164ff0f;	/* MRAW(SRAW1) */
		public static const EdsImageQuality_MRLJF	: uint = 	0x01640013;	/* MRAW(SRAW1) + Jpeg Large Fine */
		public static const EdsImageQuality_MRLJN	: uint = 	0x01640012;	/* MRAW(SRAW1) + Jpeg Large Normal */
		public static const EdsImageQuality_MRMJF	: uint = 	0x01640113;	/* MRAW(SRAW1) + Jpeg Middle Fine */
		public static const EdsImageQuality_MRMJN	: uint = 	0x01640112;	/* MRAW(SRAW1) + Jpeg Middle Normal */
		public static const EdsImageQuality_MRSJF	: uint = 	0x01640213;	/* MRAW(SRAW1) + Jpeg Small Fine */
		public static const EdsImageQuality_MRSJN	: uint = 	0x01640212;	/* MRAW(SRAW1) + Jpeg Small Normal */
		public static const EdsImageQuality_MRS1JF	: uint = 	0x01640E13;	/* MRAW(SRAW1) + Jpeg Small1 Fine */
		public static const EdsImageQuality_MRS1JN	: uint = 	0x01640E12;	/* MRAW(SRAW1) + Jpeg Small1 Normal */
		public static const EdsImageQuality_MRS2JF	: uint = 	0x01640F13;	/* MRAW(SRAW1) + Jpeg Small2 */
		public static const EdsImageQuality_MRS3JF	: uint = 	0x01641013;	/* MRAW(SRAW1) + Jpeg Small3 */
		
		public static const EdsImageQuality_MRLJ	: uint = 	0x01640010;	/* MRAW(SRAW1) + Jpeg Large */
		public static const EdsImageQuality_MRM1J	: uint = 	0x01640510;	/* MRAW(SRAW1) + Jpeg Middle1 */
		public static const EdsImageQuality_MRM2J	: uint = 	0x01640610;	/* MRAW(SRAW1) + Jpeg Middle2 */
		public static const EdsImageQuality_MRSJ	: uint = 	0x01640210;	/* MRAW(SRAW1) + Jpeg Small */
		
		/* SRAW(SRAW2) + Jpeg */
		public static const EdsImageQuality_SR		: uint = 	0x0264ff0f;	/* SRAW(SRAW2) */
		public static const EdsImageQuality_SRLJF	: uint = 	0x02640013;	/* SRAW(SRAW2) + Jpeg Large Fine */
		public static const EdsImageQuality_SRLJN	: uint = 	0x02640012;	/* SRAW(SRAW2) + Jpeg Large Normal */
		public static const EdsImageQuality_SRMJF	: uint = 	0x02640113;	/* SRAW(SRAW2) + Jpeg Middle Fine */
		public static const EdsImageQuality_SRMJN	: uint = 	0x02640112;	/* SRAW(SRAW2) + Jpeg Middle Normal */
		public static const EdsImageQuality_SRSJF	: uint = 	0x02640213;	/* SRAW(SRAW2) + Jpeg Small Fine */
		public static const EdsImageQuality_SRSJN	: uint = 	0x02640212;	/* SRAW(SRAW2) + Jpeg Small Normal */
		public static const EdsImageQuality_SRS1JF	: uint = 	0x02640E13;	/* SRAW(SRAW2) + Jpeg Small1 Fine */
		public static const EdsImageQuality_SRS1JN	: uint = 	0x02640E12;	/* SRAW(SRAW2) + Jpeg Small1 Normal */
		public static const EdsImageQuality_SRS2JF	: uint = 	0x02640F13;	/* SRAW(SRAW2) + Jpeg Small2 */
		public static const EdsImageQuality_SRS3JF	: uint = 	0x02641013;	/* SRAW(SRAW2) + Jpeg Small3 */
		
		public static const EdsImageQuality_SRLJ	: uint = 	0x02640010;	/* SRAW(SRAW2) + Jpeg Large */
		public static const EdsImageQuality_SRM1J	: uint = 	0x02640510;	/* SRAW(SRAW2) + Jpeg Middle1 */
		public static const EdsImageQuality_SRM2J	: uint = 	0x02640610;	/* SRAW(SRAW2) + Jpeg Middle2 */
		public static const EdsImageQuality_SRSJ	: uint = 	0x02640210;	/* SRAW(SRAW2) + Jpeg Small */
		
		public static const EdsImageQuality_Unknown : uint =  0xffffffff;
		
		public static const kEdsImageQualityForLegacy_LJ		: uint = 	0x001f000f;	/* Jpeg Large */
		public static const kEdsImageQualityForLegacy_M1J		: uint = 	0x051f000f;	/* Jpeg Middle1 */
		public static const kEdsImageQualityForLegacy_M2J		: uint = 	0x061f000f;	/* Jpeg Middle2 */
		public static const kEdsImageQualityForLegacy_SJ		: uint = 	0x021f000f;	/* Jpeg Small */
		public static const kEdsImageQualityForLegacy_LJF		: uint = 	0x00130000;	/* Jpeg Large Fine */
		public static const kEdsImageQualityForLegacy_LJN		: uint = 	0x00120000;	/* Jpeg Large Normal */
		public static const kEdsImageQualityForLegacy_MJF		: uint = 	0x01130000;	/* Jpeg Middle Fine */
		public static const kEdsImageQualityForLegacy_MJN		: uint = 	0x01120000;	/* Jpeg Middle Normal */
		public static const kEdsImageQualityForLegacy_SJF		: uint = 	0x02130000;	/* Jpeg Small Fine */
		public static const kEdsImageQualityForLegacy_SJN		: uint = 	0x02120000;	/* Jpeg Small Normal */
		
		public static const kEdsImageQualityForLegacy_LR		: uint = 	0x00240000;	/* RAW */
		public static const kEdsImageQualityForLegacy_LRLJF		: uint = 	0x00240013;	/* RAW + Jpeg Large Fine */
		public static const kEdsImageQualityForLegacy_LRLJN		: uint = 	0x00240012;	/* RAW + Jpeg Large Normal */
		public static const kEdsImageQualityForLegacy_LRMJF		: uint = 	0x00240113;	/* RAW + Jpeg Middle Fine */
		public static const kEdsImageQualityForLegacy_LRMJN		: uint = 	0x00240112;	/* RAW + Jpeg Middle Normal */
		public static const kEdsImageQualityForLegacy_LRSJF		: uint = 	0x00240213;	/* RAW + Jpeg Small Fine */
		public static const kEdsImageQualityForLegacy_LRSJN		: uint = 	0x00240212;	/* RAW + Jpeg Small Normal */
		
		public static const kEdsImageQualityForLegacy_LR2		: uint = 	0x002f000f;	/* RAW */
		public static const kEdsImageQualityForLegacy_LR2LJ		: uint = 	0x002f001f;	/* RAW + Jpeg Large */
		public static const kEdsImageQualityForLegacy_LR2M1J	: uint = 	0x002f051f;	/* RAW + Jpeg Middle1 */
		public static const kEdsImageQualityForLegacy_LR2M2J	: uint = 	0x002f061f;	/* RAW + Jpeg Middle2 */
		public static const kEdsImageQualityForLegacy_LR2SJ		: uint = 	0x002f021f;	/* RAW + Jpeg Small */
		
		public static const kEdsImageQualityForLegacy_Unknown : uint =  0xffffffff;		
		
	}
	
}