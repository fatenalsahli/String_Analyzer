class HelloWorld 
    def say_hello
        return "Hello world!!"
    end

end


describe HelloWorld do 
    context "Vaildate say hello function" do

        it "Show say hello world when call say hello function!" do
            h1 = HelloWorld.new()
            expect(h1.say_hello).to eq "Hello world!!"
    
        end
    
        it "Show not say hello world when call say hello function" do
            h1 = HelloWorld.new()
            expect(h1.say_hello).not_to eq "Random!!"
    
        end

    end
    
end
