class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ポートレート' },
    { id: 3, name: '風景' },
    { id: 4, name: 'オブジェクト' }
  ]
 
   include ActiveHash::Associations
   has_many :posts
 
  end