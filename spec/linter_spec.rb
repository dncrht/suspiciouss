require 'spec_helper'
require 'fakefs/spec_helpers'

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

  describe '#suggestions_to_use' do
    include FakeFS::SpecHelpers

    let(:suggestions_to_use) { subject.suggestions_to_use.map(&:to_s) }

    it 'is a list of Linters' do
      expect(suggestions_to_use).to match_array(%w(
        CamelCase
        Indentation
        Overqualifying
        StylingIds
        StylingJsPrefix
        Underscores
        ZeroUnits
      ))
    end

    context 'when we have a config file that specifies what to include' do
      before do
        File.open(".suspiciouss", "w") do |f|
          f.write({
            :include => [
              'CamelCase'
            ]
          }.to_yaml)
        end
      end

      it 'only includes those suggestions' do
        expect(suggestions_to_use).to match_array(%w(
          CamelCase
        ))
      end
    end

    context 'when we have a config file that specifies what to exclude' do
      before do
        File.open(".suspiciouss", "w") do |f|
          f.write({
            :exclude => [
              'StylingIds',
              'Indentation'
            ]
          }.to_yaml)
        end
      end

      it 'excludes those suggestions' do
        expect(suggestions_to_use).to match_array(%w(
          CamelCase
          Overqualifying
          StylingJsPrefix
          Underscores
          ZeroUnits
        ))
      end
    end

    context 'when we have a config file that specifies what to include _and_ exclude' do
      before do
        File.open(".suspiciouss", "w") do |f|
          f.write({
            :include => [
              'CamelCase',
              'StylingIds'
            ],
            :exclude => [
              'StylingIds',
              'Indentation'
            ]
          }.to_yaml)
        end
      end

      it 'the includes overrides the excludes' do
        expect(suggestions_to_use).to match_array(%w(
          CamelCase
        ))
      end
    end
  end
end
