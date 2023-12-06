# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_reader :text, :path, :className, :theme

  THEMES = {
    dark: "btn-dark",
    light: "btn-light"
  }.freeze

  def initialize(text, path, className: "", theme: "dark")
    @text = text
    @path = path
    @className = className
  end

  def classes
    ["btn"].tap do |css|
      if @theme
        
      end
    end

  end

  def call
    button_to @text, @path, method: :delete, class: classes
  end
end
