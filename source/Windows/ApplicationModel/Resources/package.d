module Windows.ApplicationModel.Resources;

import dwinrt;

@uuid("08524908-16ef-45ad-a602-293637d7e61a")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetString(HSTRING resource, HSTRING* return_value);
}

@uuid("10eb6ec6-8138-48c1-bc65-e1f14207367c")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoader2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStringForUri(Windows.Foundation.Uri uri, HSTRING* return_value);
}

@uuid("c33a3603-69dc-4285-a077-d5c0e47ccbe8")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ResourceLoader may be altered or unavailable for releases after Windows 8.1. Instead, use GetForCurrentView.")
	HRESULT abi_CreateResourceLoaderByName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
}

@uuid("bf777ce1-19c8-49c2-953c-47e9227b334e")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("GetStringForReference may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use GetStringForUri.")
	HRESULT abi_GetStringForReference(Windows.Foundation.Uri uri, HSTRING* return_value);
}

@uuid("0cc04141-6466-4989-9494-0b82dfc53f1f")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForCurrentViewWithName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForViewIndependentUse(Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForViewIndependentUseWithName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
}

interface ResourceLoader
{
}