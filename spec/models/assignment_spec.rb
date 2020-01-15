require 'rails_helper'

describe Assignment do
    it { should belong_to(:employee) }
    it { should belong_to(:project) }
end
