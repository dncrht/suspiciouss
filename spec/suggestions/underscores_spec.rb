require 'spec_helper'

describe Suspiciouss::Suggestions::Underscores do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '.please_dont {}' }

      it { should eq "Don't use underscores when naming classes" }
    end

    context 'valid' do
      let(:line) { '.valid-selector {}' }

      it { should be_nil }
    end
  end
end
