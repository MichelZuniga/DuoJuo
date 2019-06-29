class Api::SkillsController < ApplicationController 
    def index
        @skill = Skill.all
    end

    def show
        @skill = Skill.find(skill_params[:id])
        render :show
    end

    def create
        @skill = Skill.new(skill_params)
        
        if @skill.save
            render :show    
        end
    end
    
    def update

    end

    def skill_params 
        params.require(:skill).permit(:language_data_id, :language_string, :url_title, :language_mini, :skill_level, :disabled, :locked)
    end
end