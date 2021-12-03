require "rails_helper"

describe Wine, type: :model do
   describe "relationships" do
      it { should belong_to(:vineyards) }
   end
end
