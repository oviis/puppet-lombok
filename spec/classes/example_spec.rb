require 'spec_helper'

describe 'lombok' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "lombok class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('lombok::params') }
          it { is_expected.to contain_class('lombok::install').that_comes_before('lombok::config') }
          it { is_expected.to contain_class('lombok::config') }
          it { is_expected.to contain_class('lombok::service').that_subscribes_to('lombok::config') }

          it { is_expected.to contain_service('lombok') }
          it { is_expected.to contain_package('lombok').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'lombok class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('lombok') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
