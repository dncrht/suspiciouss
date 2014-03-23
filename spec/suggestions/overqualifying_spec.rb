require 'spec_helper'

describe Suspiciouss::Suggestions::Overqualifying do

  describe '#parse' do

    context 'invalid' do
      let(:result) { "Don't overqualify your selectors" }

      it { expect(subject.parse('div.nay {}')).to eq result }
      it { expect(subject.parse('label.nay {}')).to eq result }
      it { expect(subject.parse('a.nay {}')).to eq result }
      it { expect(subject.parse('input.nay {}')).to eq result }
      it { expect(subject.parse('span.nay {}')).to eq result }
    end

    context 'valid' do
      let(:line) { '.yea {}' }

      it { expect(subject.parse(line)).to be_nil }
    end
  end
end
