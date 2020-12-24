require 'rails_helper'

describe ArticesController do
  describe '#index' do
    subject { get :index } 
    it 'should return ' do
      subject 
      expect(response).to have_http_status(:ok)
    end
    # it 'should return proper json ' do
    #   articles = create_list :artice, 3
    #   puts articles
    #   subject 
    #   expect(json_data.length).to eq(2)  
    #   articles.each_with_index |article, index| do
    #   expect(json_data[index]['attributes']).to eq({
    #     "title" => article.title,
    #     "content" => article.content,
    #     "slug" => article.slug
    #   })  
    #   end
    # end
    it 'should return articles in order' do
      old_article = create :artice
      new_article = create :artice
      subject
      expect(json_data.first['id']).to eq(old_article.id.to_s)  
      expect(json_data.last['id']).to eq(new_article.id.to_s)  
    end
  end
end


  

