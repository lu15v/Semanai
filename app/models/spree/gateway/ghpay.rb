class Spree::Gateway::Ghpay < Spree::Gateway
  def provider_class
    Spree::Gateway::Ghpay
  end
  def payment_source_class
    Spree::CreditCard
  end

  def method_type
    'foopay'
  end

  def purchase(amount, transaction_details, options = {})
    # Always accept the payment
    ActiveMerchant::Billing::Response.new(true, 'success', {}, {})
  end
end
