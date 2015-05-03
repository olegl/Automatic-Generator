function [ret] = bench_gjstep_012(cfg)
  
  % generate MATLAB code only
  cfg.exportCode = {'matlab'};
  cfg.PolynomialsGenerator = 'systematic';
  
  % one elimination solver
  ret{1}.info = 'One elimination solver.';
  ret{1}.abbrev = 'gjstep_0';
  ret{1}.cfg = cfg;
  ret{1}.cfg.PolynomialsGeneratorCfg.GJstep = 0;
  
  % multi elimination solver - elimination at each total degree enlargement
  ret{2}.info = 'Multi elimination solver, elimination at each total degree enlargement.';
  ret{2}.abbrev = 'gjstep_1';
  ret{2}.cfg = cfg;
  ret{2}.cfg.PolynomialsGeneratorCfg.GJstep = 1;
  
  % multi elimination solver - elimination at each second total degree enlargement
  ret{3}.info = 'Multi elimination solver, elimination at each second total degree enlargement.';
  ret{3}.abbrev = 'gjstep_2';
  ret{3}.cfg = cfg;
  ret{3}.cfg.PolynomialsGeneratorCfg.GJstep = 2;

end
