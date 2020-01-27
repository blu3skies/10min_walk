require 'walk'

describe Walk do 
    let(:array) { Walk.new.create_array }

    it 'Should respond to create_array method' do
        walk = Walk.new
        expect(walk).to respond_to(:create_array)
    end 

    it "Should give a random array from 4 arrays given" do 
        expect(array.count).to eq(10)
    end 


end 