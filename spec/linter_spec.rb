require 'spec_helper'

describe Suspiciouss::Linter do

  let(:diff) { 'spec/fixtures/changeset.diff' }

  describe '#process' do

    context 'input as parameter' do

      let(:input) { File.open(diff, 'r').read }
      let(:output) { File.open('spec/fixtures/result.md', 'r').read }

      subject { described_class.new.process(input) }

      it { expect(subject).to eq output }
    end

    context 'input from standard input' do

      let(:output) { File.open('spec/fixtures/result.txt', 'r').read }

      subject { `cat #{diff} | bin/suspiciouss` }

      it { expect(subject).to eq output }
    end
  end
end
