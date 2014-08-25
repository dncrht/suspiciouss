require 'spec_helper'

describe Suspiciouss::Suggestions::Element do

  describe '#parse' do

    context 'invalid' do
      let(:result) { 'Rightmost selector might be very common. Use a class instead' }

      it { expect(subject.parse('  div {}')).to eq result }
      it { expect(subject.parse('  .selector div {}')).to eq result }
    end

    context 'valid' do
      let(:line) { 'div {}' }

      it { expect(subject.parse(line)).to be_nil }
    end
  end
end
