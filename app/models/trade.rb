class Trade
  include Mongoid::Document
  field :rss_guid, type: String
  field :dtcc_id, type: String
  field :orig_dtcc_id, type: String
  field :title, type: String
  field :pub_date, type: Hash
  field :asset, type: String
  field :taxonomy, type: String
  field :time_stamp, type: Hash
  field :status, type: Trade
  field :und, type: String
  field :acc, type: String
  field :und_not, type: Numeric 
  field :acc_not, type: Numeric 
  field :expiry, type: Hash 
  field :strike, type: Numeric
  field :type, type: String
  field :prem_ccy, type: String
  field :prem, type: Numeric
  field :m_spot_ref, type: Numeric
  field :m_usd_equiv_not, type: Numeric
  
  
  def hash_to_date(h)                 # => expect {"d" => "2001-12-29","t" => "15:30:12"} 
    str = "#{h['d']} #{h['t']}"       # => make "2001-12-29 15:30:12"
    ret = Time.parse(str).utc
  end
  
end
