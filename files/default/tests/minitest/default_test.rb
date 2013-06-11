require File.expand_path("../support/helpers", __FILE__)

describe "nodejs::default" do
  include Helpers::Nodejs

  it "installs the nodejs dependency packages" do
    if node["platform"] == "ubuntu"
      package("libssl-dev").must_be_installed
    end
  end

  it "creates the node binary file" do
    file("#{node["nodejs"]["dir"]}/bin/node").must_exist
  end

  it "creates the npm binary file" do
    file("#{node["nodejs"]["dir"]}/bin/npm").must_exist
  end
end
