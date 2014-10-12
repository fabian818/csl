class PayDocumentGroup < ActiveRecord::Base
	has_many :pay_documents

	after_create :set_columns

	def set_columns
		self.code = self.id.to_s.rjust(7,'0')
		ruc = Clinic.find(1).ruc
		code = Clinic.find(1).code
		date = Time.now.strftime('%Y%m%d')
		self.date = Time.now.strftime('%Y-%m-%d')
		self.name = 'dfac_'+ruc+'_'+code+'_'+self.code+'_'+date+'.txt'		
		self.save
	end

	def print
		b = BenefitGroup.create(code: self.code, date: self.date)
		self.pay_documents.each do |p|
			ben_id = p.benefit.id
			my_ben = Benefit.find(ben_id)
			my_ben.benefit_group_id = b.id
			my_ben.save
		end
		Dir.mkdir "C:/prueba/tedef/"+self.code
		File.open("C:/prueba/tedef/"+self.code+"/"+self.name, 'w') do |f| 
			self.pay_documents.all.each do |p|
				begin
					f.puts (get_string_line(p)+"\n")
				rescue Exception => e
					puts e.backtrace
				end				
			end  			
		end 
	end

	def get_string_line(p)
		clinic = Clinic.find(1)
		date = Time.now.strftime('%Y%m%d')
		time = Time.now.strftime('%H%M%S')
		lot = p.pay_document_group.code.rjust(7, 'X')
		insurance_code = p.insurance_code.rjust(5,'X')
		#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		clinic_ruc = clinic.ruc.to_s.rjust(11,'X')
		clinic_code = clinic.code.to_s.rjust(7,'X')
		document_type = '01'
		#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		document_code = p.code.to_s.rjust(12,'X')
		emission_date = p.emission_date.strftime('%Y%m%d').to_s.rjust(8, 'X')
		product_code = p.product_code.rjust(5,' ')
		quantity = '00001'
		mechanism_code = p.mechanism_code
		sub_mechanism_code = p.sub_mechanism_code
		pre_agreed = "0.00".rjust(12, ' ')
		date_pre_agreed = (" "*8).to_s
		money_code = p.money_code.to_s.rjust(1,'X')
		medicine_exonerated = ("%.2f" % p.amount_medicine_exonerated.to_f).to_s.rjust(12, '0')
		if p.amount_medicine_exonerated.nil?
			medicine_exonerated = "0.00"
		end
		cop_fijo = ("%.2f" % p.total_cop_fijo.to_s).rjust(12,' ')
		cop_var = ("%.2f" % p.total_cop_var.to_s).rjust(12,' ')
		net_amount = ("%.2f" % p.net_amount.to_s).rjust(12,' ')
		igv = ("%.2f" % p.total_igv.to_s).rjust(12,' ')
		total_amount = ("%.2f" % p.total_amount.to_s).rjust(12,' ')
		note_type_code = 'N'
		note_code = (" "*12).to_s
		note_amount = (" "*12).to_s
		note_date = (" "*8).to_s
		reason_code = " ".to_s
		date_send = (" "*8).to_s
		indicator_global_code = 'N'
		return date+time+lot+insurance_code+clinic_ruc.to_s+clinic_code.to_s+document_type.to_s+document_code.to_s+emission_date+product_code+quantity+mechanism_code+sub_mechanism_code+pre_agreed+date_pre_agreed+money_code+medicine_exonerated+cop_fijo+cop_var+net_amount+igv+total_amount+note_type_code+note_code+note_amount+note_date+reason_code+date_send+indicator_global_code
	end
end
