class CmsOutputController < ApplicationController
  def output
    cms_title = request.path
    cms_title[0] = '';
    
    @cms_current = Cms.where("page_name='#{cms_title}'").first
  end
end
