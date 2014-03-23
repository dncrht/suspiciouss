require 'spec_helper'

describe Suspiciouss::Suggestions::StylingIds do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '#please-dont {}' }

      it { should eq "Don't style IDs" }
    end

    context 'valid' do
      let(:line) { '  > thanks {}' }

      it { should be_nil }
    end
  end
end
