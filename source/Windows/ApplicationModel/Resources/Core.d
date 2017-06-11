module Windows.ApplicationModel.Resources.Core;

import dwinrt;

struct ResourceLayoutInfo
{
	UINT32 MajorVersion;
	UINT32 MinorVersion;
	UINT32 ResourceSubtreeCount;
	UINT32 NamedResourceCount;
	INT32 Checksum;
}

@uuid("1c98c219-0b13-4240-89a5-d495dc189a00")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.NamedResource")
interface INamedResource : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_uri);
	HRESULT get_Candidates(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)* return_value);
	deprecated("Resolve may be altered or unavailable for releases after Windows 8.1. Instead, use Resolve(ResourceContext).")
	HRESULT abi_Resolve(Windows.ApplicationModel.Resources.Core.ResourceCandidate* return_result);
	HRESULT abi_ResolveForContext(Windows.ApplicationModel.Resources.Core.ResourceContext resourceContext, Windows.ApplicationModel.Resources.Core.ResourceCandidate* return_result);
	deprecated("ResolveAll may be altered or unavailable for releases after Windows 8.1. Instead, use ResolveAll(ResourceContext).")
	HRESULT abi_ResolveAll(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)* return_result);
	HRESULT abi_ResolveAllForContext(Windows.ApplicationModel.Resources.Core.ResourceContext resourceContext, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)* return_instances);
}

@uuid("af5207d9-c433-4764-b3fd-8fa6bfbcbadc")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceCandidate")
interface IResourceCandidate : IInspectable
{
extern(Windows):
	HRESULT get_Qualifiers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)* return_value);
	HRESULT get_IsMatch(bool* return_value);
	HRESULT get_IsMatchAsDefault(bool* return_value);
	HRESULT get_IsDefault(bool* return_value);
	HRESULT get_ValueAsString(HSTRING* return_result);
	HRESULT abi_GetValueAsFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetQualifierValue(HSTRING qualifierName, HSTRING* return_value);
}

@uuid("69e5b468-f6fc-4013-aaa2-d53f1757d3b5")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceCandidate")
interface IResourceCandidate2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetValueAsStreamAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_operation);
}

@uuid("2fa22f4b-707e-4b27-ad0d-d0d8cd468fd2")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceContext")
interface IResourceContext : IInspectable
{
extern(Windows):
	HRESULT get_QualifierValues(Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_Reset();
	HRESULT abi_ResetQualifierValues(Windows.Foundation.Collections.IIterable!(HSTRING) qualifierNames);
	HRESULT abi_OverrideToMatch(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceQualifier) result);
	HRESULT abi_Clone(Windows.ApplicationModel.Resources.Core.ResourceContext* return_clone);
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT set_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING) languages);
}

@uuid("98be9d6c-6338-4b31-99df-b2b442f17149")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceContext")
interface IResourceContextStatics : IInspectable
{
extern(Windows):
	deprecated("CreateMatchingContext may be altered or unavailable for releases after Windows 8.1. Instead, use ResourceContext.GetForCurrentView.OverrideToMatch.")
	HRESULT abi_CreateMatchingContext(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceQualifier) result, Windows.ApplicationModel.Resources.Core.ResourceContext* return_value);
}

@uuid("41f752ef-12af-41b9-ab36-b1eb4b512460")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceContext")
interface IResourceContextStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.Resources.Core.ResourceContext* return_value);
	HRESULT abi_SetGlobalQualifierValue(HSTRING key, HSTRING value);
	HRESULT abi_ResetGlobalQualifierValues();
	HRESULT abi_ResetGlobalQualifierValuesForSpecifiedQualifiers(Windows.Foundation.Collections.IIterable!(HSTRING) qualifierNames);
	HRESULT abi_GetForViewIndependentUse(Windows.ApplicationModel.Resources.Core.ResourceContext* return_loader);
}

@uuid("20cf492c-af0f-450b-9da6-106dd0c29a39")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceContext")
interface IResourceContextStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_SetGlobalQualifierValueWithPersistence(HSTRING key, HSTRING value, Windows.ApplicationModel.Resources.Core.ResourceQualifierPersistence persistence);
}

@uuid("f744d97b-9988-44fb-abd6-5378844cfa8b")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceManager")
interface IResourceManager : IInspectable
{
extern(Windows):
	HRESULT get_MainResourceMap(Windows.ApplicationModel.Resources.Core.ResourceMap* return_value);
	HRESULT get_AllResourceMaps(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap)* return_maps);
	deprecated("DefaultContext may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use ResourceContext.GetForCurrentView.")
	HRESULT get_DefaultContext(Windows.ApplicationModel.Resources.Core.ResourceContext* return_value);
	HRESULT abi_LoadPriFiles(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageFile) files);
	HRESULT abi_UnloadPriFiles(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageFile) files);
}

@uuid("9d66fe6c-a4d7-4c23-9e85-675f304c252d")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceManager")
interface IResourceManager2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAllNamedResourcesForPackage(HSTRING packageName, Windows.ApplicationModel.Resources.Core.ResourceLayoutInfo resourceLayoutInfo, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.NamedResource)* return_table);
	HRESULT abi_GetAllSubtreesForPackage(HSTRING packageName, Windows.ApplicationModel.Resources.Core.ResourceLayoutInfo resourceLayoutInfo, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceMap)* return_table);
}

@uuid("1cc0fdfc-69ee-4e43-9901-47f12687baf7")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceManager")
interface IResourceManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.ApplicationModel.Resources.Core.ResourceManager* return_value);
	HRESULT abi_IsResourceReference(HSTRING resourceReference, bool* return_isReference);
}

@uuid("72284824-db8c-42f8-b08c-53ff357dad82")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceMap")
interface IResourceMap : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_uri);
	deprecated("GetValue(string) may be altered or unavailable for releases after Windows 8.1. Instead, use GetValue(string, ResourceContext).")
	HRESULT abi_GetValue(HSTRING resource, Windows.ApplicationModel.Resources.Core.ResourceCandidate* return_value);
	HRESULT abi_GetValueForContext(HSTRING resource, Windows.ApplicationModel.Resources.Core.ResourceContext context, Windows.ApplicationModel.Resources.Core.ResourceCandidate* return_value);
	HRESULT abi_GetSubtree(HSTRING reference, Windows.ApplicationModel.Resources.Core.ResourceMap* return_map);
}

@uuid("785da5b2-4afd-4376-a888-c5f9a6b7a05c")
@WinrtFactory("Windows.ApplicationModel.Resources.Core.ResourceQualifier")
interface IResourceQualifier : IInspectable
{
extern(Windows):
	HRESULT get_QualifierName(HSTRING* return_value);
	HRESULT get_QualifierValue(HSTRING* return_value);
	HRESULT get_IsDefault(bool* return_value);
	HRESULT get_IsMatch(bool* return_value);
	HRESULT get_Score(double* return_value);
}

interface NamedResource : Windows.ApplicationModel.Resources.Core.INamedResource
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) Candidates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).get_Candidates(&_ret));
		return _ret;
	}
	deprecated("Resolve may be altered or unavailable for releases after Windows 8.1. Instead, use Resolve(ResourceContext).")
	final Windows.ApplicationModel.Resources.Core.ResourceCandidate Resolve()
	{
		Windows.ApplicationModel.Resources.Core.ResourceCandidate _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).abi_Resolve(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Resources.Core.ResourceCandidate ResolveForContext(Windows.ApplicationModel.Resources.Core.ResourceContext resourceContext)
	{
		Windows.ApplicationModel.Resources.Core.ResourceCandidate _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).abi_ResolveForContext(resourceContext, &_ret));
		return _ret;
	}
	deprecated("ResolveAll may be altered or unavailable for releases after Windows 8.1. Instead, use ResolveAll(ResourceContext).")
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) ResolveAll()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).abi_ResolveAll(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) ResolveAllForContext(Windows.ApplicationModel.Resources.Core.ResourceContext resourceContext)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.INamedResource).abi_ResolveAllForContext(resourceContext, &_ret));
		return _ret;
	}
}

interface ResourceCandidate : Windows.ApplicationModel.Resources.Core.IResourceCandidate, Windows.ApplicationModel.Resources.Core.IResourceCandidate2
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier) Qualifiers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).get_Qualifiers(&_ret));
		return _ret;
	}
	final bool IsMatch()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).get_IsMatch(&_ret));
		return _ret;
	}
	final bool IsMatchAsDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).get_IsMatchAsDefault(&_ret));
		return _ret;
	}
	final bool IsDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).get_IsDefault(&_ret));
		return _ret;
	}
	final HSTRING ValueAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).get_ValueAsString(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetValueAsFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).abi_GetValueAsFileAsync(&_ret));
		return _ret;
	}
	final HSTRING GetQualifierValue(HSTRING qualifierName)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate).abi_GetQualifierValue(qualifierName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) GetValueAsStreamAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceCandidate2).abi_GetValueAsStreamAsync(&_ret));
		return _ret;
	}
}

interface ResourceCandidateVectorView : Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate), Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)
{
extern(Windows):
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceCandidate)).abi_First(out_first));
	}
}

interface ResourceContext : Windows.ApplicationModel.Resources.Core.IResourceContext
{
extern(Windows):
	final Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING) QualifierValues()
	{
		Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).get_QualifierValues(&_ret));
		return _ret;
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).abi_Reset());
	}
	final void ResetQualifierValues(Windows.Foundation.Collections.IIterable!(HSTRING) qualifierNames)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).abi_ResetQualifierValues(qualifierNames));
	}
	final void OverrideToMatch(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceQualifier) result)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).abi_OverrideToMatch(result));
	}
	final Windows.ApplicationModel.Resources.Core.ResourceContext Clone()
	{
		Windows.ApplicationModel.Resources.Core.ResourceContext _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).get_Languages(&_ret));
		return _ret;
	}
	final void Languages(Windows.Foundation.Collections.IVectorView!(HSTRING) languages)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceContext).set_Languages(languages));
	}
}

interface ResourceContextLanguagesVectorView : Windows.Foundation.Collections.IVectorView!(HSTRING), Windows.Foundation.Collections.IIterable!(HSTRING)
{
extern(Windows):
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(HSTRING)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(HSTRING)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(HSTRING)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(HSTRING)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(HSTRING)).abi_First(out_first));
	}
}

interface ResourceManager : Windows.ApplicationModel.Resources.Core.IResourceManager, Windows.ApplicationModel.Resources.Core.IResourceManager2
{
extern(Windows):
	final Windows.ApplicationModel.Resources.Core.ResourceMap MainResourceMap()
	{
		Windows.ApplicationModel.Resources.Core.ResourceMap _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager).get_MainResourceMap(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap) AllResourceMaps()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager).get_AllResourceMaps(&_ret));
		return _ret;
	}
	deprecated("DefaultContext may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use ResourceContext.GetForCurrentView.")
	final Windows.ApplicationModel.Resources.Core.ResourceContext DefaultContext()
	{
		Windows.ApplicationModel.Resources.Core.ResourceContext _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager).get_DefaultContext(&_ret));
		return _ret;
	}
	final void LoadPriFiles(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageFile) files)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager).abi_LoadPriFiles(files));
	}
	final void UnloadPriFiles(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageFile) files)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager).abi_UnloadPriFiles(files));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.NamedResource) GetAllNamedResourcesForPackage(HSTRING packageName, Windows.ApplicationModel.Resources.Core.ResourceLayoutInfo resourceLayoutInfo)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.NamedResource) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager2).abi_GetAllNamedResourcesForPackage(packageName, resourceLayoutInfo, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceMap) GetAllSubtreesForPackage(HSTRING packageName, Windows.ApplicationModel.Resources.Core.ResourceLayoutInfo resourceLayoutInfo)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceMap) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceManager2).abi_GetAllSubtreesForPackage(packageName, resourceLayoutInfo, &_ret));
		return _ret;
	}
}

interface ResourceMap : Windows.ApplicationModel.Resources.Core.IResourceMap, Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceMap).get_Uri(&_ret));
		return _ret;
	}
	deprecated("GetValue(string) may be altered or unavailable for releases after Windows 8.1. Instead, use GetValue(string, ResourceContext).")
	final Windows.ApplicationModel.Resources.Core.ResourceCandidate GetValue(HSTRING resource)
	{
		Windows.ApplicationModel.Resources.Core.ResourceCandidate _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceMap).abi_GetValue(resource, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Resources.Core.ResourceCandidate GetValueForContext(HSTRING resource, Windows.ApplicationModel.Resources.Core.ResourceContext context)
	{
		Windows.ApplicationModel.Resources.Core.ResourceCandidate _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceMap).abi_GetValueForContext(resource, context, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Resources.Core.ResourceMap GetSubtree(HSTRING reference)
	{
		Windows.ApplicationModel.Resources.Core.ResourceMap _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceMap).abi_GetSubtree(reference, &_ret));
		return _ret;
	}
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final void Split(Windows.Foundation.Collections.IMapView!(HSTRING,	IInspectable) out_firstPartition, Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) out_secondPartition)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)).abi_Split(out_firstPartition, out_secondPartition));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))).abi_First(out_first));
	}
}

interface ResourceMapIterator : Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))
{
extern(Windows):
	final Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource) Current()
	{
		Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))).get_Current(&_ret));
		return _ret;
	}
	final bool HasCurrent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))).get_HasCurrent(&_ret));
		return _ret;
	}
	final void MoveNext(bool* out_hasCurrent)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))).abi_MoveNext(out_hasCurrent));
	}
	final void GetMany(uint capacity, Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)* value, uint* actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource))).abi_GetMany(capacity, value, actual));
	}
}

interface ResourceMapMapView : Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))
{
extern(Windows):
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final void Split(Windows.Foundation.Collections.IMapView!(HSTRING,	IInspectable) out_firstPartition, Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) out_secondPartition)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap)).abi_Split(out_firstPartition, out_secondPartition));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))).abi_First(out_first));
	}
}

interface ResourceMapMapViewIterator : Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))
{
extern(Windows):
	final Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource) Current()
	{
		Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))).get_Current(&_ret));
		return _ret;
	}
	final bool HasCurrent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))).get_HasCurrent(&_ret));
		return _ret;
	}
	final void MoveNext(bool* out_hasCurrent)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))).abi_MoveNext(out_hasCurrent));
	}
	final void GetMany(uint capacity, Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)* value, uint* actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.ResourceMap))).abi_GetMany(capacity, value, actual));
	}
}

interface ResourceQualifier : Windows.ApplicationModel.Resources.Core.IResourceQualifier
{
extern(Windows):
	final HSTRING QualifierName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceQualifier).get_QualifierName(&_ret));
		return _ret;
	}
	final HSTRING QualifierValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceQualifier).get_QualifierValue(&_ret));
		return _ret;
	}
	final bool IsDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceQualifier).get_IsDefault(&_ret));
		return _ret;
	}
	final bool IsMatch()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceQualifier).get_IsMatch(&_ret));
		return _ret;
	}
	final double Score()
	{
		double _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Core.IResourceQualifier).get_Score(&_ret));
		return _ret;
	}
}

interface ResourceQualifierMapView : Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))
{
extern(Windows):
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final void Split(Windows.Foundation.Collections.IMapView!(HSTRING,	IInspectable) out_firstPartition, Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) out_secondPartition)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)).abi_Split(out_firstPartition, out_secondPartition));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))).abi_First(out_first));
	}
}

interface ResourceQualifierObservableMap : Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))
{
extern(Windows):
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))).abi_First(out_first));
	}
}

interface ResourceQualifierVectorView : Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier), Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)
{
extern(Windows):
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Resources.Core.ResourceQualifier)).abi_First(out_first));
	}
}

enum ResourceQualifierPersistence
{
	None = 0,
	LocalMachine = 1
}