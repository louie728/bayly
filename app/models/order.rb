require 'builder'

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer
  has_many :order_lines

  def to_xml4ord(options={})
    #call me with option :indent=>2 so I look nice and formatted
    xml = options[:builder] || ::Builder::XmlMarkup.new(options)
    xml.instruct! unless options[:skip_instruct]
    xml.ORDER do
      xml.tag!(:ODATE,created_at.strftime("%Y%m%d"))
      xml.tag!(:CUSTNO,self.user.customer.cusnumber)
      xml.tag!(:EMAIL,self.user.email)
      xml.tag!(:INVNO,id)

      totalorder = 0
      self.order_lines.each{|s| totalorder += ((s.qty||1)*s.price_in_cents)}
      totalorder = totalorder.to_money/100

      xml.tag!(:TOTALCHARGE,totalorder)
      # TODO Po is now a literal
      xml.tag!(:PONUMBER,self.po)

      # TODO Bill To is now a literal
      #if self.customer_id != self.billto
        xml.tag!(:BILLTO,"1")
      #else
      #  xml.tag!(:BILLTO,"")
      #end
      # TODO comment is now a literal
      if !self.comments.to_s.blank?
        xml.tag!(:NOTEFLG ,"W")
        xml.tag!(:COM,self.comments)
      end

      last_seq_used = 0

      seq = 1
      lins = self.order_lines
      line_note_written = false

      lins.each do |lin|

        xml.LINE do
          xml.tag!(:SEQ,seq)
          xml.tag!(:QTY,lin.qty||1)
          xml.tag!(:PRICE,!lin.price_in_cents.nil? ?
              (lin.price_in_cents).to_money/100 : 0)
          #Changed Totaling End-LA
          xml.tag!(:STOCKNO,lin.product.item_no)
          xml.tag!(:D1,lin.product.desc)
          xml.tag!(:D2,lin.product.add_desc)
        end
        last_seq_used = seq
        seq += 2
      end
    end

  end


end
