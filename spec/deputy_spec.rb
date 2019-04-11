require_relative '../lib/deputy.rb'

describe "deputy_list" do
  it "parse deputy names from the french deputy directory" do
    expect(deputy_list(deputy_names, gsub)).to eq("Damien Abad", "M")
  end
end

describe "deputy_email" do
  it "parse emails of each deputy from the french deputy directory" do
    expect(deputy_list(deputy_emails)).to eq("damien.abad@assemblee-nationale.fr ")
  end
end
 