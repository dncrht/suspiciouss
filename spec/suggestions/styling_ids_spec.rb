require 'spec_helper'

describe Suspiciouss::Suggestions::StylingIds do

  describe '#parse' do

    context 'invalid' do
      it { expect(subject.parse('#please-dont {')).to eq "Don't style IDs" }
      it { expect(subject.parse('#please-dont')).to eq "Don't style IDs" }
    end

    context 'valid' do
      it { expect(subject.parse('color: #abcdef')).to be_nil }
    end
  end
end
