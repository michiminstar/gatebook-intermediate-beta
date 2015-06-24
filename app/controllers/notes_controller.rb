class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes=Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note, notice: '保存に成功しました！'
    else
      render :new
    end 
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: '更新に成功しました！'
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: '投稿を削除しました。'
  end

  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :content, :user_id)
    end
end
