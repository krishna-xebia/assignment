require 'chefspec'
describe 'krishna-assignment::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end
end

describe 'krishna-assignment::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['nginx']['lb_hostname'] = '192.168.33.11'
      node.set['nginx']['server_name'] = "krishna.example.com"
      node.set['nginx']['server_crt'] = "krishna.example.com.crt"
      node.set['nginx']['server_key'] = "krishna.example.com.key"
      node.set['nginx']['server_ca_crt'] = "krishna.example.com.ca.crt"
    end.converge(described_recipe)
  end
end

describe 'krishna-assignment::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new }

  before do
   stub_search(:node, 'name:hello') { (ruby_code) }
  end
end
