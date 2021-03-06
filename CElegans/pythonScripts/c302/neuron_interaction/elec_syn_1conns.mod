TITLE Mod file for component: Component(id=elec_syn_1conns type=gapJunction)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.4.5
         org.neuroml.model   v1.4.5
         jLEMS               v0.9.8.5

ENDCOMMENT

NEURON {
    POINT_PROCESS elec_syn_1conns
    RANGE conductance                       : parameter
    
    RANGE i                                 : exposure
    
    
    NONSPECIFIC_CURRENT i 
    POINTER vpeer: derived variable as pointer...
    
}

UNITS {
    
    (nA) = (nanoamp)
    (uA) = (microamp)
    (mA) = (milliamp)
    (A) = (amp)
    (mV) = (millivolt)
    (mS) = (millisiemens)
    (uS) = (microsiemens)
    (molar) = (1/liter)
    (kHz) = (kilohertz)
    (mM) = (millimolar)
    (um) = (micrometer)
    (umol) = (micromole)
    (S) = (siemens)
    
}

PARAMETER {
    
    conductance = 1.287E-6 (uS)
}

ASSIGNED {
    ? Standard Assigned variables with baseSynapse
    v (mV)
    celsius (degC)
    temperature (K)
    
    vpeer (mV)                             : derived variable
    
    i : no units???                        : derived variable
    
}

STATE {
    
}

INITIAL {
    temperature = celsius + 273.15
    
    rates()
    rates() ? To ensure correct initialisation.
    
}

BREAKPOINT {
    
    rates()
    
}

PROCEDURE rates() {
    
    ? DerivedVariable is based on path: peer/v, on: Component(id=elec_syn_1conns type=gapJunction), from peer; null
    ? Derived variable: vpeer; its value will be set by a pointer...
    
    i = -1 * conductance  * (vpeer - v) ? evaluable
    
     
    
}

