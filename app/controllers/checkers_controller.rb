class CheckersController < ApplicationController
  # GET /checkers
  # GET /checkers.json
  require 'nokogiri'
  require 'open-uri'

  def index
    @checkers = Checker.all

    @checkers.each do |checker|
      old_status = checker.item_status
      doc = Nokogiri::HTML(open(checker.url))
      if doc.at_css(checker.positive_selector)
        doc.at_css(checker.positive_selector).text
        unless old_status == true
          UserMailer.xbox_is_at(User.first, @checker).deliver
          checker.item_status = true
        end
      else
        unless old_status == false
          UserMailer.xbox_out_at(User.first, checker).deliver
          checker.item_status = false
        end
      end
      checker.save
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkers }
    end
  end

  # GET /checkers/1
  # GET /checkers/1.json
  def show
    @checker = Checker.find(params[:id])
    #

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checker }
    end
  end

  # GET /checkers/new
  # GET /checkers/new.json
  def new
    @checker = Checker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checker }
    end
  end

  # GET /checkers/1/edit
  def edit
    @checker = Checker.find(params[:id])
  end

  # POST /checkers
  # POST /checkers.json
  def create
    @checker = Checker.new(params[:checker])

    respond_to do |format|
      if @checker.save
        format.html { redirect_to @checker, notice: 'Checker was successfully created.' }
        format.json { render json: @checker, status: :created, location: @checker }
      else
        format.html { render action: "new" }
        format.json { render json: @checker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checkers/1
  # PUT /checkers/1.json
  def update
    @checker = Checker.find(params[:id])

    respond_to do |format|
      if @checker.update_attributes(params[:checker])
        format.html { redirect_to @checker, notice: 'Checker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkers/1
  # DELETE /checkers/1.json
  def destroy
    @checker = Checker.find(params[:id])
    @checker.destroy

    respond_to do |format|
      format.html { redirect_to checkers_url }
      format.json { head :no_content }
    end
  end
end
