require "checkout"

describe Checkout do
     
    describe '.new' do
        it "takes one argument" do             
            expect(Checkout).to respond_to(:new).with(1).argument
        end
    end
    
    it { is_expected.to respond_to(:scan).with(1).argument }

    it { is_expected.to respond_to(:total) }

    it { is_expected.to respond_to(:item)}

    it 'returns Lavender heart when scanned item 001 is scanned' do
        item = "001"
        expect(subject.scan(item)).to eq({code: "001", name: "Lavender heart", price: 9.25})
    end

    it 'returns Personalised cufflinks when scanned item 002 is scanned' do
        item = "002"
        expect(subject.scan(item)).to eq({:code=>"002", :name=>"Personalised cufflinks", :price=>45.00})
    end

    



    # it "returns scanned items" do
    #     item = "001"
    #     subject.scan(item)
    #     expect(subject.item).to eq item
    # end

    # it "returns £9.25 when one item '001' is scanned" do
    #     item = {code: 001, name: "Lavender heart", price: 9.25}
    #     subject.scan(item)
    #     expect(subject.total).to eq "£9.25"
    # end

    # it "returns £17.00 when two '001' items are scanned" do
    #     item = {code: 001, name: "Lavender heart", price: 9.25}
    #     subject.scan(item)
    #     subject.scan(item)
    #     expect(subject.total).to eq "£17.00"
    # end

    
    


end

