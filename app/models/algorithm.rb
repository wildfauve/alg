class Algorithm
  
  
  include Wisper::Publisher
  
  include Mongoid::Document
  include Mongoid::Timestamps  

  field :name, type: String 
  field :desc, type: String

  
  def create_me(alg: nil)
    update_attrs(alg: alg)
    self.save
    publish(:successful_alg_create_event, self)
  end

  def update_me(alg: nil)
    update_attrs(alg: alg)
    self.save
    publish(:successful_alg_update_event, self)
  end
  
  def update_attrs(alg: nil)
    self.name = alg[:name]
    self.desc = alg[:desc]
  end
  
    
end
