require 'spec_helper'

describe Suspiciouss::Suggestions::ZeroUnits do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '.selector {margin: 0px;}' }

      it { should eq "Don't add the unit if zero" }
    end

    context 'valid' do
      let(:line) { '.selector {margin: 0;}' }

      it { should be_nil }
    end
  end
end
