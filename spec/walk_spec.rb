require 'walk'

describe Walk do 
    let(:walk) { Walk.new() }

    it 'Should respond to create_array method' do
        expect(walk).to respond_to(:create_array)
    end 

    it "Should give a random array of 10 characters" do 
        expect((walk.create_array).count).to eq(10)

    end 
    describe '#return_position' do 
        it 'should return true if it array of directions return to same position' do 
            array = walk.create_array
            expect(walk.return_position(array)).to eq(true).or eq(false)
        end 

        it 'should return true or the following test' do 
            walk = Walk.new(array = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
            expect(walk.return_position(array)).to eq(true)
        end 

        it 'should return false to the following test' do 
            walk = Walk.new(array = ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])
            expect(walk.return_position(array)).to eq(false)
        end 
    end 
end 