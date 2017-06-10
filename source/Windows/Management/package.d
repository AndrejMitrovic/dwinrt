module Windows.Management;

import dwinrt;

@uuid("b0fbc327-28c1-4b52-a548-c5807caf70b6")
@WinrtFactory("Windows.Management.MdmAlert")
interface IMdmAlert : IInspectable
{
extern(Windows):
	HRESULT get_Data(HSTRING* return_value);
	HRESULT set_Data(HSTRING value);
	HRESULT get_Format(Windows.Management.MdmAlertDataType* return_value);
	HRESULT set_Format(Windows.Management.MdmAlertDataType value);
	HRESULT get_Mark(Windows.Management.MdmAlertMark* return_value);
	HRESULT set_Mark(Windows.Management.MdmAlertMark value);
	HRESULT get_Source(HSTRING* return_value);
	HRESULT set_Source(HSTRING value);
	HRESULT get_Status(UINT32* return_value);
	HRESULT get_Target(HSTRING* return_value);
	HRESULT set_Target(HSTRING value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Type(HSTRING value);
}

@uuid("fe89314c-8f64-4797-a9d7-9d88f86ae166")
@WinrtFactory("Windows.Management.MdmSession")
interface IMdmSession : IInspectable
{
extern(Windows):
	HRESULT get_Alerts(Windows.Foundation.Collections.IVectorView!(Windows.Management.MdmAlert)* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_State(Windows.Management.MdmSessionState* return_value);
	HRESULT abi_AttachAsync(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_Delete();
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_StartWithAlertsAsync(Windows.Foundation.Collections.IIterable!(Windows.Management.MdmAlert) alerts, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("cf4ad959-f745-4b79-9b5c-de0bf8efe44b")
@WinrtFactory("Windows.Management.MdmSessionManager")
interface IMdmSessionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_SessionIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT abi_TryCreateSession(Windows.Management.MdmSession* return_result);
	HRESULT abi_DeleteSessionById(HSTRING sessionId);
	HRESULT abi_GetSessionById(HSTRING sessionId, Windows.Management.MdmSession* return_result);
}

interface MdmAlert : Windows.Management.IMdmAlert
{
extern(Windows):
	final HSTRING Data()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Data(&_ret));
		return _ret;
	}
	final void Data(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Data(value));
	}
	final Windows.Management.MdmAlertDataType Format()
	{
		Windows.Management.MdmAlertDataType _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Management.MdmAlertDataType value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Format(value));
	}
	final Windows.Management.MdmAlertMark Mark()
	{
		Windows.Management.MdmAlertMark _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Mark(&_ret));
		return _ret;
	}
	final void Mark(Windows.Management.MdmAlertMark value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Mark(value));
	}
	final HSTRING Source()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Source(&_ret));
		return _ret;
	}
	final void Source(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Source(value));
	}
	final UINT32 Status()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Status(&_ret));
		return _ret;
	}
	final HSTRING Target()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Target(&_ret));
		return _ret;
	}
	final void Target(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Target(value));
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Management.IMdmAlert).get_Type(&_ret));
		return _ret;
	}
	final void Type(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Management.IMdmAlert).set_Type(value));
	}
}

interface MdmSession : Windows.Management.IMdmSession
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Management.MdmAlert) Alerts()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Management.MdmAlert) _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).get_Alerts(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).get_ExtendedError(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).get_Id(&_ret));
		return _ret;
	}
	final Windows.Management.MdmSessionState State()
	{
		Windows.Management.MdmSessionState _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).get_State(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AttachAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).abi_AttachAsync(&_ret));
		return _ret;
	}
	final void Delete()
	{
		Debug.OK(this.as!(Windows.Management.IMdmSession).abi_Delete());
	}
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartWithAlertsAsync(Windows.Foundation.Collections.IIterable!(Windows.Management.MdmAlert) alerts)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Management.IMdmSession).abi_StartWithAlertsAsync(alerts, &_ret));
		return _ret;
	}
}

interface MdmSessionManager
{
}

enum MdmAlertDataType
{
	String = 0,
	Base64 = 1,
	Boolean = 2,
	Integer = 3
}

enum MdmAlertMark
{
	None = 0,
	Fatal = 1,
	Critical = 2,
	Warning = 3,
	Informational = 4
}

enum MdmSessionState
{
	NotStarted = 0,
	Starting = 1,
	Connecting = 2,
	Communicating = 3,
	AlertStatusAvailable = 4,
	Retrying = 5,
	Completed = 6
}