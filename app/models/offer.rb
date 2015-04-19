class Offer < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }

  def self.search(query)
    if query.nil?
      all
    else
      db_query = query.split(' ').join(' & ')
      where("to_tsvector(job_title || ' ' || job_summary || ' ' || locations) \
      @@ to_tsquery('#{db_query}')")
    end
  end
end
