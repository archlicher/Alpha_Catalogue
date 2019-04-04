require 'rails_helper'

RSpec.describe Button, type: :model do
  context 'saves correct button' do
    it { expect(Button.new).to be_valid }
  end
end
