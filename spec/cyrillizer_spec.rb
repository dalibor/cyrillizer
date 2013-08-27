# encoding: utf-8

require 'spec_helper'

describe "Convertor" do
  context "conversion" do
    it "converts to cyrilic" do
      "Cela rechenica na latinica".to_cyr.should == "Цела реченица на латиница"
      "Cela rechenica na latinica".to_cyr!.should == "Цела реченица на латиница"
    end

    it "converts to latin" do
      "Цела реченица на латиница".to_lat.should == "Cela rechenica na latinica"
      "Цела реченица на латиница".to_lat!.should == "Cela rechenica na latinica"
    end
  end

  context "object reference" do
    it "changes original string when using to_cyr!" do
      string = 'orginalen'
      new_string = string.to_cyr!

      new_string.object_id.should == string.object_id
    end

    it "does not change original string when using to_cyr" do
      string = 'orginalen'
      new_string = string.to_cyr

      new_string.object_id.should_not == string.object_id
    end

    it "changes original string when using to_lat!" do
      string = 'оргинален'
      new_string = string.to_lat!

      new_string.object_id.should == string.object_id
    end

    it "does not change original string when using to_lat" do
      string = 'оргинален'
      new_string = string.to_lat

      new_string.object_id.should_not == string.object_id
    end
  end
end
