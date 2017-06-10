module Windows.ApplicationModel.DataTransfer.DragDrop.Core;

import dwinrt;

@uuid("7d56d344-8464-4faf-aa49-37ea6e2d7bd1")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager")
interface ICoreDragDropManager : IInspectable
{
extern(Windows):
	HRESULT add_TargetRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDropOperationTargetRequestedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_TargetRequested(EventRegistrationToken value);
	HRESULT get_AreConcurrentOperationsEnabled(bool* return_value);
	HRESULT set_AreConcurrentOperationsEnabled(bool value);
}

@uuid("9542fdca-da12-4c1c-8d06-041db29733c3")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager")
interface ICoreDragDropManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager* return_value);
}

@uuid("48353a8b-cb50-464e-9575-cd4e3a7ab028")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo")
interface ICoreDragInfo : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_Modifiers(Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("c54691e5-e6fb-4d74-b4b1-8a3c17f25e9e")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo")
interface ICoreDragInfo2 : IInspectable
{
extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("cc06de4f-6db0-4e62-ab1b-a74a02dc6d85")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation")
interface ICoreDragOperation : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	HRESULT abi_SetPointerId(UINT32 pointerId);
	HRESULT abi_SetDragUIContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetDragUIContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
	HRESULT get_DragUIContentMode(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode* return_value);
	HRESULT set_DragUIContentMode(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_value);
}

@uuid("824b1e2c-d99a-4fc3-8507-6c182f33b46a")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation")
interface ICoreDragOperation2 : IInspectable
{
extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT set_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
}

@uuid("89a85064-3389-4f4f-8897-7e8a3ffb3c93")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride")
interface ICoreDragUIOverride : IInspectable
{
extern(Windows):
	HRESULT abi_SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
	HRESULT get_IsContentVisible(bool* return_value);
	HRESULT set_IsContentVisible(bool value);
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT set_Caption(HSTRING value);
	HRESULT get_IsCaptionVisible(bool* return_value);
	HRESULT set_IsCaptionVisible(bool value);
	HRESULT get_IsGlyphVisible(bool* return_value);
	HRESULT set_IsGlyphVisible(bool value);
	HRESULT abi_Clear();
}

@uuid("d9126196-4c5b-417d-bb37-76381def8db4")
interface ICoreDropOperationTarget : IInspectable
{
extern(Windows):
	HRESULT abi_EnterAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride dragUIOverride, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
	HRESULT abi_OverAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride dragUIOverride, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
	HRESULT abi_LeaveAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_DropAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
}

@uuid("2aca929a-5e28-4ea6-829e-29134e665d6d")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDropOperationTargetRequestedEventArgs")
interface ICoreDropOperationTargetRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_SetTarget(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTarget target);
}

interface CoreDragDropManager : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager
{
extern(Windows):
	final bool AreConcurrentOperationsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager).get_AreConcurrentOperationsEnabled(&_ret));
		return _ret;
	}
	final void AreConcurrentOperationsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager).set_AreConcurrentOperationsEnabled(value));
	}
}

interface CoreDragInfo : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo, Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo2
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackageView Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageView _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo).get_Data(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers Modifiers()
	{
		Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo).get_Modifiers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo).get_Position(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo2).get_AllowedOperations(&_ret));
		return _ret;
	}
}

interface CoreDragOperation : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation, Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).get_Data(&_ret));
		return _ret;
	}
	final void SetPointerId(UINT32 pointerId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).abi_SetPointerId(pointerId));
	}
	final void SetDragUIContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).abi_SetDragUIContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetDragUIContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).abi_SetDragUIContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
	final Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode DragUIContentMode()
	{
		Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).get_DragUIContentMode(&_ret));
		return _ret;
	}
	final void DragUIContentMode(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).set_DragUIContentMode(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) StartAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2).get_AllowedOperations(&_ret));
		return _ret;
	}
	final void AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2).set_AllowedOperations(value));
	}
}

interface CoreDragUIOverride : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride
{
extern(Windows):
	final void SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).abi_SetContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).abi_SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
	final bool IsContentVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).get_IsContentVisible(&_ret));
		return _ret;
	}
	final void IsContentVisible(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).set_IsContentVisible(value));
	}
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).get_Caption(&_ret));
		return _ret;
	}
	final void Caption(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).set_Caption(value));
	}
	final bool IsCaptionVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).get_IsCaptionVisible(&_ret));
		return _ret;
	}
	final void IsCaptionVisible(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).set_IsCaptionVisible(value));
	}
	final bool IsGlyphVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).get_IsGlyphVisible(&_ret));
		return _ret;
	}
	final void IsGlyphVisible(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).set_IsGlyphVisible(value));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragUIOverride).abi_Clear());
	}
}

interface CoreDropOperationTargetRequestedEventArgs : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTargetRequestedEventArgs
{
extern(Windows):
	final void SetTarget(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTarget target)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTargetRequestedEventArgs).abi_SetTarget(target));
	}
}

@bitflags
enum CoreDragUIContentMode
{
	Auto = 0x0,
	Deferred = 0x1
}