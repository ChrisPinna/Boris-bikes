require 'docking_station.rb'

describe DockingStation do
    it "should respond to release_bike" do
        expect(subject).to respond_to(:release_bike)
    end

    it 'should release a working bike' do
        bike = subject.release_bike
        expect(bike).to be_instance_of(Bike)
        expect(bike.working?).to(eq(true))
    end

    it 'should respond to dock' do
        expect(subject).to(respond_to(:dock))
    end

    it 'should have an empty array of bikes when we create a new docking station' do
        expect(@rack).to be_nil
    end

    it 'should be able to hold my docked bike in the rack' do
        bike = subject.release_bike
        expect(subject.dock(bike)).to(eq(subject.rack))
    end

end