require 'rails_helper'

describe Assignment do
    context 'associations' do
        it { should belong_to(:employee) }
        it { should belong_to(:project) }
    end
end
