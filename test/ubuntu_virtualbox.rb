require_relative 'spec_helper'

describe 'box' do
  it 'should have a root user' do
    expect(user 'root').to exist
  end
  
  it 'should have a vagrant user' do
    expect(user 'vagrant').to exist
  end

  # this tests if rsync (or at least shared folder) works from bin/test-box-vcloud.bat
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

  # Virtual Box Additions
  describe service('vboxadd') do
    it { should be_enabled }
    it { should be_running }
  end
  describe service('vboxadd-service') do
    it { should be_enabled }
    it { should be_running }
  end
end
