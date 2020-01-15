require 'rails_helper'

describe Employee do
    it { should belong_to(:division) }
    it { should have_many(:projects).through(:assignments) }
end
