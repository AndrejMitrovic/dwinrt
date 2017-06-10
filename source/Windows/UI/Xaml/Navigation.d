module Windows.UI.Xaml.Navigation;

import dwinrt;

@uuid("aebaf785-43fc-4e2c-95c3-97ae84eabc8e")
interface LoadCompletedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("7bd1cf54-23cf-4cce-b2f5-4ce78d96896e")
interface NavigatedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("75d6a78f-a302-4489-9898-24ea49182910")
interface NavigatingCancelEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs e);
}

@uuid("4dab4671-12b2-43c7-b892-9be2dcd3e88d")
interface NavigationFailedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationFailedEventArgs e);
}

@uuid("f0117ddb-12fa-4d8d-8b26-b383d09c2b3c")
interface NavigationStoppedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("fd1d67ae-eafb-4079-be80-6dc92a03aedf")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs")
interface INavigatingCancelEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT get_NavigationMode(Windows.UI.Xaml.Navigation.NavigationMode* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
}

@uuid("5407b704-8147-4343-838f-dd1ee908c137")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs")
interface INavigatingCancelEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("b6aa9834-6691-44d1-bdf7-58820c27b0d0")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationEventArgs")
interface INavigationEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Content(IInspectable* return_value);
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_NavigationMode(Windows.UI.Xaml.Navigation.NavigationMode* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
}

@uuid("dbff71d9-979a-4b2e-a49b-3bb17fdef574")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationEventArgs")
interface INavigationEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("11c1dff7-36c2-4102-b2ef-0217a97289b3")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationFailedEventArgs")
interface INavigationFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Exception(HRESULT* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
}

@uuid("ef8814a6-9388-4aca-8572-405194069080")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntry : IInspectable
{
extern(Windows):
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("4454048a-a8b9-4f78-9b84-1f51f58851ff")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntryFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo navigationTransitionInfo, Windows.UI.Xaml.Navigation.PageStackEntry* return_instance);
}

@uuid("aceff8e3-246c-4033-9f01-01cb0da5254e")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntryStatics : IInspectable
{
extern(Windows):
	HRESULT get_SourcePageTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface NavigatingCancelEventArgs : Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs, Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs).set_Cancel(value));
	}
	final Windows.UI.Xaml.Navigation.NavigationMode NavigationMode()
	{
		Windows.UI.Xaml.Navigation.NavigationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs).get_NavigationMode(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName SourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs).get_SourcePageType(&_ret));
		return _ret;
	}
	final IInspectable Parameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2).get_Parameter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo NavigationTransitionInfo()
	{
		Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2).get_NavigationTransitionInfo(&_ret));
		return _ret;
	}
}

interface NavigationEventArgs : Windows.UI.Xaml.Navigation.INavigationEventArgs, Windows.UI.Xaml.Navigation.INavigationEventArgs2
{
extern(Windows):
	final IInspectable Content()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).get_Content(&_ret));
		return _ret;
	}
	final IInspectable Parameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).get_Parameter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName SourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).get_SourcePageType(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Navigation.NavigationMode NavigationMode()
	{
		Windows.UI.Xaml.Navigation.NavigationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).get_NavigationMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs).set_Uri(value));
	}
	final Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo NavigationTransitionInfo()
	{
		Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationEventArgs2).get_NavigationTransitionInfo(&_ret));
		return _ret;
	}
}

interface NavigationFailedEventArgs : Windows.UI.Xaml.Navigation.INavigationFailedEventArgs
{
extern(Windows):
	final HRESULT Exception()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationFailedEventArgs).get_Exception(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationFailedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationFailedEventArgs).set_Handled(value));
	}
	final Windows.UI.Xaml.Interop.TypeName SourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.INavigationFailedEventArgs).get_SourcePageType(&_ret));
		return _ret;
	}
}

interface PageStackEntry : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Navigation.IPageStackEntry
{
extern(Windows):
	final Windows.UI.Xaml.Interop.TypeName SourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.IPageStackEntry).get_SourcePageType(&_ret));
		return _ret;
	}
	final IInspectable Parameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.IPageStackEntry).get_Parameter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo NavigationTransitionInfo()
	{
		Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Navigation.IPageStackEntry).get_NavigationTransitionInfo(&_ret));
		return _ret;
	}
}

enum NavigationCacheMode
{
	Disabled = 0,
	Required = 1,
	Enabled = 2
}

enum NavigationMode
{
	New = 0,
	Back = 1,
	Forward = 2,
	Refresh = 3
}