module Windows.ApplicationModel.Store.LicenseManagement;

import dwinrt;

@uuid("b5ac3ae0-da47-4f20-9a23-09182c9476ff")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseManager")
interface ILicenseManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AddLicenseAsync(Windows.Storage.Streams.IBuffer license, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_GetSatisfactionInfosAsync(Windows.Foundation.Collections.IIterable!(HSTRING) contentIds, Windows.Foundation.Collections.IIterable!(HSTRING) keyIds, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult)* return_operation);
}

@uuid("ab2ec47b-1f79-4480-b87e-2c499e601ba3")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseManager")
interface ILicenseManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_RefreshLicensesAsync(Windows.ApplicationModel.Store.LicenseManagement.LicenseRefreshOption refreshOption, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo")
interface ILicenseSatisfactionInfo : IInspectable
{
extern(Windows):
	HRESULT get_SatisfiedByDevice(bool* return_value);
	HRESULT get_SatisfiedByOpenLicense(bool* return_value);
	HRESULT get_SatisfiedByTrial(bool* return_value);
	HRESULT get_SatisfiedByPass(bool* return_value);
	HRESULT get_SatisfiedByInstallMedia(bool* return_value);
	HRESULT get_SatisfiedBySignedInUser(bool* return_value);
	HRESULT get_IsSatisfied(bool* return_value);
}

@uuid("3c674f73-3c87-4ee1-8201-f428359bd3af")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult")
interface ILicenseSatisfactionResult : IInspectable
{
extern(Windows):
	HRESULT get_LicenseSatisfactionInfos(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo)* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

interface LicenseManager
{
	private static Windows.ApplicationModel.Store.LicenseManagement.ILicenseManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Store.LicenseManagement.ILicenseManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Store.LicenseManagement.ILicenseManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction AddLicenseAsync(Windows.Storage.Streams.IBuffer license)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AddLicenseAsync(license, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult) GetSatisfactionInfosAsync(Windows.Foundation.Collections.IIterable!(HSTRING) contentIds, Windows.Foundation.Collections.IIterable!(HSTRING) keyIds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult) _ret;
		Debug.OK(staticInstance.abi_GetSatisfactionInfosAsync(contentIds, keyIds, &_ret));
		return _ret;
	}
}

interface LicenseSatisfactionInfo : Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo
{
extern(Windows):
	final bool SatisfiedByDevice()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedByDevice(&_ret));
		return _ret;
	}
	final bool SatisfiedByOpenLicense()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedByOpenLicense(&_ret));
		return _ret;
	}
	final bool SatisfiedByTrial()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedByTrial(&_ret));
		return _ret;
	}
	final bool SatisfiedByPass()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedByPass(&_ret));
		return _ret;
	}
	final bool SatisfiedByInstallMedia()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedByInstallMedia(&_ret));
		return _ret;
	}
	final bool SatisfiedBySignedInUser()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_SatisfiedBySignedInUser(&_ret));
		return _ret;
	}
	final bool IsSatisfied()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo)this.asInterface(uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2"))).get_IsSatisfied(&_ret));
		return _ret;
	}
}

interface LicenseSatisfactionResult : Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionResult
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo) LicenseSatisfactionInfos()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionResult)this.asInterface(uuid("3c674f73-3c87-4ee1-8201-f428359bd3af"))).get_LicenseSatisfactionInfos(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionResult)this.asInterface(uuid("3c674f73-3c87-4ee1-8201-f428359bd3af"))).get_ExtendedError(&_ret));
		return _ret;
	}
}

enum LicenseRefreshOption
{
	RunningLicenses = 0,
	AllLicenses = 1
}