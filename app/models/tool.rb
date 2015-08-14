class Tool
  include ActiveModel::Model

  # Basic Information
  attr_accessor :name, :intro, :owner, :make, :model

  # Authorization
  attr_accessor :training_requirements

  # Status
  attr_accessor :area, :status

  # Assets
  attr_accessor :link_to_image, :link_to_manual

  # Text
  attr_accessor :description, :safety, :instructions, :maintenance, :additional_info, :cleanup

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
