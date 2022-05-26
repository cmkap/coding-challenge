require "checkout"

describe Checkout do
    describe '.new' do
        it "takes one argument" do
            expect(Checkout).to respond_to(:new).with(1).argument
        end
    end
end

