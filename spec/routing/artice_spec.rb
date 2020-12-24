require 'rails_helper'

describe 'artices routes' do
  it 'should route to artices' do
    expect(get '/arices').to 
    route_to('artices#index')
  end
  it 'should route to show' do
    expect(get '/arices/1').to 
    route_to('artices#index, id: 1')
  end
end

  # it 'should have not repeat  slug' do 
  #   artice =  FactoryBot.build :artice 
  #   artice_new =  FactoryBot.build :artice, slug: artice.slug 
  #   expect(artice_new).not_to be_valid  
  # end
  

