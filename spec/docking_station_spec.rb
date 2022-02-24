require 'docking_station.rb'

describe DockingStation do
    it "should respond to release_bike" do
        expect(subject).to respond_to(:release_bike)
    end

    it 'should release a working bike' do
        bike = Bike.new
        expect(bike.working?).to(eq(true))
    end

    it 'should respond to dock' do
        expect(subject).to(respond_to(:dock))
    end

    it 'should have an empty array of bikes when we create a new docking station' do
        expect(@rack).to be_nil
    end

    it 'should be able to hold my docked bike in the rack' do
        bike = Bike.new
        expect(subject.dock(bike)).to(eq(subject.rack))
    end

    it 'should return an error if releasing bike while docking station is empty' do
       expect{subject.release_bike}.to raise_error('No bikes available')
    end

    it 'should return an error if we try to dock too many bikes ;)' do
        subject.dock(Bike.new)
        expect{subject.dock(Bike.new)}.to raise_error 'No spaces to dock a bike'
    end

    it '' do 
    
    end
end