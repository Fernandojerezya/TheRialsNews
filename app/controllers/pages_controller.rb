class PagesController < ApplicationController
  def news
    @news = News.all # Obténer las noticias desde la base de datos
  end
end
