class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: 'pk_f99099d9f99c4027bd994c4a97fd753a',
      endpoint: 'https://cloud.iexapis.com/v1'
    )
    client.price(ticker_symbol)
  end
end
