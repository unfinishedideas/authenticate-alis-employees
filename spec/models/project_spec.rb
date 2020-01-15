require 'rails_helper'

describe Project do
    context 'associations' do
        it { should have_many(:employees).through(:assignments) }
    end

    context 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_most(250) }
    end
end
