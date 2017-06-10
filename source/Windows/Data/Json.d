module Windows.Data.Json;

import dwinrt;

@uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81")
@WinrtFactory("Windows.Data.Json.JsonArray")
interface IJsonArray : IInspectable
{
extern(Windows):
	HRESULT abi_GetObjectAt(UINT32 index, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetArrayAt(UINT32 index, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetStringAt(UINT32 index, HSTRING* return_returnValue);
	HRESULT abi_GetNumberAt(UINT32 index, double* return_returnValue);
	HRESULT abi_GetBooleanAt(UINT32 index, bool* return_returnValue);
}

@uuid("db1434a9-e164-499f-93e2-8a8f49bb90ba")
@WinrtFactory("Windows.Data.Json.JsonArray")
interface IJsonArrayStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonArray* return_jsonArray);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonArray* out_result, bool* return_succeeded);
}

@uuid("404030da-87d0-436c-83ab-fc7b12c0cc26")
@WinrtFactory("Windows.Data.Json.JsonError")
interface IJsonErrorStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetJsonStatus(INT32 hresult, Windows.Data.Json.JsonErrorStatus* return_status);
}

@uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObject : IInspectable
{
extern(Windows):
	HRESULT abi_GetNamedValue(HSTRING name, Windows.Data.Json.JsonValue* return_returnValue);
	HRESULT abi_SetNamedValue(HSTRING name, Windows.Data.Json.IJsonValue value);
	HRESULT abi_GetNamedObject(HSTRING name, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetNamedArray(HSTRING name, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetNamedString(HSTRING name, HSTRING* return_returnValue);
	HRESULT abi_GetNamedNumber(HSTRING name, double* return_returnValue);
	HRESULT abi_GetNamedBoolean(HSTRING name, bool* return_returnValue);
}

@uuid("2289f159-54de-45d8-abcc-22603fa066a0")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObjectStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonObject* return_jsonObject);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonObject* out_result, bool* return_succeeded);
}

@uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObjectWithDefaultValues : IInspectable
{
extern(Windows):
	HRESULT abi_GetNamedValueOrDefault(HSTRING name, Windows.Data.Json.JsonValue defaultValue, Windows.Data.Json.JsonValue* return_returnValue);
	HRESULT abi_GetNamedObjectOrDefault(HSTRING name, Windows.Data.Json.JsonObject defaultValue, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetNamedStringOrDefault(HSTRING name, HSTRING defaultValue, HSTRING* return_returnValue);
	HRESULT abi_GetNamedArrayOrDefault(HSTRING name, Windows.Data.Json.JsonArray defaultValue, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetNamedNumberOrDefault(HSTRING name, double defaultValue, double* return_returnValue);
	HRESULT abi_GetNamedBooleanOrDefault(HSTRING name, bool defaultValue, bool* return_returnValue);
}

@uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e")
interface IJsonValue : IInspectable
{
extern(Windows):
	HRESULT get_ValueType(Windows.Data.Json.JsonValueType* return_value);
	HRESULT abi_Stringify(HSTRING* return_returnValue);
	HRESULT abi_GetString(HSTRING* return_returnValue);
	HRESULT abi_GetNumber(double* return_returnValue);
	HRESULT abi_GetBoolean(bool* return_returnValue);
	HRESULT abi_GetArray(Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetObject(Windows.Data.Json.JsonObject* return_returnValue);
}

@uuid("5f6b544a-2f53-48e1-91a3-f78b50a6345c")
@WinrtFactory("Windows.Data.Json.JsonValue")
interface IJsonValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonValue* out_result, bool* return_succeeded);
	HRESULT abi_CreateBooleanValue(bool input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_CreateNumberValue(double input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_CreateStringValue(HSTRING input, Windows.Data.Json.JsonValue* return_jsonValue);
}

@uuid("1d9ecbe4-3fe8-4335-8392-93d8e36865f0")
@WinrtFactory("Windows.Data.Json.JsonValue")
interface IJsonValueStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateNullValue(Windows.Data.Json.JsonValue* return_jsonValue);
}

interface JsonArray : Windows.Data.Json.IJsonArray, Windows.Data.Json.IJsonValue, Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue), Windows.Foundation.Collections.IIterable!(Windows.Data.Json.IJsonValue), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonObject GetObjectAt(UINT32 index)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonArray).abi_GetObjectAt(index, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArrayAt(UINT32 index)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonArray).abi_GetArrayAt(index, &_ret));
		return _ret;
	}
	final HSTRING GetStringAt(UINT32 index)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonArray).abi_GetStringAt(index, &_ret));
		return _ret;
	}
	final double GetNumberAt(UINT32 index)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonArray).abi_GetNumberAt(index, &_ret));
		return _ret;
	}
	final bool GetBooleanAt(UINT32 index)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonArray).abi_GetBooleanAt(index, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetObject(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

interface JsonError
{
}

interface JsonObject : Windows.Data.Json.IJsonObject, Windows.Data.Json.IJsonValue, Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Data.Json.IJsonValue)), Windows.Data.Json.IJsonObjectWithDefaultValues, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonValue GetNamedValue(HSTRING name)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedValue(name, &_ret));
		return _ret;
	}
	final void SetNamedValue(HSTRING name, Windows.Data.Json.IJsonValue value)
	{
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_SetNamedValue(name, value));
	}
	final Windows.Data.Json.JsonObject GetNamedObject(HSTRING name)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedObject(name, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetNamedArray(HSTRING name)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedArray(name, &_ret));
		return _ret;
	}
	final HSTRING GetNamedString(HSTRING name)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedString(name, &_ret));
		return _ret;
	}
	final double GetNamedNumber(HSTRING name)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedNumber(name, &_ret));
		return _ret;
	}
	final bool GetNamedBoolean(HSTRING name)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObject).abi_GetNamedBoolean(name, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetObject(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonValue GetNamedValueOrDefault(HSTRING name, Windows.Data.Json.JsonValue defaultValue)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedValueOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetNamedObjectOrDefault(HSTRING name, Windows.Data.Json.JsonObject defaultValue)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedObjectOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final HSTRING GetNamedStringOrDefault(HSTRING name, HSTRING defaultValue)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedStringOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetNamedArrayOrDefault(HSTRING name, Windows.Data.Json.JsonArray defaultValue)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedArrayOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final double GetNamedNumberOrDefault(HSTRING name, double defaultValue)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedNumberOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final bool GetNamedBooleanOrDefault(HSTRING name, bool defaultValue)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonObjectWithDefaultValues).abi_GetNamedBooleanOrDefault(name, defaultValue, &_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

interface JsonValue : Windows.Data.Json.IJsonValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(this.as!(Windows.Data.Json.IJsonValue).abi_GetObject(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

enum JsonErrorStatus
{
	Unknown = 0,
	InvalidJsonString = 1,
	InvalidJsonNumber = 2,
	JsonValueNotFound = 3,
	ImplementationLimit = 4
}

enum JsonValueType
{
	Null = 0,
	Boolean = 1,
	Number = 2,
	String = 3,
	Array = 4,
	Object = 5
}