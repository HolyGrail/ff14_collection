# 設計の都合上、Contentにも意味のあるレコードを持つのでConcernにしてContent::Twitterでextendします
# 良い方法があれば直していく
module ContentConcern
  extend ActiveSupport::Concern

  class_methods do
    def table_name_prefix
      'content_'
    end
  end
end
