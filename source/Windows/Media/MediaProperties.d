module Windows.Media.MediaProperties;

import dwinrt;

@uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Bitrate(UINT32 value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT set_ChannelCount(UINT32 value);
	HRESULT get_ChannelCount(UINT32* return_value);
	HRESULT set_SampleRate(UINT32 value);
	HRESULT get_SampleRate(UINT32* return_value);
	HRESULT set_BitsPerSample(UINT32 value);
	HRESULT get_BitsPerSample(UINT32* return_value);
}

@uuid("c45d54da-80bd-4c23-80d5-72d4a181e894")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingProperties2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSpatial(bool* return_value);
}

@uuid("0cad332c-ebe9-4527-b36d-e42a13cf38db")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateAacAdts(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateMp3(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreatePcm(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateWma(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("7489316f-77a0-433d-8ed5-4040280e8665")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAlac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateFlac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("98f10d79-13ea-49ff-be70-2673db69702c")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesWithFormatUserData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetFormatUserData(UINT32 __valueSize, BYTE* value);
	HRESULT abi_GetFormatUserData(UINT32* out___valueSize, BYTE** out_value);
}

@uuid("38654ca7-846a-4f97-a2e5-c3a15bbf70fd")
@WinrtFactory("Windows.Media.MediaProperties.H264ProfileIds")
interface IH264ProfileIdsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConstrainedBaseline(INT32* return_value);
	HRESULT get_Baseline(INT32* return_value);
	HRESULT get_Extended(INT32* return_value);
	HRESULT get_Main(INT32* return_value);
	HRESULT get_High(INT32* return_value);
	HRESULT get_High10(INT32* return_value);
	HRESULT get_High422(INT32* return_value);
	HRESULT get_High444(INT32* return_value);
	HRESULT get_StereoHigh(INT32* return_value);
	HRESULT get_MultiviewHigh(INT32* return_value);
}

@uuid("78625635-f331-4189-b1c3-b48d5ae034f1")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Width(UINT32 value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT set_Height(UINT32 value);
	HRESULT get_Height(UINT32* return_value);
}

@uuid("257c68dc-8b99-439e-aa59-913a36161297")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingPropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateJpeg(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreatePng(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreateJpegXR(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
}

@uuid("f6c25b29-3824-46b0-956e-501329e1be3c")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingPropertiesStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateUncompressed(Windows.Media.MediaProperties.MediaPixelFormat format, Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreateBmp(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
}

@uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Audio(Windows.Media.MediaProperties.AudioEncodingProperties value);
	HRESULT get_Audio(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT set_Video(Windows.Media.MediaProperties.VideoEncodingProperties value);
	HRESULT get_Video(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT set_Container(Windows.Media.MediaProperties.ContainerEncodingProperties value);
	HRESULT get_Container(Windows.Media.MediaProperties.ContainerEncodingProperties* return_value);
}

@uuid("197f352c-2ede-4a45-a896-817a4854f8fe")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateM4a(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateMp3(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateWma(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateMp4(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateWmv(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile)* return_operation);
	HRESULT abi_CreateFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile)* return_operation);
}

@uuid("ce8de74f-6af4-4288-8fe2-79adf1f79a43")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWav(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateAvi(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
}

@uuid("90dac5aa-cf76-4294-a9ed-1a1420f51f6b")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAlac(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateFlac(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateHevc(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
}

@uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4")
interface IMediaEncodingProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Properties(Windows.Media.MediaProperties.MediaPropertySet* return_value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Subtype(HSTRING value);
	HRESULT get_Subtype(HSTRING* return_value);
}

@uuid("37b6580e-a171-4464-ba5a-53189e48c1c8")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Aac(HSTRING* return_value);
	HRESULT get_AacAdts(HSTRING* return_value);
	HRESULT get_Ac3(HSTRING* return_value);
	HRESULT get_AmrNb(HSTRING* return_value);
	HRESULT get_AmrWb(HSTRING* return_value);
	HRESULT get_Argb32(HSTRING* return_value);
	HRESULT get_Asf(HSTRING* return_value);
	HRESULT get_Avi(HSTRING* return_value);
	HRESULT get_Bgra8(HSTRING* return_value);
	HRESULT get_Bmp(HSTRING* return_value);
	HRESULT get_Eac3(HSTRING* return_value);
	HRESULT get_Float(HSTRING* return_value);
	HRESULT get_Gif(HSTRING* return_value);
	HRESULT get_H263(HSTRING* return_value);
	HRESULT get_H264(HSTRING* return_value);
	HRESULT get_H264Es(HSTRING* return_value);
	HRESULT get_Hevc(HSTRING* return_value);
	HRESULT get_HevcEs(HSTRING* return_value);
	HRESULT get_Iyuv(HSTRING* return_value);
	HRESULT get_Jpeg(HSTRING* return_value);
	HRESULT get_JpegXr(HSTRING* return_value);
	HRESULT get_Mjpg(HSTRING* return_value);
	HRESULT get_Mpeg(HSTRING* return_value);
	HRESULT get_Mpeg1(HSTRING* return_value);
	HRESULT get_Mpeg2(HSTRING* return_value);
	HRESULT get_Mp3(HSTRING* return_value);
	HRESULT get_Mpeg4(HSTRING* return_value);
	HRESULT get_Nv12(HSTRING* return_value);
	HRESULT get_Pcm(HSTRING* return_value);
	HRESULT get_Png(HSTRING* return_value);
	HRESULT get_Rgb24(HSTRING* return_value);
	HRESULT get_Rgb32(HSTRING* return_value);
	HRESULT get_Tiff(HSTRING* return_value);
	HRESULT get_Wave(HSTRING* return_value);
	HRESULT get_Wma8(HSTRING* return_value);
	HRESULT get_Wma9(HSTRING* return_value);
	HRESULT get_Wmv3(HSTRING* return_value);
	HRESULT get_Wvc1(HSTRING* return_value);
	HRESULT get_Yuy2(HSTRING* return_value);
	HRESULT get_Yv12(HSTRING* return_value);
}

@uuid("4b7cd23d-42ff-4d33-8531-0626bee4b52d")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Vp9(HSTRING* return_value);
	HRESULT get_L8(HSTRING* return_value);
	HRESULT get_L16(HSTRING* return_value);
	HRESULT get_D16(HSTRING* return_value);
}

@uuid("ba2414e4-883d-464e-a44f-097da08ef7ff")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Alac(HSTRING* return_value);
	HRESULT get_Flac(HSTRING* return_value);
}

@uuid("d2d0fee5-8929-401d-ac78-7d357e378163")
@WinrtFactory("Windows.Media.MediaProperties.MediaRatio")
interface IMediaRatio : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Numerator(UINT32 value);
	HRESULT get_Numerator(UINT32* return_value);
	HRESULT set_Denominator(UINT32 value);
	HRESULT get_Denominator(UINT32* return_value);
}

@uuid("a461ff85-e57a-4128-9b21-d5331b04235c")
@WinrtFactory("Windows.Media.MediaProperties.Mpeg2ProfileIds")
interface IMpeg2ProfileIdsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Simple(INT32* return_value);
	HRESULT get_Main(INT32* return_value);
	HRESULT get_SignalNoiseRatioScalable(INT32* return_value);
	HRESULT get_SpatiallyScalable(INT32* return_value);
	HRESULT get_High(INT32* return_value);
}

@uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Bitrate(UINT32 value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT set_Width(UINT32 value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT set_Height(UINT32 value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_FrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_PixelAspectRatio(Windows.Media.MediaProperties.MediaRatio* return_value);
}

@uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetFormatUserData(UINT32 __valueSize, BYTE* value);
	HRESULT abi_GetFormatUserData(UINT32* out___valueSize, BYTE** out_value);
	HRESULT set_ProfileId(INT32 value);
	HRESULT get_ProfileId(INT32* return_value);
}

@uuid("386bcdc4-873a-479f-b3eb-56c1fcbec6d7")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StereoscopicVideoPackingMode(Windows.Media.MediaProperties.StereoscopicVideoPackingMode* return_value);
}

@uuid("724ef014-c10c-40f2-9d72-3ee13b45fa8e")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SphericalVideoFrameFormat(Windows.Media.MediaProperties.SphericalVideoFrameFormat* return_value);
}

@uuid("3ce14d44-1dc5-43db-9f38-ebebf90152cb")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingPropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateH264(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT abi_CreateMpeg2(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT abi_CreateUncompressed(HSTRING subtype, UINT32 width, UINT32 height, Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

@uuid("cf1ebd5d-49fe-4d00-b59a-cfa4dfc51944")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingPropertiesStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateHevc(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

interface AudioEncodingProperties
{
}

interface ContainerEncodingProperties
{
}

interface ImageEncodingProperties
{
}

interface MediaEncodingProfile
{
}

interface MediaPropertySet
{
}

interface MediaRatio
{
}

interface VideoEncodingProperties
{
}

enum AudioEncodingQuality
{
	Auto = 0,
	High = 1,
	Medium = 2,
	Low = 3
}

@bitflags
enum MediaMirroringOptions
{
	None = 0x0,
	Horizontal = 0x1,
	Vertical = 0x2
}

enum MediaPixelFormat
{
	Nv12 = 0,
	Bgra8 = 1
}

enum MediaRotation
{
	None = 0,
	Clockwise90Degrees = 1,
	Clockwise180Degrees = 2,
	Clockwise270Degrees = 3
}

enum MediaThumbnailFormat
{
	Bmp = 0,
	Bgra8 = 1
}

enum SphericalVideoFrameFormat
{
	None = 0,
	Unsupported = 1,
	Equirectangular = 2
}

enum StereoscopicVideoPackingMode
{
	None = 0,
	SideBySide = 1,
	TopBottom = 2
}

enum VideoEncodingQuality
{
	Auto = 0,
	HD1080p = 1,
	HD720p = 2,
	Wvga = 3,
	Ntsc = 4,
	Pal = 5,
	Vga = 6,
	Qvga = 7,
	Uhd2160p = 8,
	Uhd4320p = 9
}