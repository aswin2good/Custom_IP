# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_Ash_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_Ash_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Ash_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Ash_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "LED_WIDTH"
  ipgui::add_param $IPINST -name "SWITCH_WIDTH"

}

proc update_PARAM_VALUE.LED_WIDTH { PARAM_VALUE.LED_WIDTH } {
	# Procedure called to update LED_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED_WIDTH { PARAM_VALUE.LED_WIDTH } {
	# Procedure called to validate LED_WIDTH
	return true
}

proc update_PARAM_VALUE.SWITCH_WIDTH { PARAM_VALUE.SWITCH_WIDTH } {
	# Procedure called to update SWITCH_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SWITCH_WIDTH { PARAM_VALUE.SWITCH_WIDTH } {
	# Procedure called to validate SWITCH_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Ash_AXI_DATA_WIDTH { PARAM_VALUE.C_Ash_AXI_DATA_WIDTH } {
	# Procedure called to update C_Ash_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Ash_AXI_DATA_WIDTH { PARAM_VALUE.C_Ash_AXI_DATA_WIDTH } {
	# Procedure called to validate C_Ash_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH { PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH } {
	# Procedure called to update C_Ash_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH { PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_Ash_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Ash_AXI_BASEADDR { PARAM_VALUE.C_Ash_AXI_BASEADDR } {
	# Procedure called to update C_Ash_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Ash_AXI_BASEADDR { PARAM_VALUE.C_Ash_AXI_BASEADDR } {
	# Procedure called to validate C_Ash_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_Ash_AXI_HIGHADDR { PARAM_VALUE.C_Ash_AXI_HIGHADDR } {
	# Procedure called to update C_Ash_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Ash_AXI_HIGHADDR { PARAM_VALUE.C_Ash_AXI_HIGHADDR } {
	# Procedure called to validate C_Ash_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_Ash_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_Ash_AXI_DATA_WIDTH PARAM_VALUE.C_Ash_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Ash_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_Ash_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_Ash_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_Ash_AXI_ADDR_WIDTH PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Ash_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_Ash_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.LED_WIDTH { MODELPARAM_VALUE.LED_WIDTH PARAM_VALUE.LED_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED_WIDTH}] ${MODELPARAM_VALUE.LED_WIDTH}
}

proc update_MODELPARAM_VALUE.SWITCH_WIDTH { MODELPARAM_VALUE.SWITCH_WIDTH PARAM_VALUE.SWITCH_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SWITCH_WIDTH}] ${MODELPARAM_VALUE.SWITCH_WIDTH}
}

