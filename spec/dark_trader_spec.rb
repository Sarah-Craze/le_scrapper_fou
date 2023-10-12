require_relative '../lib/dark_trader.rb'

def dark_trader
describe "dark_trader" do
    it "should return an array of hashes with crypto_names and crypto_values" do
        expected_result = [
      { "BTC" => "$5245.12" },
      { "ETH" => "$1870.79" }
    ]
end
    expect(dark_trader).to eq(expected_result)
  end
end