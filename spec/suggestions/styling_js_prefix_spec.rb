require 'spec_helper'

describe Suspiciouss::Suggestions::StylingJsPrefix do

  subject { described_class.new.parse(line) }

  describe '#parse' do

    context 'invalid' do
      let(:line) { '.js-tight-coupling {}' }

      it { should eq "Don't style js- prefixed selectors" }
    end

    context 'valid' do
      let(:line) { '.selector {}' }

      it { should be_nil }
    end
  end
end
