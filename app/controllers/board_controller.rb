class BoardController < ApplicationController
  # if user_signed_in? 이 작업은 모두 로그인이 되었을 경우에 행해져야 하는 것이다
  # 그렇기 떄문에 모든 액션마다 다 넣어줘야 하는데 일일히 넣어준 다는 것은 잘못된 코딩 방식
  before_action :require_login
  #이렇게 한 후 applictation 에 작성(공통으로 쓰이는 메소드)
  # 또한 before_action :require_login 이렇게 되면 모든 페이지에 적용이 되는데
  # 만약 로그인 페이지에서도 이런걸 요구한다면? 로그인하기위해 로그인을 해야하는 말도안되는 상황이 생김
  
  # only랑 except 두개있음 그것만 할거냐  그거빼고 할거냐 차이 
  def index
      @posts = Post.all.reverse

  end

  def create

      @post = Post.new(title: params[:title] , content: params[:content], user: current_user)
      @post.save
      redirect_to :back

  end
  
  def comment_create

      @comment = Comment.new(post_id: params[:post_id], content: params[:content])
      @comment.save
      redirect_to :back

  end
  

  def new
  end

  def edit
  end

  def destroy
  end
end
