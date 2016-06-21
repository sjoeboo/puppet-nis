require 'spec_helper'
describe 'nis' do

  context 'with defaults for all parameters' do
    it { should contain_class('nis') }
  end
end
