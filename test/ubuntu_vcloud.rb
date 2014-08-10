require_relative 'spec_helper'

describe 'box' do
  it 'should have a root user' do
    expect(user 'root').to exist
  end
  
  it 'should have a vagrant user' do
    expect(user 'vagrant').to exist
  end

  # this tests if rsync works from bin/test-box-vcloud.bat
  describe file('/vagrant/testdir/testfile.txt') do
    it { should be_file }
    its(:content) { should match /Works/ }
  end

  # check SSH
  describe service('ssh') do
    it { should be_enabled }
    it { should be_running }
  end
  describe port(22) do
    it { should be_listening  }
  end

  # check for 10GBit vmxnet3
  describe command('dmesg') do
    it { should return_stdout(/vmxnet3.*eth0: NIC Link is Up 10000 Mbps/)   }
  end

  # VMware Tools
  describe process("vmtoolsd") do
    it { should be_running }
  end

  # check timezone
  describe file('/etc/timezone') do
    it { should be_file }
    its(:content) { should match /Europe.Berlin/ }
  end
end
