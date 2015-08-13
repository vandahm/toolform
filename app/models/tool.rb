class Tool
  include ActiveModel::Model
  attr_accessor :name, :area, :owner, :make, :model, :training_requirements, :status, :link_to_manual, :link_to_image, :intro, :description

  ZONES = {
    artifactory: 'Artifactory',
    classroom: 'Classroom',
    laserroom: 'Laser Room',
    machineshop: 'Machine Shop',
    metalshop: 'Metal Shop',
    woodshop: 'Wood Shop'
  }

  def training_requirements_in_words
    # none
    # training
    # authorization
    case training_requirements
    when 'none'
      'None'
    when 'training'
      'Training Required'
    when 'authorization'
      'Authorization from Shop Management'
    end
  end

  def status_in_words
    case status
    when 'works'
      'Operational'
    when 'borked'
      'Broken'
    when 'repair'
      'Broken, but under repair'
    end
  end

  def area_in_words
    Tool::ZONES[self.area.to_sym]
  end
end
