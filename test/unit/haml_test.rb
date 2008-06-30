require File.dirname(__FILE__) + '/../test_helper'

class Ohcount::HamlTest < Ohcount::Test
	def test_line_comment
		lb = [Ohcount::LanguageBreakdown.new("haml", "", "/ comment", 0)]
		assert_equal lb, Ohcount::parse("/ comment", "haml")
	end
  
	def test_comprehensive
		verify_parse("haml.haml")
	end
end