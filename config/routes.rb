Rails.application.routes.draw do

 

  get 'doctors/index'

  get 'doctors/show'

  get 'doctors/new'

  get 'doctors/edit'

  get 'chat_csl' => 'chat#index', as: :chat
  post 'agregarmensaje' => 'chat#add', as: :add_chat

  get 'admissions/new'
  #get 'admisiones/nuevo/:patient_id' => 'admissions#new', as: :new_admission
  get 'admissions/ready'
  get 'admision/ready/:authorization_id' => 'admissions#ready', as: :ready_admission
  post 'confirmar_admision' => 'admissions#confirm', as: :confirm_admission
  get 'admissions/index'

  get 'admission/new'
 
  get 'admission/ready'

  get 'admission/index'

  resources :providers

  get 'topic_sales/new'

  get 'topic_sales/ready'

  get 'cobertura/nuevo/:id' => 'coverage_sales#new', as: :new_coverage
  get 'cobertura/ready/:id' => 'coverage_sales#ready', as: :ready_coverage
  post 'confirmcobertura' => 'coverage_sales#confirm', as: :confirm_coverage
  post 'addcobertura' => 'coverage_sales#add', as: :add_coverage
  post 'cerrarcobertura' => 'coverage_sales#close', as: :close_coverage
  post 'borrarconsulta' => 'coverage_sales#delete', as: :delete_coverage
  post 'fastcoverage' => 'coverage_sales#fast_close', as: :fast_close

  get 'topico/nuevo/:id_authorization' => 'topic_sales#new', as: :new_topic
  get 'topico/ready/:id' => 'topic_sales#ready', as: :ready_topic
  post 'confirmtopico' => 'topic_sales#confirm', as: :confirm_topic
  post 'addtopico' => 'topic_sales#add', as: :add_topic
  post 'cerrartopico' => 'topic_sales#close', as: :close_topic
  post 'borrartopic' => 'topic_sales#delete', as: :delete_topic
  post 'borrarventatopico' => 'topic_sales#destroy', as: :destroy_topic

  get 'facturations/index'
  get 'facturas/autorizaciones/:page' => 'facturations#index', as: :authorizations_fact
  get 'facturations/new'
  get 'facturas/nuevo/:insured_id/:authorization_id' => 'facturations#new', as: :new_facturation
  get 'facturas/lista/:page' => 'facturations#list', as: :list_facturation
  get 'facturas/nuevo/ready/principal/:pay_document_id' => 'facturations#ready', as: :ready_principal_facturation
  get 'facturas/print/:id' => 'facturations#print', as: :print_facturation
  get 'facturas/nuevo/ready/prestacion/:pay_document_id' => 'facturations#benefit', as: :ready_benefit_facturation
  get 'facturas/nuevo/ready/asignacion/:pay_document_id' => 'facturations#asign', as: :ready_asign_facturation
  get 'facturas/nuevo/ready/asignados/:pay_document_id' => 'facturations#asigned', as: :ready_asigned_facturation
  get 'facturas/lotes/:page' => 'facturations#create_lot', as: :create_lot
  get 'facturas/exportar/proveedores' => 'facturations#providers', as: :facturation_providers
  get 'facturas/detalle_dental/:pay_document_id' => "facturations#new_dental", as: :new_dental
  post 'facturas/generarlotes' => 'facturations#generate_lot', as: :generate_lot
  post 'facturas/confirmar' => 'facturations#confirm', as: :confirm_facturation
  post 'facturas/updateprincipal' => 'facturations#update_principal', as: :update_principal
  post 'facturas/updatebenefit' => 'facturations#update_benefit', as: :update_benefit
  post 'facturas/updateasign' => 'facturations#update_asign', as: :update_asign
  post 'facturas/agregarservicio' => 'facturations#add_detail_service', as: :add_detail_service
  post 'facturas/agregarfarmacia' => 'facturations#add_detail_pharmacy', as: :add_detail_pharmacy
  post 'facturas/agregarcobertura' => 'facturations#add_detail_coverage', as: :add_detail_coverage
  post 'facturas/borrarservicio' => 'facturations#delete_detail_service', as: :delete_detail_service
  post 'facturas/borrarfarmacia' => 'facturations#delete_detail_pharmacy', as: :delete_detail_pharmacy
  post 'facturas/borrarcobertura' => 'facturations#delete_detail_coverage', as: :delete_detail_coverage
  post 'facturas/cerrarfactura' => 'facturations#close_facture', as: :close_facture
  post 'facturas/add_dental' => 'facturations#add_dental', as: :add_dental
  post 'facturas/delete_dental' => 'facturations#delete_dental', as: :delete_dental
  
  post 'facturas/borrarfactura' => 'facturations#delete', as: :delete_facturation
  post 'facturas/modificarmontoneto' => 'facturations#update_amount', as: :update_amount
  post 'facturas/borrarlote' => 'facturations#delete_lot', as: :delete_lot
  post 'facturas/exportar' =>'facturations#export', as: :export
  post 'facturas/exportar_lote' =>'facturations#export_lot', as: :export_lot
  post 'facturas/asignar_todo' => 'facturations#asign_all', as: :asign_all
  get 'facturas/contabilidad'=> 'facturations#form_accounting', as: :form_accounting
  post 'facturas/exportar_contabilidad'=> 'facturations#export_accounting', as: :export_accounting 
  post 'facturas/corregir_productos'=> 'facturations#fix', as: :fix 
  post 'facturas/corregir_servicios'=> 'facturations#fix_service', as: :fix_service
  post 'facturas/corregir_productos_facturados'=> 'facturations#fix_facturated', as: :fix_facturated

  
  get 'facturations/show'

  get 'pharmacy_sales/new'

  get 'pharmacy_sales/ready'

  get 'images/index'

  get 'images/recents'

  get 'images/show'

  get 'cash/index'

  get 'cash/recent' 

  get '/caja/:type/:page' => 'cash#index', as: :cash
  get '/caja/recientes' => 'cash#recent', as: :cash_recents

  get '/administracion' => 'administrations#index', as: :administration
  get '/estadisticas' => 'administrations#stadistics', as: :stadistics
  get '/administracion/exportar_servicios' => 'administrations#show_export', as: :show_export
  post '/export_services' => 'administrations#export_services', as: :export_services


  get '/about' => 'help#index', as: :help
  get '/faq' => 'help#faq', as: :faq

  get 'service_sales/index'

  get 'service_sales/show'
  
  get 'service_sales/new'

  get '/caja/servicio/:name/:id_authorization/' => "service_sales#new", as: :new_sales
  get '/caja/servicio/crear/ready/:id_sale' => "service_sales#ready_sales", as: :new_sales_ready
  get 'caja/impresion/convenio/:insured_service_id'=> "service_sales#print" , as: :print_services
   
  get '/caja/servicios/todos/:authorization_id' => 'service_sales#all', as: :insured_services_all
  post '/cambiarcodigonombre' => 'service_sales#change_name_code', as: :change_name_code
  post '/close_sale' => "service_sales#close_sale", as: :close_sale
  post '/open_sale' => "service_sales#open_sale", as: :open_sale
  post '/caja/nuevo/:name/:id_authorization/confirm' => "service_sales#confirm_sale", as: :confirm_sale
  post '/add_service' => "service_sales#add_service", as: :add_service
  post '/add_service_from_all' => "service_sales#add_all", as: :add_all_service
  post '/delete_service' => "service_sales#delete_service", as: :delete_service
  post '/delete_service_sale' => "service_sales#delete_service_sale", as: :delete_service_sale
  post '/modify_purchase_service' => "service_sales#update_purchase_service", as: :update_purchase_service  
  post '/cambiarservicioselect' => "service_sales#update_service", as: :update_service
  post '/cambiarunitariotext' => "service_sales#update_unitary", as: :update_unitary
  post '/cambiarnombreservicios' => "service_sales#update_name", as: :update_name_service
  post '/cambiarcodigoservicios' => "service_sales#update_code", as: :update_code_service
  post '/borrarserviciovistatodos' => "service_sales#delete_from_all", as: :delete_from_all
  post '/update_all_purchase' => "service_sales#update_all", as: :update_all_services

  get 'particular_service_sales/index'

  get 'particular_service_sales/show'

  get 'particular_service_sales/new'
  
  get '/caja/servicioparticular/:name/:id_authorization/' => "particular_service_sales#new", as: :new_sales_particular
  get '/caja/servicioparticular/crear/ready/:id_sale' => "particular_service_sales#ready_sales", as: :new_sales_ready_particular
  post '/cambiarcodigonombreparticular' => 'particular_service_sales#change_name_code', as: :change_name_code_particular
  post '/close_sale_particular_test' => "particular_service_sales#close_sale", as: :close_sale_particular
  post '/open_sale_particular' => "particular_service_sales#open_sale", as: :open_sale_particular
  post '/caja/nuevoservicioparticular/:name/:id_authorization/confirm' => "particular_service_sales#confirm_sale", as: :confirm_sale_particular
  post '/add_particular_service' => "particular_service_sales#add_service", as: :add_service_particular
  post '/delete_particular_service' => "particular_service_sales#delete_service", as: :delete_service_particular
  post '/delete_particular_service_sale' => "particular_service_sales#delete_service_sale", as: :delete_service_sale_particular
  post '/modify_purchase_particular_service' => "particular_service_sales#update_purchase_service", as: :update_purchase_service_particular

  
  get '/caja/farmacia/compra/:id_authorization/' => "pharmacy_sales#new", as: :new_pharmacy
  get '/caja/farmacia/crear/ready/:id_pharm' => "pharmacy_sales#ready", as: :new_pharmacy_ready
  get 'farmacia/:page' => 'pharmacy_sales#index', as: :pharmacies
  post '/close_pharmacy' => "pharmacy_sales#close_pharmacy", as: :close_pharmacy
  post '/caja/famarcia/nuevo/:id_authorization/confirm' => "pharmacy_sales#confirm_pharmacy", as: :confirm_pharmacy
  post '/add_pharmacy' => "pharmacy_sales#add_pharmacy", as: :add_pharmacy
  post '/delete_pharmacy' => "pharmacy_sales#delete_pharmacy", as: :delete_pharmacy
  get 'farmacia/imprimir/:pharmacy_id' => "pharmacy_sales#print", as: :pharmacy_print
  get 'farmacia/imprimirtodo/:page'=>"pharmacy_sales#print_all", as: :print_all
  get 'farmacia/verificarfecha/:page'=>"pharmacy_sales#verify_by_date", as: :verify_by_date
  post 'farmacia/liquidacion' => "pharmacy_sales#add_liquidation", as: :add_liquidation
  post 'farmacia/eliminar' => "pharmacy_sales#drop_pharmacy", as: :drop_pharmacy
  post 'farmaciacambiarfecha' => 'pharmacy_sales#change_date', as: :pharmacy_change_date
  post 'abrirfarmacia' => 'pharmacy_sales#open_pharmacy', as: :open_pharmacy
  post 'modificarfarmacia' => 'pharmacy_sales#update_pharmacy', as: :update_pharmacy


  
  get '/pacientes/:page' => 'patients#index', as: :patients
  post 'pacientescrear' => 'patients#create', as: :create_patients
  post 'pacientesparticularcrear' => 'patients#create_particular', as: :create_patient_particular
  post 'pacientesborrar' => 'patients#destroy', as: :destroy_patient
  get '/pacientes/:condition/:page' => 'patients#index', as: :patients_condition
  get 'patients/show'
  get 'paciente/nuevo_asegurado' => 'patients#new', as: :new_patient
  get 'paciente/nuevo_particular' => 'patients#new_particular', as: :new_patient_particular
  get 'paciente/nueva_compañia' => 'patients#open_company', as: :open_company
  get 'patients/recent'
  get 'ingresar_monsanto' => 'patients#form_monsant', as: :form_monsant
  post 'add_monsanto' => 'patients#add_monsant', as: :add_monsant
  get 'get_paternal_patients' => 'patients#get_paternal', as: :get_paternal_patients
  get 'update_diagnostics' => 'authorizations#update_diagnostics', as: 'update_diagnostics'
  get '/autorizaciones/:page' => "authorizations#index", as: :authorizations
  get 'paciente/hostoria_clinica/:patient_id' => 'patients#clinic_history', as: :clinic_history
  get 'paciente/anexo/:patient_id' => 'patients#anex_history', as: :anex_history
  post 'actualizar_direccion' => 'patients#update_direction', as: :update_direction
  post 'actualizar_telefono' => 'patients#update_phone', as: :update_phone
  post 'actualizar_otros' => 'patients#update_other', as: :update_other
  post 'actualizar_dni' => 'patients#update_dni', as: :update_dni
  post 'actualizar_representativo' => 'patients#update_representative', as: :update_representative
  post 'actualizar_fecha_generacion' => 'patients#udpate_date_generation', as: :udpate_date_generation
  get '/autorizaciones/recientes/:page' => "authorizations#recents", as: :recent_authorizations

  get '/autorizaciones/perfil/:id' => 'authorizations#show', as: :show_authorization
  post '/autorizaciones_destruir' => 'authorizations#destroy', as: :destroy_authorization
  get 'autorizaciones/perfil/update_diagnostic_types' => 'authorizations#update_diagnostic_types', as: :update_diagnostic_types
  post '/autorizaciones/perfil/update/' => 'authorizations#update_info', as: :update_info_authorization
  post 'autorizaciones/excel' => 'authorizations#print_excel', as: :print_excel
  post 'autorizaciones/borrar_data' => 'authorizations#clear_data', as: :clear_data
  get '/procedimientos/:page' => "welcome#index", as: :procedures

  get '/asegurados/:page' => 'insureds#index', as: :insureds

  get '/asegurados/perfil/:id' => 'insureds#show', as: :show_insured

  get '/paciente/perfil/:id' => 'patients#show', as: :show_patient

  get '/paciente/ingresar_dni/:patient_id' => 'patients#insert_dni', as: :insert_dni

  post '/paciente/create_dni' => 'patients#create_dni', as: :create_dni
  get 'compañia/nuevo' => 'patients#new_company', as: :new_company
  post 'newcompany' => 'patients#create_company', as: :create_company
  get '/ingresar' => 'security#index', as: :security
  post '/login' => 'security#login', as: :login
  get '/logout' => 'security#logout', as: :logout
  # The priority is  based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
