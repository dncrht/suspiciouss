require 'spec_helper'

describe Suspiciouss::Suggestions::Indentation do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '        .please-dont {}' }

      it { should eq "Indentation is too damn high" }
    end

    context 'valid' do
      let(:line) { '      .thank-you {}' }

      it { should be_nil }
    end
  end
end
