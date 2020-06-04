class RecruitmentsController < ApplicationController
    before_action :set_recruitment, only: [:show, :edit, :update]
    def index
        @recruitment = Recruitment.all
      end
      def new
        @recruitment = Recruitment.new
      end
      def create
        @recruitment = Recruitment.new(recruitment_params)
        if @recruitment.save
          redirect_to recruitment_path, notice: "ブログを作成しました！"
        else
          render :new
        end
      end
      def show
      end
      def edit
      end
      def update
        if @recruitment.update(recruitment_params)
          redirect_to recruitments_path, notice: "ブログを編集しました！"
        else
          render :edit
        end
      end
      private
      def recruitment_params
        params.require(:blog).permit(:title, :content)
      end
      # idをキーとして値を取得するメソッドを追加
      def set_recruitment
        @recruitment = Recruitment.find(params[:id])
      end
end
