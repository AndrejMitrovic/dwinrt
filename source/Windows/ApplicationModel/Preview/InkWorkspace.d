module Windows.ApplicationModel.Preview.InkWorkspace;

import dwinrt;

@uuid("fe0a7990-5e59-4bb7-8a63-7d218cd96300")
@WinrtFactory("Windows.ApplicationModel.Preview.InkWorkspace.InkWorkspaceHostedAppManager")
interface IInkWorkspaceHostedAppManager : IInspectable
{
extern(Windows):
	HRESULT abi_SetThumbnailAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("cbfd8cc5-a162-4bc4-84ee-e8716d5233c5")
@WinrtFactory("Windows.ApplicationModel.Preview.InkWorkspace.InkWorkspaceHostedAppManager")
interface IInkWorkspaceHostedAppManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentApp(Windows.ApplicationModel.Preview.InkWorkspace.InkWorkspaceHostedAppManager* return_current);
}

interface InkWorkspaceHostedAppManager : Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManager
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SetThumbnailAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManager).abi_SetThumbnailAsync(bitmap, &_ret));
		return _ret;
	}
}