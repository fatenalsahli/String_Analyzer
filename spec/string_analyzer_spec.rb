class StringAnalyzer 
    
    def has_vowels?(n)

        !!(n =~ /[aeio]+/i)
    end

    def has_vowels_upper_case?(n)

        !!(n =~ /[^aeio]+/i)
    end

    def has_vowels_and_consonants?(n)

        !!(n =~ /[a-z]+[aeio]/)
    end

    def has_consonants?(n)

        !!(n =~ /[bcdfghjklmnpqrstvwxyz]/)
    end

    def has_consonants_upper_case?(n)

        !!(n =~ /[^BCDFGHJKLMNPQRSTVWXYZ]+/i)
    end

    def has_all_letters_numbers_puncuation?(n)

        !!(n =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/)
    end

    def has_only_numbers_puncuation?(n)

        !!(n =~ /\A([^@?\s]+)[0-9,\s]+\z/)
    end

    def has_white_space?(n)

        !!(n =~ /\s/)
    end

    def has_empty_string?(n)

        !!(n =~ /\^$/)
    end

    def has_upper_and_lower_vowles_case?(n)

        !!(n =~ /\b[aeiou]+[AEIOU]\b/)
    end

    def has_all_letters?(n)

        !!(n =~ /[a-z]+[A+Z]/)
    end

end

describe StringAnalyzer do 

    it "Should detect when a string contains vowles" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("aaa")).to be true
    end

    it "Should detect when a string contains at least one vowle and some consonants" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels_and_consonants?("abcefg")).to be true
    end

    it "Should detect when a string contains only consonants" do
        s1 = StringAnalyzer.new()
        expect(s1.has_consonants?("mnklp")).to be false
    end

    it "Should detect when a string contains only vowles upper case" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels_upper_case?("AEIOU")).to be true
    end

    it "Should detect when a string contains all letters , numbers and puncuation" do
        s1 = StringAnalyzer.new()
        expect(s1.has_all_letters_numbers_puncuation?("abcde55345&??")).to be true
    end

    it "Should detect when a string contains numbers and puncuation only" do
        s1 = StringAnalyzer.new()
        expect(s1.has_only_numbers_puncuation?("423432%%%^&")).to be false
    end
    

    it "Should detect when a string contains only consonants upper case" do
        s1 = StringAnalyzer.new()
        expect(s1.has_consonants_upper_case?("BCDFG")).to be false
    end

    it "Should detect when a string contains white space" do
        s1 = StringAnalyzer.new()
        expect(s1.has_white_space?("")).to be false
    end

    it "Should detect when a string contains empty string" do
        s1 = StringAnalyzer.new()
        expect(s1.has_empty_string?("")).to be false
    end
    it "Should detect when a string contains upper and lower vowles string" do
        s1 = StringAnalyzer.new()
        expect(s1.has_upper_and_lower_vowles_case?("AeiOuuuA")).to be true
    end


    it "Should detect when a string contains upper and lower letters " do
        s1 = StringAnalyzer.new()
        expect(s1.has_all_letters?("AbCdEfghl")).to be true
    end
    
end

