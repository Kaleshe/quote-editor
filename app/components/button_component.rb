# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_reader :text, :path, :extra_classes, :theme, :link, :method

  THEMES = {
    dark: "btn--dark",
    light: "btn--light"
  }.freeze

  def initialize(text:, path:, classes: "", theme: :dark, link: false, method: nil)
    @text = text
    @path = path
    @classes = classes
    @theme = theme
  end

  def css_classes
    ["btn", THEMES[@theme], @classes].compact.join(" ")
  end

  def call
    if @link
      link_to @text, @path, method: @method, class: css_classes
    else
      button_to @text, @path, method: @method, class: css_classes
    end
  end
end
