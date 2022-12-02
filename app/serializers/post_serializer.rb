class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  has_one :author
  has_many :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
