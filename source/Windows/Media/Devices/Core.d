module Windows.Media.Devices.Core;

import dwinrt;

@uuid("0aa6ed32-6589-49da-afde-594270ca0aac")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsics : IInspectable
{
extern(Windows):
	HRESULT get_FocalLength(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_PrincipalPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_RadialDistortion(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_TangentialDistortion(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_ImageWidth(UINT32* return_value);
	HRESULT get_ImageHeight(UINT32* return_value);
	HRESULT abi_ProjectOntoFrame(Windows.Foundation.Numerics.Vector3 coordinate, Windows.Foundation.Point* return_result);
	HRESULT abi_UnprojectAtUnitDepth(Windows.Foundation.Point pixelCoordinate, Windows.Foundation.Numerics.Vector2* return_result);
	HRESULT abi_ProjectManyOntoFrame(UINT32 __coordinatesSize, Windows.Foundation.Numerics.Vector3* coordinates, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
	HRESULT abi_UnprojectPixelsAtUnitDepth(UINT32 __pixelCoordinatesSize, Windows.Foundation.Point* pixelCoordinates, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector2* out_results);
}

@uuid("0cdaa447-0798-4b4d-839f-c5ec414db27a")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsics2 : IInspectable
{
extern(Windows):
	HRESULT get_UndistortedProjectionTransform(Windows.Foundation.Numerics.Matrix4x4* return_value);
	HRESULT abi_DistortPoint(Windows.Foundation.Point input, Windows.Foundation.Point* return_result);
	HRESULT abi_DistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
	HRESULT abi_UndistortPoint(Windows.Foundation.Point input, Windows.Foundation.Point* return_result);
	HRESULT abi_UndistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
}

@uuid("c0ddc486-2132-4a34-a659-9bfe2a055712")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsicsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Numerics.Vector2 focalLength, Windows.Foundation.Numerics.Vector2 principalPoint, Windows.Foundation.Numerics.Vector3 radialDistortion, Windows.Foundation.Numerics.Vector2 tangentialDistortion, UINT32 imageWidth, UINT32 imageHeight, Windows.Media.Devices.Core.CameraIntrinsics* return_result);
}

@uuid("f95d89fb-8af0-4cb0-926d-696866e5046a")
@WinrtFactory("Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper")
interface IDepthCorrelatedCoordinateMapper : IInspectable
{
extern(Windows):
	HRESULT abi_UnprojectPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Foundation.Numerics.Vector3* return_result);
	HRESULT abi_UnprojectPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results);
	HRESULT abi_MapPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics, Windows.Foundation.Point* return_result);
	HRESULT abi_MapPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
}

@uuid("a8ffae60-4e9e-4377-a789-e24c4ae7e544")
@WinrtFactory("Windows.Media.Devices.Core.FrameControlCapabilities")
interface IFrameControlCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Exposure(Windows.Media.Devices.Core.FrameExposureCapabilities* return_value);
	HRESULT get_ExposureCompensation(Windows.Media.Devices.Core.FrameExposureCompensationCapabilities* return_value);
	HRESULT get_IsoSpeed(Windows.Media.Devices.Core.FrameIsoSpeedCapabilities* return_value);
	HRESULT get_Focus(Windows.Media.Devices.Core.FrameFocusCapabilities* return_value);
	HRESULT get_PhotoConfirmationSupported(bool* return_value);
}

@uuid("ce9b0464-4730-440f-bd3e-efe8a8f230a8")
@WinrtFactory("Windows.Media.Devices.Core.FrameControlCapabilities")
interface IFrameControlCapabilities2 : IInspectable
{
extern(Windows):
	HRESULT get_Flash(Windows.Media.Devices.Core.FrameFlashCapabilities* return_value);
}

@uuid("c16459d9-baef-4052-9177-48aff2af7522")
@WinrtFactory("Windows.Media.Devices.Core.FrameController")
interface IFrameController : IInspectable
{
extern(Windows):
	HRESULT get_ExposureControl(Windows.Media.Devices.Core.FrameExposureControl* return_value);
	HRESULT get_ExposureCompensationControl(Windows.Media.Devices.Core.FrameExposureCompensationControl* return_value);
	HRESULT get_IsoSpeedControl(Windows.Media.Devices.Core.FrameIsoSpeedControl* return_value);
	HRESULT get_FocusControl(Windows.Media.Devices.Core.FrameFocusControl* return_value);
	HRESULT get_PhotoConfirmationEnabled(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_PhotoConfirmationEnabled(Windows.Foundation.IReference!(bool) value);
}

@uuid("00d3bc75-d87c-485b-8a09-5c358568b427")
@WinrtFactory("Windows.Media.Devices.Core.FrameController")
interface IFrameController2 : IInspectable
{
extern(Windows):
	HRESULT get_FlashControl(Windows.Media.Devices.Core.FrameFlashControl* return_value);
}

@uuid("bdbe9ce3-3985-4e72-97c2-0590d61307a1")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCapabilities")
interface IFrameExposureCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Max(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Step(Windows.Foundation.TimeSpan* return_value);
}

@uuid("b988a823-8065-41ee-b04f-722265954500")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCompensationCapabilities")
interface IFrameExposureCompensationCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(FLOAT* return_value);
	HRESULT get_Max(FLOAT* return_value);
	HRESULT get_Step(FLOAT* return_value);
}

@uuid("e95896c9-f7f9-48ca-8591-a26531cb1578")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCompensationControl")
interface IFrameExposureCompensationControl : IInspectable
{
extern(Windows):
	HRESULT get_Value(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(FLOAT) value);
}

@uuid("b1605a61-ffaf-4752-b621-f5b6f117f432")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureControl")
interface IFrameExposureControl : IInspectable
{
extern(Windows):
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_Value(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
}

@uuid("bb9341a2-5ebe-4f62-8223-0e2b05bfbbd0")
@WinrtFactory("Windows.Media.Devices.Core.FrameFlashCapabilities")
interface IFrameFlashCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_RedEyeReductionSupported(bool* return_value);
	HRESULT get_PowerSupported(bool* return_value);
}

@uuid("75d5f6c7-bd45-4fab-9375-45ac04b332c2")
@WinrtFactory("Windows.Media.Devices.Core.FrameFlashControl")
interface IFrameFlashControl : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.Core.FrameFlashMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.Core.FrameFlashMode value);
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_RedEyeReduction(bool* return_value);
	HRESULT set_RedEyeReduction(bool value);
	HRESULT get_PowerPercent(FLOAT* return_value);
	HRESULT set_PowerPercent(FLOAT value);
}

@uuid("7b25cd58-01c0-4065-9c40-c1a721425c1a")
@WinrtFactory("Windows.Media.Devices.Core.FrameFocusCapabilities")
interface IFrameFocusCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
}

@uuid("272df1d0-d912-4214-a67b-e38a8d48d8c6")
@WinrtFactory("Windows.Media.Devices.Core.FrameFocusControl")
interface IFrameFocusControl : IInspectable
{
extern(Windows):
	HRESULT get_Value(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("16bdff61-6df6-4ac9-b92a-9f6ecd1ad2fa")
@WinrtFactory("Windows.Media.Devices.Core.FrameIsoSpeedCapabilities")
interface IFrameIsoSpeedCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
}

@uuid("1a03efed-786a-4c75-a557-7ab9a85f588c")
@WinrtFactory("Windows.Media.Devices.Core.FrameIsoSpeedControl")
interface IFrameIsoSpeedControl : IInspectable
{
extern(Windows):
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_Value(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("7fbff880-ed8c-43fd-a7c3-b35809e4229a")
@WinrtFactory("Windows.Media.Devices.Core.VariablePhotoSequenceController")
interface IVariablePhotoSequenceController : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_MaxPhotosPerSecond(FLOAT* return_value);
	HRESULT get_PhotosPerSecondLimit(FLOAT* return_value);
	HRESULT set_PhotosPerSecondLimit(FLOAT value);
	HRESULT abi_GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties, Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT abi_GetCurrentFrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_FrameCapabilities(Windows.Media.Devices.Core.FrameControlCapabilities* return_value);
	HRESULT get_DesiredFrameControllers(Windows.Foundation.Collections.IVector!(Windows.Media.Devices.Core.FrameController)* return_items);
}

interface CameraIntrinsics : Windows.Media.Devices.Core.ICameraIntrinsics, Windows.Media.Devices.Core.ICameraIntrinsics2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 FocalLength()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_FocalLength(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector2 PrincipalPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_PrincipalPoint(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 RadialDistortion()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_RadialDistortion(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector2 TangentialDistortion()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_TangentialDistortion(&_ret));
		return _ret;
	}
	final UINT32 ImageWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_ImageWidth(&_ret));
		return _ret;
	}
	final UINT32 ImageHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).get_ImageHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point ProjectOntoFrame(Windows.Foundation.Numerics.Vector3 coordinate)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).abi_ProjectOntoFrame(coordinate, &_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector2 UnprojectAtUnitDepth(Windows.Foundation.Point pixelCoordinate)
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).abi_UnprojectAtUnitDepth(pixelCoordinate, &_ret));
		return _ret;
	}
	final void ProjectManyOntoFrame(UINT32 __coordinatesSize, Windows.Foundation.Numerics.Vector3* coordinates, UINT32 __resultsSize, Windows.Foundation.Point* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).abi_ProjectManyOntoFrame(__coordinatesSize, coordinates, __resultsSize, out_results));
	}
	final void UnprojectPixelsAtUnitDepth(UINT32 __pixelCoordinatesSize, Windows.Foundation.Point* pixelCoordinates, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector2* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics).abi_UnprojectPixelsAtUnitDepth(__pixelCoordinatesSize, pixelCoordinates, __resultsSize, out_results));
	}
	final Windows.Foundation.Numerics.Matrix4x4 UndistortedProjectionTransform()
	{
		Windows.Foundation.Numerics.Matrix4x4 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics2).get_UndistortedProjectionTransform(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point DistortPoint(Windows.Foundation.Point input)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics2).abi_DistortPoint(input, &_ret));
		return _ret;
	}
	final void DistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics2).abi_DistortPoints(__inputsSize, inputs, __resultsSize, out_results));
	}
	final Windows.Foundation.Point UndistortPoint(Windows.Foundation.Point input)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics2).abi_UndistortPoint(input, &_ret));
		return _ret;
	}
	final void UndistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.ICameraIntrinsics2).abi_UndistortPoints(__inputsSize, inputs, __resultsSize, out_results));
	}
}

interface DepthCorrelatedCoordinateMapper : Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 UnprojectPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem)
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper).abi_UnprojectPoint(sourcePoint, targetCoordinateSystem, &_ret));
		return _ret;
	}
	final void UnprojectPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper).abi_UnprojectPoints(__sourcePointsSize, sourcePoints, targetCoordinateSystem, __resultsSize, out_results));
	}
	final Windows.Foundation.Point MapPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper).abi_MapPoint(sourcePoint, targetCoordinateSystem, targetCameraIntrinsics, &_ret));
		return _ret;
	}
	final void MapPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics, UINT32 __resultsSize, Windows.Foundation.Point* out_results)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper).abi_MapPoints(__sourcePointsSize, sourcePoints, targetCoordinateSystem, targetCameraIntrinsics, __resultsSize, out_results));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface FrameControlCapabilities : Windows.Media.Devices.Core.IFrameControlCapabilities, Windows.Media.Devices.Core.IFrameControlCapabilities2
{
extern(Windows):
	final Windows.Media.Devices.Core.FrameExposureCapabilities Exposure()
	{
		Windows.Media.Devices.Core.FrameExposureCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities).get_Exposure(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameExposureCompensationCapabilities ExposureCompensation()
	{
		Windows.Media.Devices.Core.FrameExposureCompensationCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities).get_ExposureCompensation(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameIsoSpeedCapabilities IsoSpeed()
	{
		Windows.Media.Devices.Core.FrameIsoSpeedCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities).get_IsoSpeed(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameFocusCapabilities Focus()
	{
		Windows.Media.Devices.Core.FrameFocusCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities).get_Focus(&_ret));
		return _ret;
	}
	final bool PhotoConfirmationSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities).get_PhotoConfirmationSupported(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameFlashCapabilities Flash()
	{
		Windows.Media.Devices.Core.FrameFlashCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameControlCapabilities2).get_Flash(&_ret));
		return _ret;
	}
}

interface FrameController : Windows.Media.Devices.Core.IFrameController, Windows.Media.Devices.Core.IFrameController2
{
extern(Windows):
	final Windows.Media.Devices.Core.FrameExposureControl ExposureControl()
	{
		Windows.Media.Devices.Core.FrameExposureControl _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).get_ExposureControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameExposureCompensationControl ExposureCompensationControl()
	{
		Windows.Media.Devices.Core.FrameExposureCompensationControl _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).get_ExposureCompensationControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameIsoSpeedControl IsoSpeedControl()
	{
		Windows.Media.Devices.Core.FrameIsoSpeedControl _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).get_IsoSpeedControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameFocusControl FocusControl()
	{
		Windows.Media.Devices.Core.FrameFocusControl _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).get_FocusControl(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(bool) PhotoConfirmationEnabled()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).get_PhotoConfirmationEnabled(&_ret));
		return _ret;
	}
	final void PhotoConfirmationEnabled(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController).set_PhotoConfirmationEnabled(value));
	}
	final Windows.Media.Devices.Core.FrameFlashControl FlashControl()
	{
		Windows.Media.Devices.Core.FrameFlashControl _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameController2).get_FlashControl(&_ret));
		return _ret;
	}
}

interface FrameExposureCapabilities : Windows.Media.Devices.Core.IFrameExposureCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCapabilities).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Min()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCapabilities).get_Min(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Max()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCapabilities).get_Max(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Step()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCapabilities).get_Step(&_ret));
		return _ret;
	}
}

interface FrameExposureCompensationCapabilities : Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities).get_Supported(&_ret));
		return _ret;
	}
	final FLOAT Min()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities).get_Min(&_ret));
		return _ret;
	}
	final FLOAT Max()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities).get_Max(&_ret));
		return _ret;
	}
	final FLOAT Step()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities).get_Step(&_ret));
		return _ret;
	}
}

interface FrameExposureCompensationControl : Windows.Media.Devices.Core.IFrameExposureCompensationControl
{
extern(Windows):
	final Windows.Foundation.IReference!(FLOAT) Value()
	{
		Windows.Foundation.IReference!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationControl).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.IReference!(FLOAT) value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureCompensationControl).set_Value(value));
	}
}

interface FrameExposureControl : Windows.Media.Devices.Core.IFrameExposureControl
{
extern(Windows):
	final bool Auto()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureControl).get_Auto(&_ret));
		return _ret;
	}
	final void Auto(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureControl).set_Auto(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Value()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureControl).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameExposureControl).set_Value(value));
	}
}

interface FrameFlashCapabilities : Windows.Media.Devices.Core.IFrameFlashCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashCapabilities).get_Supported(&_ret));
		return _ret;
	}
	final bool RedEyeReductionSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashCapabilities).get_RedEyeReductionSupported(&_ret));
		return _ret;
	}
	final bool PowerSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashCapabilities).get_PowerSupported(&_ret));
		return _ret;
	}
}

interface FrameFlashControl : Windows.Media.Devices.Core.IFrameFlashControl
{
extern(Windows):
	final Windows.Media.Devices.Core.FrameFlashMode Mode()
	{
		Windows.Media.Devices.Core.FrameFlashMode _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.Core.FrameFlashMode value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).set_Mode(value));
	}
	final bool Auto()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).get_Auto(&_ret));
		return _ret;
	}
	final void Auto(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).set_Auto(value));
	}
	final bool RedEyeReduction()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).get_RedEyeReduction(&_ret));
		return _ret;
	}
	final void RedEyeReduction(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).set_RedEyeReduction(value));
	}
	final FLOAT PowerPercent()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).get_PowerPercent(&_ret));
		return _ret;
	}
	final void PowerPercent(FLOAT value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFlashControl).set_PowerPercent(value));
	}
}

interface FrameFocusCapabilities : Windows.Media.Devices.Core.IFrameFocusCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusCapabilities).get_Supported(&_ret));
		return _ret;
	}
	final UINT32 Min()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusCapabilities).get_Min(&_ret));
		return _ret;
	}
	final UINT32 Max()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusCapabilities).get_Max(&_ret));
		return _ret;
	}
	final UINT32 Step()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusCapabilities).get_Step(&_ret));
		return _ret;
	}
}

interface FrameFocusControl : Windows.Media.Devices.Core.IFrameFocusControl
{
extern(Windows):
	final Windows.Foundation.IReference!(UINT32) Value()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusControl).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameFocusControl).set_Value(value));
	}
}

interface FrameIsoSpeedCapabilities : Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities).get_Supported(&_ret));
		return _ret;
	}
	final UINT32 Min()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities).get_Min(&_ret));
		return _ret;
	}
	final UINT32 Max()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities).get_Max(&_ret));
		return _ret;
	}
	final UINT32 Step()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities).get_Step(&_ret));
		return _ret;
	}
}

interface FrameIsoSpeedControl : Windows.Media.Devices.Core.IFrameIsoSpeedControl
{
extern(Windows):
	final bool Auto()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedControl).get_Auto(&_ret));
		return _ret;
	}
	final void Auto(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedControl).set_Auto(value));
	}
	final Windows.Foundation.IReference!(UINT32) Value()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedControl).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IFrameIsoSpeedControl).set_Value(value));
	}
}

interface VariablePhotoSequenceController : Windows.Media.Devices.Core.IVariablePhotoSequenceController
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).get_Supported(&_ret));
		return _ret;
	}
	final FLOAT MaxPhotosPerSecond()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).get_MaxPhotosPerSecond(&_ret));
		return _ret;
	}
	final FLOAT PhotosPerSecondLimit()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).get_PhotosPerSecondLimit(&_ret));
		return _ret;
	}
	final void PhotosPerSecondLimit(FLOAT value)
	{
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).set_PhotosPerSecondLimit(value));
	}
	final Windows.Media.MediaProperties.MediaRatio GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties)
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).abi_GetHighestConcurrentFrameRate(captureProperties, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio GetCurrentFrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).abi_GetCurrentFrameRate(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.FrameControlCapabilities FrameCapabilities()
	{
		Windows.Media.Devices.Core.FrameControlCapabilities _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).get_FrameCapabilities(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Devices.Core.FrameController) DesiredFrameControllers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Devices.Core.FrameController) _ret;
		Debug.OK(this.as!(Windows.Media.Devices.Core.IVariablePhotoSequenceController).get_DesiredFrameControllers(&_ret));
		return _ret;
	}
}

enum FrameFlashMode
{
	Disable = 0,
	Enable = 1,
	Global = 2
}