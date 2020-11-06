# frozen_string_literal: true

class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
    @backers << backer
    backer.backed_projects << self
  end
  end
