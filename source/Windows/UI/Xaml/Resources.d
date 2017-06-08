module Windows.UI.Xaml.Resources;

import dwinrt;

@uuid("511a84ab-4a88-419f-852e-54083b90b078")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoader : IInspectable
{
}

@uuid("5bfd7e49-7886-44f3-8ed3-6fec0463ed69")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Resources.CustomXamlResourceLoader* return_instance);
}

@uuid("f851e991-af02-46e8-9af8-427b7ebfe9f8")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GetResource(HSTRING resourceId, HSTRING objectType, HSTRING propertyName, HSTRING propertyType, IInspectable* return_returnValue);
}

@uuid("224ff617-e4dc-4c27-ad32-db93d5d0e5da")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.Xaml.Resources.CustomXamlResourceLoader* return_value);
	HRESULT set_Current(Windows.UI.Xaml.Resources.CustomXamlResourceLoader value);
}

interface CustomXamlResourceLoader : Windows.UI.Xaml.Resources.ICustomXamlResourceLoader, Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderOverrides
{
}