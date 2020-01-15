require 'rails_helper'

describe Employee do
    context 'associations' do
        it { should belong_to(:division) }
        it { should have_many(:projects).through(:assignments) }
    end

    context 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_most(100) }
        it { should validate_presence_of(:title) }
        it { should validate_length_of(:title).is_at_most(100) }
    end
end
