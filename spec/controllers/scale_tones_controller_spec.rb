require File.dirname(__FILE__) + '/../spec_helper'

describe ScaleTonesController do

  before(:each) do
		@request.env["HTTP_ACCEPT"] = "application/xml"
	end
	
	it "should list scale tones" do
		get :index, :scale_id => 'Major'
		response.should be_success
	end
	
	it "should show scale tone" do
		get :show, :scale_id => 'Major', :id => 1
		response.should be_success
	end
	
end
