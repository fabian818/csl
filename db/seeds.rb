# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
TedefArea.create(name: 'Honorarios y procedimientos')
TedefArea.create(name: 'Procedimientos odontólogicos')
TedefArea.create(name: 'Hotelería, servicio clínico y tópico ')
TedefArea.create(name: 'Exámenes auxiliares de laboratorio')
TedefArea.create(name: 'Exámenes auxiliares por imágenes')
TedefArea.create(name: 'Prótesis')
TedefArea.create(name: 'Medicamentos exonerados de IGV')
TedefArea.create(name: 'Otras prestaciones de Salud')

ClinicArea.create(name: 'HON.QX - Quirúrgicos', tedef_area_id: 1)
ClinicArea.create(name: 'Cons - Tópicos', tedef_area_id: 3)
ClinicArea.create(name: 'Proced - Procedimientos clínicos', tedef_area_id: 3)
ClinicArea.create(name: 'Labor - Laboratorio', tedef_area_id: 4)
ClinicArea.create(name: 'RX X - Rayos X', tedef_area_id: 5)
ClinicArea.create(name: 'ECO - Ecografías', tedef_area_id: 5)
ClinicArea.create(name: 'TAC - Tomografía axial computarizada', tedef_area_id: 5)
ClinicArea.create(name: 'Odonto - Procedimientos Odontológicos', tedef_area_id: 2)

Area.create(name: 'Admisión')
Area.create(name: 'Caja')
Area.create(name: 'Farmacia')
Area.create(name: 'Laboratorio')
Area.create(name: 'Imágenes')
Area.create(name: 'Facturación')
Area.create(name: 'Administración')
Area.create(name: 'Sistemas')



Employee.create(name: 'Fabian', paternal: 'Peña', maternal: 'Jacobo', username: 'sis_fabian', password: '123456', area_id: 8)
Employee.create(name: 'Marivel', paternal: 'Torres', maternal: 'Torres', username: 'adm_marivel', password: '123456', area_id: 7)



[11,12,15,16].each do |i|
	Factor.create(insurance_id: i, clinic_area_id: 1, factor: 6)
	7.times do |j|
		Factor.create(insurance_id: i, clinic_area_id: (j+2).to_i, factor: 5)	
	end
end


IndicatorGlobal.create(name: 'Inidividual', code: 'N')
IndicatorGlobal.create(name: 'Global', code: 'S')


PayDocumentType.create(code: '01', name: 'Factura')
PayDocumentType.create(code: '02', name: 'Recibo por honorarios')
PayDocumentType.create(code: '03', name: 'Boleta de venta')
PayDocumentType.create(code: '04', name: 'Liquidación de compra')
PayDocumentType.create(code: '05', name: 'Boleto de aviación comercial para transporte de pasajeros')
PayDocumentType.create(code: '06', name: 'Nota de crédito')
PayDocumentType.create(code: '07', name: 'Nota de débito')
PayDocumentType.create(code: '08', name: 'Ticket o cinta emitida por máquina registradora')
PayDocumentType.create(code: '99', name: 'Otros documentos asignados por la sunat')


a = AfiliationType.find(1)
a.fac_code = '1'
a.save
a = AfiliationType.find(2)
a.fac_code = '3'
a.save
a = AfiliationType.find(3)
a.fac_code = '2'
a.save

DocumentType.create(code: '01', name: 'Solicitud de Atención Médica (Solicitud de Beneficio) / SITEDS')
DocumentType.create(code: '02', name: 'Solicitud de Chequeo Médico / SITEDS')
DocumentType.create(code: '03', name: 'Carta de Garantía')
DocumentType.create(code: '04', name: 'Por código')
DocumentType.create(code: '05', name: 'Voucher')
DocumentType.create(code: '06', name: 'Otro tipo de de Autorización')
DocumentType.create(code: '07', name: 'Declaración accidente')
DocumentType.create(code: '99', name: 'No aplica')


HospitalizationType.create(code: 'C', name: 'Hospitalización Clínica, no se efectúa procedimiento quirúrgico.')
HospitalizationType.create(code: 'Q', name: 'Hospitalización Quirúrgica, se efectúa procedimiento quirúrgico o de naturaleza obstétrica (cesáreas)')

HospitalizationOutputType.create(code: '01', name: 'Alta Médica')
HospitalizationOutputType.create(code: '02', name: 'Alta Voluntaria')
HospitalizationOutputType.create(code: '03', name: 'Transferencia a otro establecimiento de la IAFAS')
HospitalizationOutputType.create(code: '04', name: 'Transferencia a ESSALUD')
HospitalizationOutputType.create(code: '05', name: 'Fuga o Abandono')
HospitalizationOutputType.create(code: '06', name: 'Defunción')
HospitalizationOutputType.create(code: '07', name: 'Egreso de facturación (Sigue hospitalizado)')


Clinic.create(code: '', ruc: '20494306043')

[1,2].each do |i|
	a = Insurance.find(i)
	a.ruc = '20431115825'
	a.save
end

[3,8,10,13].each do |i|
	a = Insurance.find(i)
	a.ruc = '20414955020'
	a.save
end
[11,15].each do |i|
	a = Insurance.find(i)
	a.ruc = '20517182673'
	a.save
end

[12,16].each do |i|
	a = Insurance.find(i)
	a.ruc = '20200380621'
	a.save
end

c = Clinic.find(1)
c.code = '101130C'
c.save
Doctor.create(complet_name: 'Rojas Jara Edwin Luciano', document_identity_code: '80015105', tuition_code: '30348')

ServiceExented.create(code: 'A', name: 'Servicio No exonerado de Impuesto')
ServiceExented.create(code: 'D', name: 'Servicio Exonerado de Impuesto')


ProductPharmExented.create(code: 'A', name: 'Producto No exonerado de Impuesto')
ProductPharmExented.create(code: 'D', name: 'Producto Exonerado de Impuesto')


ProductPharmType.create(code: 'C', name: 'Medicamento para el cual se utiliza el catálogo del CUM-SUNASA')
ProductPharmType.create(code: 'R', name: 'Medicamento con receta magistral')
ProductPharmType.create(code: 'I', name: 'Insumo, material médico o prótesis según listado de la SUNASA')
ProductPharmType.create(code: 'O', name: 'Otros productos de farmacia no considerados fármacos, insumos, materiales médicos o insumos')


MechanismPayment.create(code: '01', name: 'PAGO POR SERVICIO')
MechanismPayment.create(code: '02', name: 'PACIENTE MES')
MechanismPayment.create(code: '03', name: 'PAQUETE QUIRÚRGICO')
MechanismPayment.create(code: '04', name: 'CAPITACIÓN')
MechanismPayment.create(code: '06', name: 'PAGO FIJO POR ATENCIÓN')
MechanismPayment.create(code: '99', name: 'OTROS MECANISMO DE PAGO')

Status.create(code: 'T', name: 'Terminado')
Status.create(code: 'N', name: 'No terminado')

Patient.all.each do |p|
	p.is_insured = true
	p.save
end
c = ClinicArea.find(1)
c.name = 'HON QX - Qúirúrgicos'
c.save



Employee.create(name: 'Facturadora', paternal: 'FAFAFA', maternal: 'FAFAFAFA', username: 'fac_facturadora', password: '123456', area_id: 6)

m = Money.find(2)
m.name = 'Soles'
m.save
m2 = Money.find(3)
m2.name = 'Dólares'
m2.save

Service.all.each do |s|
	code = s.code
	p1 = code[0,2]
	p2 = code[2,2]
	p3 = code[4,2]
	s.code = p1 + '.' + p2 + '.' + p3
	s.save
end


[1,2].each do |i|
	8.times do |j|
	Factor.create(insurance_id: i, clinic_area_id: (j+1).to_i, factor: 5.5)	
	end
end

[3,8,10,13].each do |i|
	Factor.create(insurance_id: i, clinic_area_id: 1, factor: 5)	
	7.times do |j|
		Factor.create(insurance_id: i, clinic_area_id: (j+2).to_i, factor: 4.5)	
	end
end

[6].each do |i|
	8.times do |j|
	Factor.create(insurance_id: i, clinic_area_id: (j+1).to_i, factor: 5.3)	
	end
end

[11,12,15,16].each do |i|
	Factor.create(insurance_id: i, clinic_area_id: 1, factor: 6)	
	7.times do |j|
		Factor.create(insurance_id: i, clinic_area_id: (j+2).to_i, factor: 5)	
	end
end
[11,12,15,16].each do |i|
	i = Insurance.find(i)
	i.consultation = 45
	i.save
end

[1,2,6].each do |i|
	i = Insurance.find(i)
	i.consultation = 45
	i.save
end

[3,8,10,13].each do |i|
	i = Insurance.find(i)
	i.consultation = 50
	i.save
end

a = AfiliationType.find(5)
a.fac_code = 5
a.save

b = AfiliationType.find(4)
b.fac_code = 4
b.save


[1,2].each do |i|
	i = Insurance.find(i)
	i.fact_code = '20002'
	i.save
end
[11,15].each do |i|
	i = Insurance.find(i)
	i.fact_code = '20004'
	i.save
end
[12,16,].each do |i|
	i = Insurance.find(i)
	i.fact_code = '40006'
	i.save
end



consulta = Service.where(code: '50.01.01').last
consulta.contable_code = '1'
consulta.contable_name = 'HONORARIOS Y PROCEDIMIENTOS  MÉDICOS Y Q'
consulta.save
CategoryService.where("code in (23,24,'34','36','37','38')").each do |c|
	c.sub_category_services.each do |s|
		s.services.each do |se|
			se.contable_code = '1'
			se.contable_name = 'HONORARIOS Y PROCEDIMIENTOS  MÉDICOS Y Q'
			se.save
		end
	end
end
[18,19,29,30,31,32,34,35].each do |i|
	c = CategoryService.find(i)
	c.sub_category_services.each do |s|
		s.services.each do |se|
			se.contable_code = '1'
			se.contable_name = 'HONORARIOS Y PROCEDIMIENTOS  MÉDICOS Y Q'
			se.save
		end
	end
end
AfiliationType.create()


Service.create(sub_category_service_id: 174, code: '70.01.49',name: 'PEQUEÑAS, ABCESOS, CUERPOS EXTRAÑOS, ETC.', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 0)

PayDocument.all.each do |p|
	b = p.benefit
      b.document_code = p.code
      b.save
      b.detail_services.each do |ds|
        ds.payment_document = p.code
        ds.save
      end
      b.detail_pharmacies.each do |dp|
        dp.document_number = p.code
        dp.save
      end
end

#Corrigiendo DNI's
Benefit.all.each do |b|
	b.document_identity_code = b.document_identity_code[0,8]
	b.save
end

#Creando Área Farmacia

ClinicArea.create(name: 'Farmacia')

#Creando tipos de proveedores
ProviderType.create(code: 'D', name: 'Doctor')
ProviderType.create(code: 'C', name: 'Clínica')
ProviderType.create(code: 'I', name: 'Razón Social Intera')
ProviderType.create(code: 'E', name: 'Razón Social Externa')

#Asignando doctores a proveedoress
Doctor.all.each do |d|
	p = Provider.create(provider_type_id: 1, name: d.complet_name, doctor_id: d.id)
	AreaProvider.create(provider_id: p.id, clinic_area_id: 6)
end


#Asignando a doctor Salinas Area de TAC
AreaProvider.create(provider_id: Doctor.find(5).provider.id, clinic_area_id: 7)

#Creando proveedor clínica
p2 = Provider.create(provider_type_id: 2, name: 'Clínica Señor de Luren', ruc: '20494306043')

#Asignando proveedor clínica a todas las áreas
[6,4,5,7,9,3,2].each do |i|
	AreaProvider.create(provider_id: p2.id, clinic_area_id: i)
end

[6,7,5,3,2].each do |i|
	Provider.where(provider_type_id: 2).each do |pr|
		if pr.doctor.id != 5
			AreaProvider.create(provider_id: pr.id, clinic_area_id: i)			
		end		
	end	
end

Provider.create(provider_type_id: 3, name: 'Grupo RAMCO', ruc: '20494584108')
Provider.create(provider_type_id: 3, name: 'Adminsa', ruc: '20534823500')
Provider.create(provider_type_id: 3, name: 'Magalab', ruc: '20494212570')

#Agregando a Ramco en farmacia y rayos X
AreaProvider.create(provider_id: Provider.find_by_ruc('20494584108').id, clinic_area_id: 5)
AreaProvider.create(provider_id: Provider.find_by_ruc('20494584108').id, clinic_area_id: 9)

#Agregando Adminsa a Ecografía
AreaProvider.create(provider_id: Provider.find_by_ruc('20534823500').id, clinic_area_id: 6)

#Agregando Magalab a Laboratorio
AreaProvider.create(provider_id: Provider.find_by_ruc('20494212570').id, clinic_area_id: 4)
<%= form_tag(print_excel_path, method: 'post', role: 'form') do %>
		<%= hidden_field_tag :authorization_id, @authorization.id %>
		<%= submit_tag 'Prueba excel' %>
	<% end %>
Benefit.all.each do |b|
	b.document_identity_code = b.document_identity_code[0,8]
	b.save
end
x = AuthorizationType.create(name: 'Siteds', code: 'X')
AuthorizationType.create(name: 'SCTR', code: 'A')
AuthorizationType.create(name: 'Carta de Garantía', code: 'C')
AuthorizationType.create(name: 'Salud ocupacional', code: 'O')
AuthorizationType.create(name: 'SOAT', code: 'S')
AuthorizationType.create(name: 'Llamada', code: 'L')
AuthorizationType.create(name: 'Particular', code: 'P')

Authorization.all.each do |a|
	a.authorization_type_id = 1
	a.save
end


Doctor.create(tuition_code: '52585', document_identity_type_id: 1, document_identity_code: '41419376', complet_name: 'GRADOS TELLO CECILIA')
Doctor.create(tuition_code: '12723', document_identity_type_id: 1, document_identity_code: '09775779', complet_name: 'VILCA JABO JESUS ERNESTO')


Employee.create(name: 'Betsy', paternal: 'Bendezú', maternal: 'Sarcines', username: 'fac_betsy', password: '123456', area_id: 8)

Doctor.create(tuition_code: '32919', document_identity_type_id: 1, document_identity_code: '21562123', complet_name: 'RAMIREZ CASTRO JULIA')
Product.create(code: '99999', name: 'NO APLICA')




DetailService.all.each do |d|
	if d.service_code == '50.01.01' or d.service_code == '50.02.03' or d.service_code == '50.02.06'
		d.purchase_code = 'C'
	else
		d.purchase_code = 'S'
	end
	d.save
end


Product.all.each do |p|
	if p.code.length == 1 and p.id != 65 and p.id != 76 and p.id != 77
		p.code = '0' + p.code
		p.save
	end
end

def numeric?(string)
    Float(string) != nil rescue false
  end


PayDocument.all.each do |p|
	if p.product_code.length == 1
		p.product_code = '0' + p.product_code
		p.save
	end
end


PharmTypeSale.create(code: 'I', name: 'Insumos')
PharmTypeSale.create(code: 'F', name: 'Fármacos')

===================================



===============================

Employee.create(name: 'María de los Angeles', paternal: 'Granado', maternal: 'Barbosa', username: 'farm_maria', password: '123456', area_id: 3)
Employee.create(name: 'Nadia', paternal: 'Acuña', maternal: 'Aquije', username: 'farm_nadia', password: '123456', area_id: 3)
Employee.create(name: 'Pamela', paternal: 'Maldonado', maternal: 'Mayurí', username: 'farm_pamela', password: '123456', area_id: 3)
Employee.create(name: 'María Elizabeth', paternal: 'Castillo', maternal: 'Sanchez', username: 'farm_elizabeth', password: '123456', area_id: 3)
Employee.create(name: 'Diana Carolina', paternal: 'Allcahuaman', maternal: 'Huancahuari', username: 'farm_diana', password: '123456', area_id: 3)
Employee.create(name: 'Osmar José', paternal: 'Ramirez', maternal: 'Coca', username: 'farm_osmar', password: '123456', area_id: 3)
Employee.create(name: 'Gustavo', paternal: 'Ramirez', maternal: 'Coca', username: 'farm_gustavo', password: '123456', area_id: 3)
Employee.create(name: 'Javier', paternal: 'Ramirez', maternal: 'Coca', username: 'farm_javier', password: '123456', area_id: 3




	#Creando Área Farmacia

ClinicArea.create(name: 'Farmacia')

#Creando tipos de proveedores
ProviderType.create(code: 'D', name: 'Doctor')
ProviderType.create(code: 'C', name: 'Clínica')
ProviderType.create(code: 'I', name: 'Razón Social Intera')
ProviderType.create(code: 'E', name: 'Razón Social Externa')

#Asignando doctores a proveedoress
Doctor.all.each do |d|
	p = Provider.create(provider_type_id: 1, name: d.complet_name, doctor_id: d.id)
	AreaProvider.create(provider_id: p.id, clinic_area_id: 6)
end


#Asignando a doctor Salinas Area de TAC
AreaProvider.create(provider_id: Doctor.find(5).provider.id, clinic_area_id: 7)

#Creando proveedor clínica
p2 = Provider.create(provider_type_id: 2, name: 'Clínica Señor de Luren', ruc: '20494306043')

#Asignando proveedor clínica a todas las áreas
[6,4,5,7,9,3,2].each do |i|
	AreaProvider.create(provider_id: p2.id, clinic_area_id: i)
end



[6,7,5,3,2].each do |i|
	Provider.where(provider_type_id: 1).each do |pr|
		if pr.doctor.id != 5
			AreaProvider.create(provider_id: pr.id, clinic_area_id: i)			
		end		
	end	
end

Provider.create(provider_type_id: 3, name: 'Grupo RAMCO', ruc: '20494584108')
Provider.create(provider_type_id: 3, name: 'Administradora de Inversiones', ruc: '20534823500')
Provider.create(provider_type_id: 3, name: 'Magalab', ruc: '20494212570')

#Agregando a Ramco en farmacia y rayos X
AreaProvider.create(provider_id: Provider.find_by_ruc('20494584108').id, clinic_area_id: 5)
AreaProvider.create(provider_id: Provider.find_by_ruc('20494584108').id, clinic_area_id: 9)

Authorization.all.each do |a|
	a.authorization_type_id = 1
	a.save
end
#Agregando Adminsa a Ecografía
AreaProvider.create(provider_id: Provider.find_by_ruc('20534823500').id, clinic_area_id: 6)

#Agregando Magalab a Laboratorio
AreaProvider.create(provider_id: Provider.find_by_ruc('20494212570').id, clinic_area_id: 4)



PayDocumentGroup.all.each do |pg|
	insurance_ruc = pg.pay_documents.last.insurance_ruc
	pg.insurance_ruc = insurance_ruc
	pg.save
end


Doctor.create(complet_name: 'Claros Zambrano Teresa Maribel', document_identity_code: '21564970', tuition_code: '20730')
[109,139,142,143].each do |i|
	pg = PayDocumentGroup.find(i)
	pg.init_date = '2014-10-04'
	pg.end_date = '2014-10-06'
	pg.save
end
Employee.create(name: 'Reyna Consuelo', paternal: 'Palomino', maternal: 'Matta', username: 'adm_reyna', password: '123456', area_id: 7)
e = Employee.find_by_username('farm_nadia')
e.password = 'MILENA120425'
e.save
Service.create(name: 'BLOQUEO PARAVERTEBRAL DE TRONCO CERVICAL / TORACICO / LUMBAR', code: '22.04.03' , sub_category_service_id: s.id, 	contable_code: '1', contable_name: 'HONORARIOS Y PROCEDIMIENTOS MÉDICOS Y Q', clinic_area_id: 1, unitary: 12)


Service.create(name: 'RETIRO DE YESO', code: '12.02.22', sub_category_service_id: 58, contable_code: '1', contable_name: 'HONORARIOS Y PROCEDIMIENTOS MÉDICOS Y Q', clinic_area_id: 1, unitary: 10)

AuthorizationType.create(name: 'Accidentes Personales', code: 'T')

pay_documents = PayDocument.where(emission_date: "2014-11-17")
pay_documents.each do |p|
	a = p.authorization
	date = a.date.strftime("%Y-%m-%d")
	b = p.benefit
	b.date = date
	b.save
end
marmolejo legua 32669
Doctor.create(tuition_code: '025943', document_identity_type_id: 1, document_identity_code: '10183332', complet_name: 'MARTIN GUSTAVO GUERRERO CHONG')


Doctor.create(tuition_code: '32669', document_identity_type_id: 1, document_identity_code: '70450477', complet_name: 'MARMOLEJO LEGUA YARITZA CAROLINA')


p = PayDocumentGroup.find(84)
p.init_date = '2014-10-23'
p.end_date = '2014-10-27'
p.save
PayDocument.all.each do |p|
	p.status = 'N'
	p.save
end
<<<<<<< HEAD



PharmTypeSale.create(code: 'I', name: 'Insumos')
PharmTypeSale.create(code: 'F', name: 'Fármacos')
PayDocumentGroup.find(207).pay_documents.each do |p|
	p.product_code = 'S'
	p.save
end

Employee.create(name: 'Admision', paternal: 'Admision', maternal: 'Admision', username: 'admision_prueba', password: '123456', area_id: 1)
Service.create(sub_category_service_id: 174, code: '60.01.24',name: 'SERVICIO DE TRASLADO EN AMBULANCIA', contable_code: '9', contable_name: 'OTROS', clinic_area_id: 2, unitary: 0)
fact
Service.create(sub_category_service_id: 174, code: '60.01.24',name: 'APLICACIÓN DE SELLANTES', contable_code: '2', contable_name: 'PROCEDIMIENTOS ODONTOLOGICOS', clinic_area_id: 8, unitary: 0)


['114828','114829', '114830', '114831', '114832', '114833', '114738', '114737', '114736', '114368', '114620', '114695', '114850', '114847', '114587', '114603', '114525', '114815', '114803', '114784', '114775', '114602', '114625', '114624'].each do |l|
	InsuredPharmacy.joins(authorization: {patient: {insured: :insurance}}).where('insured_pharmacies.liquidation = "'+l+'"').each do |i|
		unless i.authorization.coverage.nil?
			i.purchase_insured_pharmacies.each do |p|
				p.without_igv = 0
				p.first_copayment = 0
				p.initial_amount = 0
				p.igv = 0
				p.final_amount = 0
				factor = 1.475
				vari = p.unitary
				p.unitary = ((vari).to_f * factor.to_f).round(2)
				p.without_igv = (((p.quantity * (p.unitary).to_f).round(2))/1.18).round(2)
				p.first_copayment = (p.without_igv * 0.2).round(2)
				p.initial_amount = (p.without_igv - p.first_copayment).round(2)
				p.copayment = (p.initial_amount * (100 - InsuredPharmacy.find(p.insured_pharmacy.id).authorization.coverage.cop_var)/100).round(2)
				if p.product_pharm_exented_id == 1
		        	p.igv = (p.copayment * 0.18).round(2)
		    	else
		    		p.igv = 0
		    	end
		      	p.ean_product_id = 0
		      	p.cum_sunasa_product_id = 0
		    	p.final_amount = (p.copayment + p.igv).round(2)
		    	p.save
			end
			i.is_closed = true
			i.without_igv = 0
			i.first_copayment = 0
			i.initial_amount = 0
			i.copayment = 0
			i.igv = 0
			i.final_amount = 0
		  	i.purchase_insured_pharmacies.each do |p|
		    	i.without_igv = i.without_igv.to_f + p.without_igv
		    	i.first_copayment = i.first_copayment.to_f + p.first_copayment
		  		i.initial_amount = i.initial_amount.to_f + p.initial_amount.to_f
		  		i.copayment= i.copayment.to_f + p.copayment.to_f
		  		i.igv = i.igv.to_f + p.igv.to_f
		  		i.final_amount = i.final_amount.to_f + p.final_amount.to_f
			end
		  	i.save
		end	
	end
end


DetailPharmacy.where('created_at > "2014-12-18"').each do |dp|
	if PurchaseInsuredPharmacy.where(id: dp.index).exists?
		p = PurchaseInsuredPharmacy.find(dp.index)
		dp.unitary = p.initial_amount/p.quantity
	    dp.quantity = p.quantity
	    dp.copayment = p.copayment
	    dp.amount = (dp.unitary * dp.quantity)
	    dp.save
	end	
end

['14843', '114846', '114576', '114618', '114805', '114465', '114469', '114451', '114544', '114527', '114450', '114279', '114193', '114232', '114209', '114683', '114657', '114240', '114292', '114094', '114758', '114746', '114386', '114374'].each do |l|
	InsuredPharmacy.joins(authorization: {patient: {insured: :insurance}}).where('insured_pharmacies.liquidation = "'+l+'"').each do |i|
		unless i.authorization.coverage.nil?
			i.purchase_insured_pharmacies.each do |p|
				var2 = p.unitary.to_f
				factor2 = 1.475
				p.unitary = ((var2).to_f / factor2.to_f).round(2)
				p.without_igv = 0
				p.first_copayment = 0
				p.initial_amount = 0
				p.igv = 0
				p.final_amount = 0
				factor = 1.311111111
				vari = p.unitary
				p.unitary = ((vari).to_f * factor.to_f).round(2)
				p.without_igv = (((p.quantity * (p.unitary).to_f).round(2))/1.18).round(2)
				p.first_copayment = (p.without_igv * 0.2).round(2)
				p.initial_amount = (p.without_igv - p.first_copayment).round(2)
				p.copayment = (p.initial_amount * (100 - InsuredPharmacy.find(p.insured_pharmacy.id).authorization.coverage.cop_var)/100).round(2)
				if p.product_pharm_exented_id == 1
		        	p.igv = (p.copayment * 0.18).round(2)
		    	else
		    		p.igv = 0
		    	end
		      	p.ean_product_id = 0
		      	p.cum_sunasa_product_id = 0
		    	p.final_amount = (p.copayment + p.igv).round(2)
		    	p.save
			end
			i.is_closed = true
			i.without_igv = 0
			i.first_copayment = 0
			i.initial_amount = 0
			i.copayment = 0
			i.igv = 0
			i.final_amount = 0
		  	i.purchase_insured_pharmacies.each do |p|
		    	i.without_igv = i.without_igv.to_f + p.without_igv
		    	i.first_copayment = i.first_copayment.to_f + p.first_copayment
		  		i.initial_amount = i.initial_amount.to_f + p.initial_amount.to_f
		  		i.copayment= i.copayment.to_f + p.copayment.to_f
		  		i.igv = i.igv.to_f + p.igv.to_f
		  		i.final_amount = i.final_amount.to_f + p.final_amount.to_f
			end
		  	i.save
		end	
	end
end

['114375'].each do |l|
	InsuredPharmacy.where(liquidation: l).each do |i|
		i.purchase_insured_pharmacies.each do |p|
			if DetailPharmacy.where(index: p.id).exists?
				dp = DetailPharmacy.find_by_index(p.id)
				dp.unitary = p.initial_amount/p.quantity
			    dp.quantity = p.quantity
			    dp.copayment = p.copayment
			    dp.amount = (dp.unitary * dp.quantity)
			    dp.save
			end			
		end
	end
end
Employee.create(name: 'Carmen', paternal: '', maternal: '', username: 'fac_carmen', password: '123456', area_id: 8)

Employee.create(name: 'Carmen', paternal: '', maternal: '', username: 'fac_carmen', password: '123456', area_id: 6)

Employee.create(name: 'Ruth', paternal: '', maternal: '', username: 'adm_ruth', password: 'MIRIAM1804', area_id: 7)
[1,2,3,4,5,6,7,8,17,18,19,20,21,22,23,24].each do |i|
	if Factor.where(id: i).exists?
		Factor.find(i).destroy
	end
end

Doctor.create(complet_name: 'CASAVILCA ZAMBRANO SANDRO ANGEL', tuition_code: '27255', document_identity_code: '21462728')
Service.create(sub_category_service_id: 174, code: '00.14.91',name: 'TOPICO DE EMERGENCIA POR ATENCION CON REPOSO EN SALA DE OBSERVACION HASTA UNA HORA', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 3.72)
Service.create(sub_category_service_id: 174, code: '00.14.92',name: 'REPOSO EN SALA DE OBSERVACION DE EMERGENCIA A PARTIR DE 2da HORA CADA HORA /MAXIMO 4 HORAS', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 4.07)
Service.create(sub_category_service_id: 174, code: '00.14.93',name: 'REPOSO EN SALA DE OBSERVACION DE EMERGENCIA A PARTIR DE 5ta HORA CADA HORA /MAXIMO 8 HORAS', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 3.73)
Service.create(sub_category_service_id: 174, code: '00.14.42',name: 'TOPICO DE TRAUMATOLOGIA - COLOCACION, CAMBIO, RETIRO, APARATO DE FIJACION - POR ATENCION', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 11.86)
Doctor.create(complet_name: 'AQUIJE ANGULO, JESUS ERNESTO', document_identity_code: '80001616', tuition_code: '56924')
Service.create(sub_category_service_id: 174, code: '25.07.16',name: 'ECO-DOPPLER OBSTETRICO', contable_code: '5', contable_name: 'DIAGNOSTICO X IMAGENES Y OTROS DE AYUDA', clinic_area_id: 6, unitary: 68)
Service.create(sub_category_service_id: 174, code: '25.06.20',name: 'ECO-DOPPLER INGUINO - ESCROTAL', contable_code: '5', contable_name: 'DIAGNOSTICO X IMAGENES Y OTROS DE AYUDA', clinic_area_id: 6, unitary: 68)
Doctor.create(complet_name: 'GOICOCHEA RUIZ VIRGINIA', document_identity_code: '22288541', tuition_code: '30725')
Service.create(sub_category_service_id: 174, code: '00.14.91',name: 'TOPICO DE EMERGENCIA POR ATENCION CON REPOSO EN SALA DE OBSERVACION HASTA UNA HORA', contable_code: '3', contable_name: 'HOTELERÍA, SERVICIO CLINICO Y TOPICO', clinic_area_id: 2, unitary: 3.72)


(72245..72394).each do |i|
	p = Patient.where(id: i)
	if p.exists?
		p.last.destroy
	end
end

(72395..72406).each do |i|
	p = Patient.where(id: i)
	if p.exists?
		pa = p.last
		pa.clinic_history_code = nil
		pa.save	
	end
end
Service.create(sub_category_service_id: 174, code: '11.02.18',name: 'TIROGLOBULINA - DOSAJE', contable_code: '4', contable_name: 'EXAMENES AUXILIARES DE LABORATORIO', clinic_area_id: 4, unitary: 7)
Doctor.create(complet_name: 'CABRERA GHEZZI ROBERTO', document_identity_code: '21545594', tuition_code: '34573')
	
Doctor.where('specialty_name <> "" and specialty_name is not null').each do |d|
	s = Speciality.find_by_name(d.specialty_name)
	d.speciality = s
	d.save
end

Authorization.all.each do |a|
	a.status = Status.find_by_code('O')
	a.save
end

Speciality.create(name: 'GERIATRIA')

Authorization.joins(:patient).where('patients.is_insured is NULL').each do |a|	
	a.date = a.date - 5.hours
	a.save
end
---
---


i = Insurance.create(code: '10001', name: 'Seguro Integral de Salud', consultation: 34, ruc: '20505208626')

[1,3,4,5,6,7].each do |j|
	Factor.create(insurance: i, clinic_area_id: j, factor: 4.14)
end
Factor.create(insurance: i, clinic_area_id: 2, factor: 1)

AuthorizationType.create(code: 'I', name: 'Otro tipo de autorización')


Area.create(name: "Estadística")


Authorization.all.each do |a|
	if a.coverage.nil?
		Coverage.create(authorization: a, sub_coverage_type_id: 270, code: '3', name: 'CONSULTA AMBULATORIA', cop_fijo: 50, cop_var: 10)
	end
end
Employee.create(name: 'ANDREA', paternal: 'JORDAN', maternal: 'MENDOZA', username: 'admision_andrea', password: 'DANNA22', area_id: 1)
Employee.create(name: 'KELIN JEANINA', paternal: 'VILLENA', maternal: 'PATIÑO', username: 'admision_jeanina', password: 'Jekevipa', area_id: 1)
Employee.create(name: 'MAYRA', paternal: 'MATTA', maternal: 'MUÑANTE', username: 'admision_mayra', password: 'MAYRALI', area_id: 1)
Employee.create(name: 'MARIA', paternal: 'ALARCÓN', maternal: 'HUARIPAUCAR', username: 'admision_maria', password: 'MAAHDM', area_id: 1)
Employee.create(name: 'MARIA', paternal: 'ANICAMA', maternal: 'MATTA', username: 'admision_anicama', password: 'Manicama', area_id: 1)
Employee.create(name: 'KATHERINE', paternal: 'FLORES', maternal: 'TORRES', username: 'admision_katherine', password: 'florest', area_id: 1)
Employee.create(name: 'KAREN YSABEL', paternal: 'RAMIREZ', maternal: 'ZARATE', username: 'admision_karen', password: 'KYRZA', area_id: 1)


Employee.create(name: 'Estadística', paternal: '', maternal: '', username: 'estad_prueba', password: '123456', area_id: 9)


InsuredPharmacy.all.each do |i|
	i.date_create = i.created_at.to_date
	i.save
end

Insurance.create(name: 'FOPASEF', consultation: 45, ruc: '20216510365')

Insurance.create(name: 'POSITIVA SEGUROS Y REASEGUROS', consultation: 45, ruc: '20100210909')
Insurance.create(name: 'LA POSITIVA SANITAS S.A. - EPS', consultation: 45, ruc: '20523470761')

i = Insurance.find(22)
8.times do |t|
	i.factors.create(clinic_area_id: t + 1, factor: 4.7)
end

PayDocument.all.update_all(not_export: false)

i = Insurance.find(21)
8.times do |t|
	i.factors.create(clinic_area_id: t + 1, factor: 4.1)
end


i = Insurance.find(14)
8.times do |t|
	i.factors.create(clinic_area_id: t + 1, factor: 4.7)
end


i = Insurance.find(20)
8.times do |t|
	i.factors.create(clinic_area_id: t + 1, factor: 4.5)
end

# Corregir datos de protecta
i = Insurance.create(name: 'PROTECTA S.A. COMPAÑÍA DE SEGUROS', consultation: 45, ruc: '20517207331')


Insurance.all.each do |insurance|
	unless insurance.factors.exists?
		8.times do |t|
			insurance.factors.create(clinic_area_id: t + 1, factor: 1)
		end
	end
end


=
=
=
=



Insurance.where('id >=1 and id <= 16').update_all(show: false)
Insurance.where('id >=17 and id <= 22').update_all(show: true)

Insurance.create(name: 'Rimac Seguros y Reaseguros.', code: '40007', ruc: '20100041953', consultation: 50, address: 'Jr Carpaccio Nº 296 San Borja.')
Insurance.create(name: 'Fondo de Empleados de la SUNAT.', code: '30011', ruc: '20499030810', consultation: 45.0, address: 'Av. Arequipa 1295 dpto. 501, Lima.')
Insurance.create(name: 'Pacífico S.A. EPS.', code: '20002', ruc: '20431115825', consultation: 45.0, address: 'Av. Juan de Arona Nº 830, Lima.')
Insurance.create(name: 'Pacífico Peruana Suiza CIA de Seguros.', code: '40003', ruc: '20100035392', consultation: 45, address: 'Av. Juan de Arona Nº 830, Lima.')
Insurance.create(name: 'Rimac S.A. Entidad Prestadora de Salud.', code: '20001', ruc: '20414955020', consultation: 50, address: 'Jr Carpaccio Nº 296 San Borja.')
Insurance.create(name: 'Mapfre Perú S.A. Entidad Prestadora de Salud.', code: '20004', ruc: '20517182673', consultation: 45, address: 'Av 28 de julio Nº 873 Miraflores')
Insurance.create(name: 'Mapfre Perú Cía de Seguros y Reaseguros.', code: '40006', ruc: '20202380621', consultation: 45, address: 'Av 28 de julio Nº 873 Miraflores.')
# Insurance.create(name: 'FOPASEF.', code: '', ruc: '20216510365', consultation: 45, address: 'Leon Teodoro Cardenas 130 Urb. Santa Beatriz Lima')




Insurance.where(show: true).each do |insurance|
	puts insurance.name
	PayDocument.where(insurance_ruc: insurance.ruc).update_all(insurance_id: insurance.id)
	puts 'success'
end

Employee.create(name: 'Laura', paternal: '', maternal: '', username: 'adm_laura', password: 'L070615', area_id: 7)


Patient.where(sex: 'M').update_all(boolean_sex: true)
Patient.where("sex = 'F'").update_all(boolean_sex: false)
# Patient.where(sex: true).update_all(boolean_sex: true)
# Patient.where(sex: false).update_all(boolean_sex: false)
Patient.where(sex: "true").update_all(boolean_sex: true)
Patient.where(sex: "false").update_all(boolean_sex: false)

AgeGroup.create(code: '1', name: 'Menores de 1')
AgeGroup.create(code: '2', name: 'De 1 a 4 años')
AgeGroup.create(code: '3', name: 'De 5 a 9 años')
AgeGroup.create(code: '4', name: 'De 10 a 14 años')
AgeGroup.create(code: '5', name: 'De 15 a 19 años')
AgeGroup.create(code: '6', name: 'De 20 a 24 años')
AgeGroup.create(code: '7', name: 'De 25 a 29 años')
AgeGroup.create(code: '8', name: 'De 30 a 34 años')
AgeGroup.create(code: '9', name: 'De 35 a 39 años')
AgeGroup.create(code: '10', name: 'De 40 a 44 años')
AgeGroup.create(code: '11', name: 'De 45 a 49 años')
AgeGroup.create(code: '12', name: 'De 50 a 54 años')
AgeGroup.create(code: '13', name: 'De 55 a 59 años')
AgeGroup.create(code: '14', name: 'De 60 a 64 años')
AgeGroup.create(code: '15', name: 'De 65 años a más')


Employee.create(name: 'Elluz Jeaneth', paternal: 'Tamaris', maternal: 'Rojas', username: 'admision_elluz', password: '45417933', area_id: 1)


input_type = InputType.create(name: 'ANESTESIA RAQUIDEA')
[['CLORURO SODIO 9% (BAXTER)', '30.59'], ['EQUIPO DE VENOCLISIS (Intrafix Primeline)', '11.40'], ['CATETER E.V.P.  (B.BRAUN) N° 20', '20.47'], ['LLAVE TRIPLE VIA', '11.40'], ['ATROPINA SULFATO (TRIFARMA)', '7.98'], 'DEXAMETASONA GENFAR', ['DEXAMETASONA GENFAR', '15.07'], ['PERICAN N° 18 (BRAUN)', '47.48'], ['BUPINEST S.P 0.5%', '58.52'], ['JERINGAS HIPODERMICA 20 ML', '1.45'], ['EPINEFRINA', '5.59'], ['MIDAZOLAN 5MG', '18.38'], ['FENTANILO 500MG', '60.19'], ['OXITOCINA', '3.72']].each do |input|
	input_type.inputs.create(name: input[0], price: input[1])
end



def too_bool number
	number == 1
end
count = 0
Patient.where(boolean_sex: nil).each do |patient|
	count += 1
	patient.update(boolean_sex: too_bool(rand(2)))
	puts "Changed patient #{patient.full_name} count #{count.to_s}"
end

Patient.where(birthday: nil).update_all(birthday: "2015-01-01")
=end