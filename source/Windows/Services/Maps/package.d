module Windows.Services.Maps;

import dwinrt;

@uuid("ed268c74-5913-11e6-8b77-86f30ca893d3")
@WinrtFactory("Windows.Services.Maps.EnhancedWaypoint")
interface IEnhancedWaypoint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_Kind(Windows.Services.Maps.WaypointKind* return_value);
}

@uuid("af868477-a2aa-46dd-b645-23b31b8aa6c7")
@WinrtFactory("Windows.Services.Maps.EnhancedWaypoint")
interface IEnhancedWaypointFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.Geopoint point, Windows.Services.Maps.WaypointKind kind, Windows.Services.Maps.EnhancedWaypoint* return_value);
}

@uuid("c1a36d8a-2630-4378-9e4a-6e44253dceba")
@WinrtFactory("Windows.Services.Maps.ManeuverWarning")
interface IManeuverWarning : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.Services.Maps.ManeuverWarningKind* return_value);
	HRESULT get_Severity(Windows.Services.Maps.ManeuverWarningSeverity* return_value);
}

@uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699")
@WinrtFactory("Windows.Services.Maps.MapAddress")
interface IMapAddress : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BuildingName(HSTRING* return_value);
	HRESULT get_BuildingFloor(HSTRING* return_value);
	HRESULT get_BuildingRoom(HSTRING* return_value);
	HRESULT get_BuildingWing(HSTRING* return_value);
	HRESULT get_StreetNumber(HSTRING* return_value);
	HRESULT get_Street(HSTRING* return_value);
	HRESULT get_Neighborhood(HSTRING* return_value);
	HRESULT get_District(HSTRING* return_value);
	HRESULT get_Town(HSTRING* return_value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT get_RegionCode(HSTRING* return_value);
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_CountryCode(HSTRING* return_value);
	HRESULT get_PostCode(HSTRING* return_value);
	HRESULT get_Continent(HSTRING* return_value);
}

@uuid("75cd6df1-e5ad-45a9-bf40-6cf256c1dd13")
@WinrtFactory("Windows.Services.Maps.MapAddress")
interface IMapAddress2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FormattedAddress(HSTRING* return_value);
}

@uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc")
@WinrtFactory("Windows.Services.Maps.MapLocation")
interface IMapLocation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Address(Windows.Services.Maps.MapAddress* return_value);
}

@uuid("43f1f179-e8cc-45f6-bed2-54ccbf965d9a")
@WinrtFactory("Windows.Services.Maps.MapLocationFinderResult")
interface IMapLocationFinderResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Locations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapLocation)* return_value);
	HRESULT get_Status(Windows.Services.Maps.MapLocationFinderStatus* return_value);
}

@uuid("318adb5d-1c5d-4f35-a2df-aaca94959517")
@WinrtFactory("Windows.Services.Maps.MapLocationFinder")
interface IMapLocationFinderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindLocationsAtAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
	HRESULT abi_FindLocationsAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
	HRESULT abi_FindLocationsWithMaxCountAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint, UINT32 maxCount, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
}

@uuid("959a8b96-6485-4dfd-851a-33ac317e3af6")
@WinrtFactory("Windows.Services.Maps.MapLocationFinder")
interface IMapLocationFinderStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindLocationsAtWithAccuracyAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Services.Maps.MapLocationDesiredAccuracy accuracy, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
}

@uuid("37e3e515-82b4-4d54-8fd9-af2624b3011c")
@WinrtFactory("Windows.Services.Maps.MapManager")
interface IMapManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowDownloadedMapsUI();
	HRESULT abi_ShowMapsUpdateUI();
}

@uuid("fb07b732-584d-4583-9c60-641fea274349")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BoundingBox(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_EstimatedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_Legs(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteLeg)* return_value);
	HRESULT get_IsTrafficBased(bool* return_value);
}

@uuid("d1c5d40c-2213-4ab0-a260-46b38169beac")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViolatedRestrictions(Windows.Services.Maps.MapRouteRestrictions* return_value);
	HRESULT get_HasBlockedRoads(bool* return_value);
}

@uuid("858d1eae-f2ad-429f-bb37-cd21094ffc92")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DurationWithoutTraffic(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrafficCongestion(Windows.Services.Maps.TrafficCongestion* return_value);
}

@uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1")
@WinrtFactory("Windows.Services.Maps.MapRouteDrivingOptions")
interface IMapRouteDrivingOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxAlternateRouteCount(UINT32* return_value);
	HRESULT set_MaxAlternateRouteCount(UINT32 value);
	HRESULT get_InitialHeading(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_InitialHeading(Windows.Foundation.IReference!(double) value);
	HRESULT get_RouteOptimization(Windows.Services.Maps.MapRouteOptimization* return_value);
	HRESULT set_RouteOptimization(Windows.Services.Maps.MapRouteOptimization value);
	HRESULT get_RouteRestrictions(Windows.Services.Maps.MapRouteRestrictions* return_value);
	HRESULT set_RouteRestrictions(Windows.Services.Maps.MapRouteRestrictions value);
}

@uuid("a868a31a-9422-46ac-8ca1-b1614d4bfbe2")
@WinrtFactory("Windows.Services.Maps.MapRouteFinderResult")
interface IMapRouteFinderResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Route(Windows.Services.Maps.MapRoute* return_value);
	HRESULT get_Status(Windows.Services.Maps.MapRouteFinderStatus* return_value);
}

@uuid("20709c6d-d90c-46c8-91c6-7d4be4efb215")
@WinrtFactory("Windows.Services.Maps.MapRouteFinderResult")
interface IMapRouteFinderResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AlternateRoutes(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRoute)* return_value);
}

@uuid("b8a5c50f-1c64-4c3a-81eb-1f7c152afbbb")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDrivingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationAndRestrictionsAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationRestrictionsAndHeadingAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsAndOptimizationAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsOptimizationAndRestrictionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsOptimizationRestrictionsAndHeadingAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetWalkingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetWalkingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("afcc2c73-7760-49af-b3bd-baf135b703e1")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDrivingRouteWithOptionsAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteDrivingOptions options, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("f6098134-5913-11e6-8b77-86f30ca893d3")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDrivingRouteFromEnhancedWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Maps.EnhancedWaypoint) waypoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromEnhancedWaypointsWithOptionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Maps.EnhancedWaypoint) waypoints, Windows.Services.Maps.MapRouteDrivingOptions options, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471")
@WinrtFactory("Windows.Services.Maps.MapRouteLeg")
interface IMapRouteLeg : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BoundingBox(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_EstimatedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Maneuvers(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteManeuver)* return_value);
}

@uuid("02e2062d-c9c6-45b8-8e54-1a10b57a17e8")
@WinrtFactory("Windows.Services.Maps.MapRouteLeg")
interface IMapRouteLeg2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DurationWithoutTraffic(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrafficCongestion(Windows.Services.Maps.TrafficCongestion* return_value);
}

@uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartingPoint(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_InstructionText(HSTRING* return_value);
	HRESULT get_Kind(Windows.Services.Maps.MapRouteManeuverKind* return_value);
	HRESULT get_ExitNumber(HSTRING* return_value);
	HRESULT get_ManeuverNotices(Windows.Services.Maps.MapManeuverNotices* return_value);
}

@uuid("5d7bcd9c-7c9b-41df-838b-eae21e4b05a9")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartHeading(double* return_value);
	HRESULT get_EndHeading(double* return_value);
	HRESULT get_StreetName(HSTRING* return_value);
}

@uuid("a6a138df-0483-4166-85be-b99336c11875")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Warnings(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.ManeuverWarning)* return_value);
}

@uuid("0144ad85-c04c-4cdd-871a-a0726d097cd4")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_ServiceToken(HSTRING value);
	HRESULT get_ServiceToken(HSTRING* return_value);
}

@uuid("f8193eed-9c85-40a9-8896-0fc3fd2b7c2a")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WorldViewRegionCode(HSTRING* return_value);
}

@uuid("0a11ce20-63a7-4854-b355-d6dcda223d1b")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataAttributions(HSTRING* return_value);
}

@uuid("088a2862-6abc-420e-945f-4cfd89c67356")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DataUsagePreference(Windows.Services.Maps.MapServiceDataUsagePreference value);
	HRESULT get_DataUsagePreference(Windows.Services.Maps.MapServiceDataUsagePreference* return_value);
}

interface EnhancedWaypoint
{
}

interface ManeuverWarning
{
}

interface MapAddress
{
}

interface MapLocation
{
}

interface MapLocationFinderResult
{
}

interface MapRoute
{
}

interface MapRouteDrivingOptions
{
}

interface MapRouteFinderResult
{
}

interface MapRouteLeg
{
}

interface MapRouteManeuver
{
}

enum ManeuverWarningKind
{
	None = 0,
	Accident = 1,
	AdministrativeDivisionChange = 2,
	Alert = 3,
	BlockedRoad = 4,
	CheckTimetable = 5,
	Congestion = 6,
	Construction = 7,
	CountryChange = 8,
	DisabledVehicle = 9,
	GateAccess = 10,
	GetOffTransit = 11,
	GetOnTransit = 12,
	IllegalUTurn = 13,
	MassTransit = 14,
	Miscellaneous = 15,
	NoIncident = 16,
	Other = 17,
	OtherNews = 18,
	OtherTrafficIncidents = 19,
	PlannedEvent = 20,
	PrivateRoad = 21,
	RestrictedTurn = 22,
	RoadClosures = 23,
	RoadHazard = 24,
	ScheduledConstruction = 25,
	SeasonalClosures = 26,
	Tollbooth = 27,
	TollRoad = 28,
	TollZoneEnter = 29,
	TollZoneExit = 30,
	TrafficFlow = 31,
	TransitLineChange = 32,
	UnpavedRoad = 33,
	UnscheduledConstruction = 34,
	Weather = 35
}

enum ManeuverWarningSeverity
{
	None = 0,
	LowImpact = 1,
	Minor = 2,
	Moderate = 3,
	Serious = 4
}

enum MapLocationDesiredAccuracy
{
	High = 0,
	Low = 1
}

enum MapLocationFinderStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	BadLocation = 3,
	IndexFailure = 4,
	NetworkFailure = 5,
	NotSupported = 6
}

@bitflags
enum MapManeuverNotices
{
	None = 0x0,
	Toll = 0x1,
	Unpaved = 0x2
}

enum MapRouteFinderStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	NoRouteFound = 3,
	NoRouteFoundWithGivenOptions = 4,
	StartPointNotFound = 5,
	EndPointNotFound = 6,
	NoPedestrianRouteFound = 7,
	NetworkFailure = 8,
	NotSupported = 9
}

enum MapRouteManeuverKind
{
	None = 0,
	Start = 1,
	Stopover = 2,
	StopoverResume = 3,
	End = 4,
	GoStraight = 5,
	UTurnLeft = 6,
	UTurnRight = 7,
	TurnKeepLeft = 8,
	TurnKeepRight = 9,
	TurnLightLeft = 10,
	TurnLightRight = 11,
	TurnLeft = 12,
	TurnRight = 13,
	TurnHardLeft = 14,
	TurnHardRight = 15,
	FreewayEnterLeft = 16,
	FreewayEnterRight = 17,
	FreewayLeaveLeft = 18,
	FreewayLeaveRight = 19,
	FreewayContinueLeft = 20,
	FreewayContinueRight = 21,
	TrafficCircleLeft = 22,
	TrafficCircleRight = 23,
	TakeFerry = 24
}

enum MapRouteOptimization
{
	Time = 0,
	Distance = 1,
	TimeWithTraffic = 2
}

@bitflags
enum MapRouteRestrictions
{
	None = 0x0,
	Highways = 0x1,
	TollRoads = 0x2,
	Ferries = 0x4,
	Tunnels = 0x8,
	DirtRoads = 0x10,
	Motorail = 0x20
}

enum MapServiceDataUsagePreference
{
	Default = 0,
	OfflineMapDataOnly = 1
}

enum TrafficCongestion
{
	Unknown = 0,
	Light = 1,
	Mild = 2,
	Medium = 3,
	Heavy = 4
}

enum WaypointKind
{
	Stop = 0,
	Via = 1
}