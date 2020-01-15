require 'rails_helper'

describe Division do
    context 'associations' do
        it { should have_many(:employees) }
    end

    context 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_uniqueness_of(:name) } #fails because titleizing callback can break it
        it { should validate_length_of(:name).is_at_most(100) }
    end
end
