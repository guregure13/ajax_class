class Post < ActiveRecord::Base
    has_many :comments
    
    belongs_to :user
    
    #게시판 글 쓸때 이제 제목이랑 컨텐츠 사이에 값을 넣어준다.
    #컨트롤러에서 create를 찾아가라

end
