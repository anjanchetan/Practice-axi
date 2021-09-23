class axi_mstr_env extends uvm_env;
  `uvm_component_utils(axi_mstr_env)
  
  function new(string name="axi_mstr_env",uvm_component parent);
    super.new=(name,parent);
  endfunction
  
  axi_mstr_agt agt;
  function build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // if(!uvm_config_db#(virtual )::get(this,"","vif",vif))
   // `uvm_fatal("NOVIF",{"virtual interface must be set for :",get_full_name(.vif),""});
    
    agt=axi_mstr_env::type_id::create("agt",this);
  endfunction
endclass
