require 'rails_helper'

RSpec.describe Udon::UdonService do
  describe 'test' do
    let(:subject) { described_class.new }
    it 'sucks' do
      expect(subject.perform!).to start_with('I hate')
    end
  end
end
