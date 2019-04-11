require_relative '../lib/mayor_directory.rb'

describe "get_townhall_email" do 
  it "parse mayor email from mayor's city webpage on mayor's directory website" do 
    expect(get_townhall_email("Avernes")).to eq("mairie.avernes@orange.fr")
  end
end

describe "get_townhall_list" do
  it "parse city webpages from Val-d'Oise's city directory" do
    expect(get_townhall_list("townhall_source", "page.xpath('/html/body/pre/a')")).to eq("Gonesse")
  end
end
