class CommentsPresenter
  attr_reader :commentable
  def initialize(commentable)
    @commentable = commentable
  end

  def get_comment(from, n)
    @comments ||= commentable.comments_from(from, n)
  end
end
