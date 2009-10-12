When /^user writes (.*) character$/ do |latin|
  @text = latin
end

Then /^that character will be converted into (.*)?$/ do |cyrilic|
  @text.to_cyr.should == cyrilic
end

When /^user writes (.*) text$/ do |latin|
  @text = latin
end

Then /^that text will be converted into (.*)?$/ do |cyrilic|
  @text.to_cyr.should == cyrilic
end