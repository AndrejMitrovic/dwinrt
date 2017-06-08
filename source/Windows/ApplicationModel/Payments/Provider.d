module Windows.ApplicationModel.Payments.Provider;

import dwinrt;

@uuid("0e47aa53-8521-4969-a957-df2538a3a98f")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentAppManager")
interface IPaymentAppManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RegisterAsync(Windows.Foundation.Collections.IIterable!(HSTRING) supportedPaymentMethodIds, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UnregisterAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("a341ac28-fc89-4406-b4d9-34e7fe79dfb6")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentAppManager")
interface IPaymentAppManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.ApplicationModel.Payments.Provider.PaymentAppManager* return_value);
}

@uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransaction")
interface IPaymentTransaction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PaymentRequest(Windows.ApplicationModel.Payments.PaymentRequest* return_value);
	HRESULT get_PayerEmail(HSTRING* return_value);
	HRESULT set_PayerEmail(HSTRING value);
	HRESULT get_PayerName(HSTRING* return_value);
	HRESULT set_PayerName(HSTRING value);
	HRESULT get_PayerPhoneNumber(HSTRING* return_value);
	HRESULT set_PayerPhoneNumber(HSTRING value);
	HRESULT abi_UpdateShippingAddressAsync(Windows.ApplicationModel.Payments.PaymentAddress shippingAddress, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult)* return_result);
	HRESULT abi_UpdateSelectedShippingOptionAsync(Windows.ApplicationModel.Payments.PaymentShippingOption selectedShippingOption, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult)* return_result);
	HRESULT abi_AcceptAsync(Windows.ApplicationModel.Payments.PaymentToken paymentToken, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult)* return_result);
	HRESULT abi_Reject();
}

@uuid("060e3276-d30c-4817-95a2-df7ae9273b56")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult")
interface IPaymentTransactionAcceptResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus* return_value);
}

@uuid("8d639750-ee0a-4df5-9b1e-1c0f9ec59881")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransaction")
interface IPaymentTransactionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransaction)* return_result);
}

interface PaymentAppManager
{
}

interface PaymentTransaction
{
}

interface PaymentTransactionAcceptResult
{
}