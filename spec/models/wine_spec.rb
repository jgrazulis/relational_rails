require "rails_helper"

describe Wine, type: :model do
   describe "relationships" do
      it { should belong_to(:vineyard) }
   end
end 
