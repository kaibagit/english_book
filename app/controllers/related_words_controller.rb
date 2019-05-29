class RelatedWordsController < ApplicationController
  before_action :set_related_word, only: [:show, :edit, :update, :destroy, :start_add_vocabulary, :add_vocabulary]

  # GET /related_words
  # GET /related_words.json
  def index
    @related_words = RelatedWord.all
  end

  # GET /related_words/1
  # GET /related_words/1.json
  def show
  end

  # GET /related_words/new
  def new
    @related_word = RelatedWord.new
  end

  # GET /related_words/1/edit
  def edit
  end

  # POST /related_words
  # POST /related_words.json
  def create
    @related_word = RelatedWord.new(related_word_params)

    respond_to do |format|
      if @related_word.save
        format.html { redirect_to @related_word, notice: 'Related word was successfully created.' }
        format.json { render :show, status: :created, location: @related_word }
      else
        format.html { render :new }
        format.json { render json: @related_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /related_words/1
  # PATCH/PUT /related_words/1.json
  def update
    respond_to do |format|
      if @related_word.update(related_word_params)
        format.html { redirect_to @related_word, notice: 'Related word was successfully updated.' }
        format.json { render :show, status: :ok, location: @related_word }
      else
        format.html { render :edit }
        format.json { render json: @related_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /related_words/1
  # DELETE /related_words/1.json
  def destroy
    @related_word.destroy
    respond_to do |format|
      format.html { redirect_to related_words_url, notice: 'Related word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def start_add_vocabulary
  end

  def add_vocabulary
    vocabulary = Vocabulary.find_by_content (params[:vocabulary])
    relation = RelatedWordAndVocabulary.new(
        :related_word => @related_word,
        :vocabulary => vocabulary
    )
    relation.save!
    respond_to do |format|
      format.html { redirect_to @related_word, notice: 'Vocabulary was successfully Added.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_related_word
      @related_word = RelatedWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def related_word_params
      params.require(:related_word).permit(:name)
    end
end
