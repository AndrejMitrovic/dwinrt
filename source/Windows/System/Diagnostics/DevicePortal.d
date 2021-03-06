module Windows.System.Diagnostics.DevicePortal;

import dwinrt;

@uuid("0f447f51-1198-4da1-8d54-bdef393e09b6")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnection")
interface IDevicePortalConnection : IInspectable
{
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
extern(Windows):
	HRESULT get_Reason(Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason* return_value);
}

@uuid("64dae045-6fda-4459-9ebd-ecce22e38559")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs")
interface IDevicePortalConnectionRequestReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestMessage(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT get_ResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("4bbe31e7-e9b9-4645-8fed-a53eea0edbd6")
@WinrtFactory("Windows.System.Diagnostics.DevicePortal.DevicePortalConnection")
interface IDevicePortalConnectionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForAppServiceConnection(Windows.ApplicationModel.AppService.AppServiceConnection appServiceConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnection* return_value);
}

interface DevicePortalConnection : Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection
{
extern(Windows):
	final EventRegistrationToken OnClosed(void delegate(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection)this.asInterface(uuid("0f447f51-1198-4da1-8d54-bdef393e09b6"))).add_Closed(event!(Windows.Foundation.TypedEventHandler!(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs), Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection)this.asInterface(uuid("0f447f51-1198-4da1-8d54-bdef393e09b6"))).remove_Closed(token));
	}
	final EventRegistrationToken OnRequestReceived(void delegate(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection)this.asInterface(uuid("0f447f51-1198-4da1-8d54-bdef393e09b6"))).add_RequestReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs), Windows.System.Diagnostics.DevicePortal.DevicePortalConnection, Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRequestReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection)this.asInterface(uuid("0f447f51-1198-4da1-8d54-bdef393e09b6"))).remove_RequestReceived(token));
	}

	private static Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionStatics _staticInstance;
	public static Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionStatics);
		return _staticInstance;
	}
	static Windows.System.Diagnostics.DevicePortal.DevicePortalConnection GetForAppServiceConnection(Windows.ApplicationModel.AppService.AppServiceConnection appServiceConnection)
	{
		Windows.System.Diagnostics.DevicePortal.DevicePortalConnection _ret;
		Debug.OK(staticInstance.abi_GetForAppServiceConnection(appServiceConnection, &_ret));
		return _ret;
	}
}

interface DevicePortalConnectionClosedEventArgs : Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionClosedEventArgs
{
extern(Windows):
	final Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason Reason()
	{
		Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason _ret;
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionClosedEventArgs)this.asInterface(uuid("fcf70e38-7032-428c-9f50-945c15a9f0cb"))).get_Reason(&_ret));
		return _ret;
	}
}

interface DevicePortalConnectionRequestReceivedEventArgs : Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionRequestReceivedEventArgs
{
extern(Windows):
	final Windows.Web.Http.HttpRequestMessage RequestMessage()
	{
		Windows.Web.Http.HttpRequestMessage _ret;
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionRequestReceivedEventArgs)this.asInterface(uuid("64dae045-6fda-4459-9ebd-ecce22e38559"))).get_RequestMessage(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpResponseMessage ResponseMessage()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK((cast(Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionRequestReceivedEventArgs)this.asInterface(uuid("64dae045-6fda-4459-9ebd-ecce22e38559"))).get_ResponseMessage(&_ret));
		return _ret;
	}
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