require 'spec_helper'

describe Suspiciouss::Suggestions::CamelCase do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '.pleaseDont {' }

      it { should eq "Don't use camelCase" }
    end

    context 'valid' do
      let(:line) { '.valid-selector {' }

      it { should be_nil }
    end
  end
end
