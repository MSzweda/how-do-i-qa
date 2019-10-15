class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:test_4]
  before_action :authenticate_user!, only: [:test_5]

  def test_0
  end

  def test_1
  end

  def test_2
    if params[:commit] == 'Submit'
      @test_form = DataContainers::TestForm.new(params)
      if @test_form.valid?
        flash.now[:notice] = 'Submitted successfully'
      else
        flash.now[:alert] = 'Some data was missing'
      end
    end
  end

  def test_3
  end

  def test_4
    if params[:trigger].present?
      render json: { response_text: 'This is answer from the server' }
    end
  end

  def test_5
  end

  def test_6
    @countries = SomeModule::Country.all
  end

end
