require 'chefspec'
describe 'krishna-assignment-vm2::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end
end

describe 'krishna-assignment-vm2::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['nginx']['server_name'] = "krishna.example.com"
      node.set['nginx']['server_root'] = "/usr/share/nginx/assignment"
    end.converge(described_recipe)
  end
end

describe 'krishna-assignment-vm2::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new }

  before do
   stub_search(:node, 'name:hello') { (ruby_code) }
  end
end
