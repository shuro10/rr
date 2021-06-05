require 'rails_helper'

RSpec.describe Post, type: :request do
  describe 'Post' do
    before(:each) do
      @post = create(:post)
      @posts = create_list(:post, 10)
    end

    it 'gets all posts' do
      get '/api/v1/posts'
      JSON.parse(response.body)
      expect(response.status).to eq(200)
    end

    it 'gets a post' do
      get "/api/v1/posts/#{@post.id}"
      json = JSON.parse(response.body)
      expect(response.status).to eq(200)

      # 要求した特定のポストのみ取得した事を確認する
      expect(json['name']).to eq(@post.name)
    end

    # it 'creates a new post' do
    #   post_params = { 
    #     name: 'posttest', 
    #     user_id: '1',
    #     quickword: '早速、右下のボタンで募集ページをつくりましょう！',
    #     catchcopy: 'ご閲覧ありがとうございます',
    #     member: '3',
    #     place: '集合場所',
    #     category: '',
    #     price: '1000',
    #     start_time: '2000-01-01T09:00:00.000Z',
    #     finish_time: '2000-01-01T03:00:00.000Z',
    #     release: '2021-5-10',
    #   }

    #   #データが作成されている事を確認
    #   expect { post '/api/v1/posts', params: post_params }.to change(Post, :count).by(+1)

    #   expect(response.status).to eq(200)
    # end

    it 'edits posts' do
      post = create(:post, name: 'old-title')

      put "/api/v1/posts/#{post.id}", params: { name: 'new-title' }
      json = JSON.parse(response.body)
      expect(response.status).to eq(200)

      # データが更新されている事を確認
      expect(json['name']).to eq('new-title')
    end
    it 'deletes the post' do
      post = create(:post)

      # データが削除されている事を確認
      expect { delete "/api/v1/posts/#{post.id}" }.to change(Post, :count).by(-1)

      expect(response.status).to eq(200)
    end
  end
end
