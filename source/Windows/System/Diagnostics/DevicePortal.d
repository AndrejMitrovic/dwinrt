module Windows.System.Diagnostics.DevicePortal;

import dwinrt;

@uuid("0f447f51-1198-4da1-8d54-bdef393e09b6")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnection")
interface IDevicePortalConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_RequestReceived(Windows.Foundation.TypedEventHandler!(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RequestReceived(EventRegistrationToken token);
}

@uuid("fcf70e38-7032-428c-9f50-945c15a9f0cb")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs")
interface IDevicePortalConnectionClosedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason* return_value);
}

@uuid("64dae045-6fda-4459-9ebd-ecce22e38559")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs")
interface IDevicePortalConnectionRequestReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestMessage(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT get_ResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("4bbe31e7-e9b9-4645-8fed-a53eea0edbd6")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnection")
interface IDevicePortalConnectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForAppServiceConnection(Windows.ApplicationModel.AppService.AppServiceConnection appServiceConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnection* return_value);
}

interface DevicePortalConnection
{
}

interface DevicePortalConnectionClosedEventArgs
{
}

interface DevicePortalConnectionRequestReceivedEventArgs
{
}

enum DevicePortalConnectionClosedReason
{
	Unknown = 0,
	ResourceLimitsExceeded = 1,
	ProtocolError = 2,
	NotAuthorized = 3,
	UserNotPresent = 4,
	ServiceTerminated = 5
}