class NewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /news or /news.json
  def index
    @news = News.all
  end

  # GET /news/1 or /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news or /news.json
  def create
    @news = current_user.news.build(news_params)
    @news.image.attach(params[:news][:image]) # Adjunta la imagen al objeto de la noticia

    if @news.save
      redirect_to @news, notice: 'La noticia se creó correctamente.'
    else
      render :new
    end
  end
  # PATCH/PUT /news/1 or /news/1.json
  def update
    if @news.update(news_params)
      @news.image.attach(params[:news][:image]) if params[:news][:image].present? # Actualiza la imagen solo si se selecciona una nueva

      redirect_to @news, notice: 'La noticia se actualizó correctamente.'
    else
      render :edit
    end
  end

  # DELETE /news/1 or /news/1.json
  def destroy
    @news.destroy

    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'La noticia se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private

  # ...

  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:title, :content)
  end
end
