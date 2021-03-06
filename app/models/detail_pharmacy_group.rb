class DetailPharmacyGroup < ActiveRecord::Base
	has_many :detail_pharmacies

	after_create :set_columns

	@@lotes_path = '/home/fabian/facturacion/Lotes/'
	
	def set_columns
		ruc = Clinic.find(1).ruc
		code = Clinic.find(1).code
		self.name = 'dfar_'+ruc+'_'+code+'_'+self.code+'_'+self.date.strftime('%Y%m%d')+'.txt'
		self.save
	end

	def print
=begin
		File.open("/home/and/Desktop/andpc/tedef/"+self.code+"/"+self.name, 'w') do |f|
			f.puts (get_line(self.detail_pharmacies.all))
		end
=end
		File.open(@@lotes_path+self.code+"/"+self.name, 'w') do |f|
			begin
				f.puts (self.get_line)
			end			
		end
	end

	def get_line
		string_return = ''
		self.detail_pharmacies.includes(:benefit).each do |dp|
			clinic_ruc = dp.clinic_ruc
			clinic_code = dp.clinic_code
			payment_type_document = dp.document_type_code
			payment_document = dp.document_number
			correlative_benefit = '00001'
			correlative = dp.correlative.to_s.rjust(4, '0')
			type_code = dp.type_code 
			sunasa_code = dp.sunasa_code
			digemid_code = dp.digemid_code.ljust(6, ' ')
			ean_code = dp.ean_code
			if dp.type_code == 'I'
				sunasa_code = '01'.ljust(11,' ')
				digemid_code = ' '*6
				ean_code = ' '*13
			end
			if dp.type_code == 'O'
				sunasa_code = ' '*11
				digemid_code = ' '*6
				ean_code = ' '*13
			end
			date = dp.date.strftime('%Y%m%d')
			quantity = ("%.2f" % dp.quantity.to_f).to_s.rjust(7,' ')
		 	unitary = ("%.2f" % dp.unitary).rjust(12, ' ')
		 	copayment = ("%.2f" % dp.copayment).rjust(12, ' ')
		 	amount = ("%.2f" % dp.amount).rjust(12, ' ')
		 	amount_not_covered = ("%.2f" % dp.amount_not_covered).rjust(12, ' ')
		 	diagnostic = dp.benefit.first_diagnostic.ljust(5, ' ')
		 	if dp.benefit.first_diagnostic.nil? or dp.benefit.first_diagnostic == ''
				diagnostic = "XXX.X"
			end
		 	exented_code = dp.exented_code
		 	pharm_guide = dp.pharm_guide.rjust(12, '0')
		 	string_return = string_return << clinic_ruc+clinic_code+payment_type_document+payment_document+correlative_benefit+correlative+type_code+sunasa_code+digemid_code+ean_code+date+quantity+unitary+copayment+amount+amount_not_covered+diagnostic+exented_code+pharm_guide + "\r\n"
		end
		return string_return
	end
end