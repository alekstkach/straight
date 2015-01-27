module Straight
  module ExchangeRate

    class KrakenAdapter < Adapter
      
      FETCH_URL = 'https://api.kraken.com/0/public/Ticker?pair=xbtusd'

      def rate_for(currency_code)
        super
        if rate = @rates['result']['XXBTZ' + currency_code.upcase]
          rate_to_f(rate['c'].first)
        else
          raise CurrencyNotSupported
        end
      end

    end

  end
end