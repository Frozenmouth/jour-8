require_relative '../lib/dark_trader.rb'

describe "stock_crypto" do
  it "parse cryptocurrencies' name" do
    expect(stock_crypto("name")).to eq("Bitcoin")
  end
  it "parse cryptocurrencies' price" do
    expect(stock_crypto("price")).to eq("$5054.34")
  end
end