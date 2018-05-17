class SiteController < ApplicationController
  layout 'site'
  require 'nokogiri'
  require 'open-uri'

  def index
    #Sliders
    @sliders = Slider.all
    @block_comofunciona = Block.friendly.find('como-funciona')
    @block_laudos = Block.friendly.find('laudos-a-distancia')
    @solutions = Solution.all
    @block_noticias = Block.friendly.find('bloco-solicite-orcamento-noticias')
    @partners = Partner.all
    @block_diferencial = Block.friendly.find('bloco-nosso-diferencial')
    @companies = Company.all

    #Notícias
    doc = Nokogiri::XML(open('https://pebmed.com.br/feed/'))
    news = Hash.from_xml(doc.to_s)
    @author = news['rss']['channel']['title']
    @link = news['rss']['channel']['link']
    @news = news['rss']['channel']['item']
  end

  def about
    @doctors = Staff.all
    @structures = Structure.all
    @block_sobre = Block.friendly.find('sobre-a-digitalrad-f11c0176-b6b1-4428-88ca-8d974ae341a5')
  end

  def report
    @reports = Report.all
  end

  def cases
    @cases = Case.all
  end

  def contact
    @block_address = Block.friendly.find('endereco')
    @block_info = Block.friendly.find('informacoes')
  end

  def news

    #puts news.to_json
    # @posts = (doc/:channel/:item)
    #   @posts.each do |post|
    #     puts post.xpath('//description')
    #   end
    # @doc = doc.xpath('//channel').each do |char_element|

      # @doc = char_element.item

     # end





  end
end
