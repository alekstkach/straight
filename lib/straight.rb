require 'money-tree'
require 'satoshi-unit'
require 'json'
require 'uri'
require 'open-uri'
require 'yaml'

require_relative 'straight/blockchain_adapter'
require_relative 'straight/blockchain_adapters/blockchain_info_adapter'
require_relative 'straight/blockchain_adapters/biteasy_adapter'

require_relative 'straight/exchange_rate_adapter'
require_relative 'straight/exchange_rate_adapters/bitpay_adapter'
require_relative 'straight/exchange_rate_adapters/coinbase_adapter'
require_relative 'straight/exchange_rate_adapters/bitstamp_adapter'
require_relative 'straight/exchange_rate_adapters/localbitcoins_adapter'
require_relative 'straight/exchange_rate_adapters/okcoin_adapter'
require_relative 'straight/exchange_rate_adapters/btce_adapter'
require_relative 'straight/exchange_rate_adapters/kraken_adapter'
require_relative 'straight/exchange_rate_adapters/average_rate_adapter'


require_relative 'straight/order'
require_relative 'straight/gateway'
