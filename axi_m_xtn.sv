class axi_m_xtn extends uvm_sequence_item;
  
  `uvm_object_utils("axi_m_xtn")
   
  function new(string name="axi_m_xtn");
    super.new(name);
  endfunction 
  
  rand bit [3:0] axid;
  rand bit [31:0] addr;
  rand bit [31:0] data;
  rand axi_mstr_btype trans;
  rand bit [3:0] length;
  rand bit [2:0] bsize;
  rand axi_mstr_btyp_e btype;
  rand int unsigned cycles;
  
  constraint c_length {length inside 0,3,7,15};
   
 constraint c_cyles {cycle <= 20;}
  
endclass
