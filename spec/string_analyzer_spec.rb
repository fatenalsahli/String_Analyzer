class StringAnalyzer 
    
    def has_vowels?(n)

        !!(n =~ /[aeio]+/i)
    end

end

describe StringAnalyzer do 

    context "Vaildate has vowels function" do

    it "Should detect when a string contains vowles" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("aaa")).to be true
    end

    it "Should detect when a string contains at least one vowle and some consonants" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("abcefg")).to be true
    end

    it "Should detect when a string contains only consonants" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("mnklp")).to be false
    end

    it "Should detect when a string contains only vowles upper case" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AEIOU")).to be true
    end

    it "Should detect when a string contains all letters , numbers and puncuation" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("abcde55345&??")).to be false
    end

    it "Should detect when a string contains numbers and puncuation only" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("423432%%%^&")).to be true
    end
    

    it "Should detect when a string contains only consonants upper case" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("BCDFG")).to be false
    end

    it "Should detect when a string contains white space" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("")).to be false
    end

    it "Should detect when a string contains empty string" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("")).to be false
    end
    it "Should detect when a string contains upper and lower vowles string" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AeiOuuuA")).to be true
    end


    it "Should detect when a string contains upper and lower letters " do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AbCdEfghl")).to be true
        end
    
    end

end 
