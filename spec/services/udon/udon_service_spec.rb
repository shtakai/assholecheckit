require 'rails_helper'

RSpec.describe Udon::UdonService do
  describe 'test' do
    context 'no hate' do
      let(:subject) { described_class.new }
      it 'sucks' do
        expect(subject.perform!).to start_with('I hate')
      end
    end

    context 'hate' do
      let(:subject) { described_class.new(hate: true) }
      it 'sucks' do
        expect{ subject.perform! }.to raise_error Udon::UdonError
      end
    end
  end
end
