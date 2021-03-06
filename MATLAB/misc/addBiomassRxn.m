function new_model = addBiomassRxn(model)

    biomass = ['ala__L_c + arg__L_c +  asn__L_c + asp__L_c + atp_c + ctp_c '...
        ,'+ cys__L_c + g6p_c + gln__L_c + glu__L_c + gly_c + gtp_c + h2o_c ' ...
        , '+ his__L_c + ile__L_c + leu__L_c + lys__L_c + met__L_c ' ...
        , '+ phe__L_c + pro__L_c + ser__L_c + thr__L_c + trp__L_c + tyr__L_c ' ...
        , '+ utp_c + val__L_c + chsterol_c + clpn_hs_c + pail_hs_c ' ...
        , '+ pchol_hs_c + pe_hs_c + pglyc_hs_c + ps_hs_c + sphmyln_hs_c ' ...
        , '+ datp_n + dctp_n + dgtp_n + dttp_n <=> adp_c + h_c + pi_c'];
    biomass = strcat(biomass);
    stoich = [-0.505626, -0.35926, -0.35926, -0.279425, -0.279425, -0.352607, ...
        -20.704451, -0.039036, -0.046571, -0.275194, -0.325996, -0.385872, ...
        -0.538891, -0.036117, -20.650823, -0.126406, -0.286078, -0.545544, -0.592114, ...
        -0.153018, -0.259466, -0.412484, -0.392525, -0.31269, -0.013306, -0.159671, ...
        -0.053446, -0.352607, -0.020401, -0.011658, -0.023315, -0.154463, -0.055374, ...
        -0.002914, -0.005829, -0.017486, -0.013183, -0.009442, -0.009898, -0.013091,...
        20.650823, 20.650823, 20.650823];
    new_model = addReaction(model, 'BIOMASS_reaction', ...
        'reactionFormula', biomass, ...
        'StoichCoeffList', stoich);
end
    
    