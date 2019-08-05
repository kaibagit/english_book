class VocabulariesController < ApplicationController
  before_action :set_vocabulary, only: [:show, :edit, :update, :destroy, :start_link_phrase, :link_phrase]

  # GET /vocabularies
  # GET /vocabularies.json
  def index
    @vocabularies = Vocabulary.where( :kind => 'word').order("id DESC")
  end

  # GET /vocabularies/1
  # GET /vocabularies/1.json
  def show
  end

  # GET /vocabularies/new
  def new
    @vocabulary = Vocabulary.new
  end

  # GET /vocabularies/1/edit
  def edit
  end

  # POST /vocabularies
  # POST /vocabularies.json
  def create
    @vocabulary = Vocabulary.new(vocabulary_params)

    respond_to do |format|
      if @vocabulary.save
        format.html { redirect_to @vocabulary, notice: 'Vocabulary was successfully created.' }
        format.json { render :show, status: :created, location: @vocabulary }
      else
        format.html { render :new }
        format.json { render json: @vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vocabularies/1
  # PATCH/PUT /vocabularies/1.json
  def update
    respond_to do |format|
      if @vocabulary.update(vocabulary_params)
        format.html { redirect_to @vocabulary, notice: 'Vocabulary was successfully updated.' }
        format.json { render :show, status: :ok, location: @vocabulary }
      else
        format.html { render :edit }
        format.json { render json: @vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vocabularies/1
  # DELETE /vocabularies/1.json
  def destroy
    @vocabulary.destroy
    respond_to do |format|
      format.html { redirect_to vocabularies_url, notice: 'Vocabulary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def start_link_phrase
  end

  def link_phrase
    word_group = Vocabulary.find_by_content (params[:phrase])
    phrase = Phrase.new(
       :word => @vocabulary,
       :word_group => word_group
    )
    phrase.save!
    respond_to do |format|
      format.html { redirect_to @vocabulary, notice: '与#{word_group.content}关联成功' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vocabulary
      @vocabulary = Vocabulary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vocabulary_params
      params.require(:vocabulary).permit(:content, :kind, :soundmark)
    end
end
