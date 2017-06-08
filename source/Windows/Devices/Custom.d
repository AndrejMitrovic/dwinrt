module Windows.Devices.Custom;

import dwinrt;

@uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e")
@WinrtFactory("Windows.Devices.Custom.CustomDevice")
interface ICustomDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_SendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_TrySendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("c8220312-ef4c-46b1-a58e-eeb308dc8917")
@WinrtFactory("Windows.Devices.Custom.CustomDevice")
interface ICustomDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(GUID classGuid, HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.Custom.DeviceAccessMode desiredAccess, Windows.Devices.Custom.DeviceSharingMode sharingMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Custom.CustomDevice)* return_operation);
}

@uuid("0e9559e7-60c8-4375-a761-7f8808066c60")
interface IIOControlCode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccessMode(Windows.Devices.Custom.IOControlAccessMode* return_value);
	HRESULT get_BufferingMethod(Windows.Devices.Custom.IOControlBufferingMethod* return_value);
	HRESULT get_Function(UINT16* return_value);
	HRESULT get_DeviceType(UINT16* return_value);
	HRESULT get_ControlCode(UINT32* return_value);
}

@uuid("856a7cf0-4c11-44ae-afc6-b8d4a212788f")
@WinrtFactory("Windows.Devices.Custom.IOControlCode")
interface IIOControlCodeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateIOControlCode(UINT16 deviceType, UINT16 function_, Windows.Devices.Custom.IOControlAccessMode accessMode, Windows.Devices.Custom.IOControlBufferingMethod bufferingMethod, Windows.Devices.Custom.IOControlCode* return_instance);
}

@uuid("ee5479c2-5448-45da-ad1b-24948c239094")
@WinrtFactory("Windows.Devices.Custom.KnownDeviceTypes")
interface IKnownDeviceTypesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Unknown(UINT16* return_value);
}

interface CustomDevice
{
}

interface IOControlCode
{
}

enum DeviceAccessMode
{
	Read = 0,
	Write = 1,
	ReadWrite = 2
}

enum DeviceSharingMode
{
	Shared = 0,
	Exclusive = 1
}

enum IOControlAccessMode
{
	Any = 0,
	Read = 1,
	Write = 2,
	ReadWrite = 3
}

enum IOControlBufferingMethod
{
	Buffered = 0,
	DirectInput = 1,
	DirectOutput = 2,
	Neither = 3
}