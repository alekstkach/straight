require 'spec_helper'

RSpec.describe Straight::ExchangeRate::KrakenAdapter do

  before(:each) do
    @exchange_adapter = Straight::ExchangeRate::KrakenAdapter.new
  end

  it "finds the rate for currency code" do
    expect(@exchange_adapter.rate_for('USD')).to be_kind_of(Float)
    expect( -> { @exchange_adapter.rate_for('FEDcoin') }).to raise_error(Straight::ExchangeRate::Adapter::CurrencyNotSupported)
  end

  it "rases exception if rate is nil" do
    expect( -> { @exchange_adapter.rate_to_f(nil) }).to raise_error(Straight::ExchangeRate::Adapter::NilValueNotAllowed)
  end

end