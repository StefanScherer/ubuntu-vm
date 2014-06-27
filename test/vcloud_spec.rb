require_relative 'spec_helper'

describe 'box' do
  describe file('/vagrant/testdir/testfile.txt') do
    it { should be_file }
    its(:content) { should match /Works/ }
  end

  # TODO: check for 10GBit vmxnet3
  # dmesg | grep "eth0: NIC Link is Up 10000 Mbps"
end
