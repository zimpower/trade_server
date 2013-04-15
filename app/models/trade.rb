class Trade
  include Mongoid::Document
  field :rss_guid, type: String
  field :dtcc_id, type: String
  field :orig_dtcc_id, type: String
  field :title, type: String
  field :pub_date, type: Time
  field :asset, type: String
  field :taxonomy, type: String
  field :time_stamp, type: String
  field :status, type: Trade
  field :und, type: String
  field :acc, type: String
  field :und_not, type: Numeric 
  field :acc_not, type: Numeric 
  field :expiry, type: Time 
  field :strike, type: Numeric
  field :type, type: String
  field :prem_ccy, type: String
  field :prem, type: Numeric
end
