
mrvNewGraphWin;
doIt = false;
window = false;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Make the middle bar one frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
pm = prfModel;
pm.TR=1;
pm.Stimulus.durationSecs = 31;
pm.Stimulus.compute
% pm.Stimulus.plot('window',window)
if doIt
    % Edit it manually to make it a single on/off bar
    fName = fullfile(pmRootPath,'data','stimulus','Exp-103_bin-true_size-20x20_resize-true_Horz-101x101_barW-2_dur-31_TR-1_framedur-4.mat');
    kk = load(fName);
    % Repeat fourth bar, make rest zero, and save it with the same name, it will
    % not overwrite it.
    stim = kk.stim;
    stim(:,:,3) = repmat(kk.stim(:,:,4),[1,1,1]);
    stim(:,:,[1,2,4:end]) = zeros(size(kk.stim(:,:,[1,2,4:end])));
    % Check it
    montage(stim)
    % Save it
    save(fName,'stim');
    % Check again as part of class, it should just read it and plot what we want
    pm.Stimulus.plot
end
% Compute the time series
% pm.compute: we can't do this because the number of basis functions too low, for slow drift noise
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window)
title('middle bar one frame')
ylim([-.1,.2]);xlim([0,35])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Make the bar in the middle on for 5 TRs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
pm = prfModel;
pm.TR=1;
pm.Stimulus.durationSecs = 30;
pm.Stimulus.compute
% pm.Stimulus.plot('window',window)
if doIt
    % Edit it manually to make it a single on/off bar
    fName = fullfile(pmRootPath,'data','stimulus','Exp-103_bin-true_size-20x20_resize-true_Horz-101x101_barW-2_dur-30_TR-1_framedur-4.mat');
    kk = load(fName);
    % Repeat fourth bar, make rest zero, and save it with the same name, it will
    % not overwrite it.
    stim = kk.stim;
    stim(:,:,3:7) = repmat(kk.stim(:,:,4),[1,1,5]);
    stim(:,:,[1,2,8:30]) = zeros(size(kk.stim(:,:,[1,2,8:30])));
    % Check it
    montage(stim)
    % Save it
    save(fName,'stim');
    % Check again as part of class, it should just read it and plot what we want
    pm.Stimulus.plot
end
% Compute the time series
% pm.compute: we can't do this because the number of basis functions too low, for slow drift noise
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window)
title('bar in the middle on for 5 TRs')
ylim([-.1,.2]);xlim([0,35])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Make the middle bar 10 frames
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
pm = prfModel;
pm.TR=1;
pm.Stimulus.durationSecs = 32;
pm.Stimulus.compute
% pm.Stimulus.plot('window',window)
if doIt
    % Edit it manually to make it a single on/off bar
    fName = fullfile(pmRootPath,'data','stimulus','Exp-103_bin-true_size-20x20_resize-true_Horz-101x101_barW-2_dur-32_TR-1_framedur-4.mat');
    kk = load(fName);
    % Repeat fourth bar, make rest zero, and save it with the same name, it will
    % not overwrite it.
    stim = kk.stim;
    stim(:,:,3:12) = repmat(kk.stim(:,:,4),[1,1,10]);
    stim(:,:,[1,2,13:end]) = zeros(size(kk.stim(:,:,[1,2,13:end])));
    % Check it
    montage(stim)
    % Save it
    save(fName,'stim');
    % Check again as part of class, it should just read it and plot what we want
    pm.Stimulus.plot
end
% Compute the time series
% pm.compute: we can't do this because the number of basis functions too low, for slow drift noise
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window)
title('middle bar 10 frames')
ylim([-.1,.2]);xlim([0,35])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Make the middle bar 20 frames
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
pm = prfModel;
pm.TR=1;
pm.Stimulus.durationSecs = 40;
pm.Stimulus.compute
% pm.Stimulus.plot('window',window)
if doIt
    % Edit it manually to make it a single on/off bar
    fName = fullfile(pmRootPath,'data','stimulus','Exp-103_bin-true_size-20x20_resize-true_Horz-101x101_barW-2_dur-40_TR-1_framedur-4.mat');
    kk = load(fName);
    % Repeat fourth bar, make rest zero, and save it with the same name, it will
    % not overwrite it.
    stim = kk.stim;
    stim(:,:,3:22) = repmat(kk.stim(:,:,5),[1,1,20]);
    stim(:,:,[1,2,23:end]) = zeros(size(kk.stim(:,:,[1,2,23:end])));
    % Check it
    montage(stim)
    % Save it
    save(fName,'stim');
    % Check again as part of class, it should just read it and plot what we want
    pm.Stimulus.plot
end
% Compute the time series
% pm.compute: we can't do this because the number of basis functions too low, for slow drift noise
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window)
title('middle bar 20 frames')
ylim([-.1,.2]);xlim([0,35])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Select a side bar 5 frames
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
pm = prfModel;
pm.TR=1;
pm.Stimulus.durationSecs = 33;
pm.Stimulus.compute
pm.Stimulus.plot('window',window)
if doIt
    % Edit it manually to make it a single on/off bar
    fName = fullfile(pmRootPath,'data','stimulus','Exp-103_bin-true_size-20x20_resize-true_Horz-101x101_barW-2_dur-33_TR-1_framedur-4.mat');
    kk = load(fName);
    % Repeat fourth bar, make rest zero, and save it with the same name, it will
    % not overwrite it.
    stim = kk.stim;
    stim(:,:,3:7) = repmat(kk.stim(:,:,3),[1,1,5]);
    stim(:,:,[1,2,8:end]) = zeros(size(kk.stim(:,:,[1,2,8:end])));
    % Check it
    montage(stim)
    % Save it
    save(fName,'stim');
    % Check again as part of class, it should just read it and plot what we want
    pm.Stimulus.plot
end
% Compute the time series
% pm.compute: we can't do this because the number of basis functions too low, for slow drift noise
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window)
title('side bar 5 frames')
ylim([-.1,.2]);xlim([0,35])


%% See if the time series and convolution is right
% Read the 5 bars in the middle
% close all
pmmid = prfModel;
pmmid.Stimulus.durationSecs = 30;
pmmid.Stimulus.compute
% pmmid.Stimulus.plot
pmmid.computeBOLD
pmmid.timeSeries
pmmid.plot('what','nonoisetimeseries','window',true);hold on;


% Read the 5 bars on the side
pmside = prfModel;
pmside.Stimulus.durationSecs = 33;
pmside.Stimulus.compute
% pmside.Stimulus.plot
pmside.computeBOLD
pmside.timeSeries
pmside.plot('what','nonoisetimeseries','window',false,'addtext',false)
ylim([-.05,.2]);xlim([0,25])

%% Show the convolution in action
pmmid.showConvolution


%% Compare for rfsize=2, the results when we use canonical HRF or vista_twogammas
mrvNewGraphWin;
window = false;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Make the middle bar one frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pm = prfModel;
pm.TR=1;
pm.RF.sigmaMajor = 2;
pm.RF.sigmaMinor = 2;
pm.HRF.Type = 'vista_twogammas';
pm.HRF.compute
pm.Stimulus.durationSecs = 31;
pm.Stimulus.compute

subplot(1,2,1)
pm.Stimulus.plot('window',window)

subplot(1,2,2)
pm.computeBOLD
pm.plot('what','nonoisetimeseries','window',window,'centerzero',true); hold on
ylim([-.1,.2]);xlim([0,30])
pm.HRF.Type = 'popeye_twogammas';
pm.HRF.compute
pm.computeBOLD
pm.plot('what','nonoise','window',window,'color','r','addtext',false,'centerzero',true)
title('middle bar one frame, two HRF')
legend({'timeseries','vista\_twogammas','popeye\_twogammas'})

%% DELETE THIS
%{
% RF    = exp( -.5 * (((Y - y0) ./ sigma).^2 + ((X - x0) ./ sigma).^2));
% logRF = log(RF);
% sigma = unique(sqrt(((Y - y0).^2+(X - x0).^2)./(-2*logRF)));
% pm.timeSeries  = spaceStim' * pm.RF.values(:); 
% pm.BOLD       = conv(pm.timeSeries',pm.HRF.values);
% pm.BOLD       = pm.BOLD(1:(end+1-length(pm.HRF.values)));

% Do the process backwards
[retimeseries,R] = deconv(bold,hrf(2:end));
timeseries = zeros(1,pm.timePointsN)';
timeseries(1:length(retimeseries)) = retimeseries';
reshstim = reshape(stim,[101*101,pm.timePointsN]);
rerf = reshstim'\timeseries;
reshrf = reshape(rerf, [101,101]);
resigma = unique(sqrt(((Y - y0).^2+(X - x0).^2)./(-2*log(reshrf))))


ppm          = prfModel;
ppm.HRF.Type = 'popeye_twogammas';
ppm.HRF.normalize = 'absarea';
ppm.HRF.compute
phrf = ppm.HRF.values;
ppm.Stimulus.durationSecs = 31;
ppm.Stimulus.compute
pstim = ppm.Stimulus.getStimValues;
ppm.RF.Centerx0   = 3;
ppm.RF.Centery0   = 3;
ppm.RF.sigmaMajor = 2;
ppm.RF.sigmaMinor = 2;
ppm.RF.compute
prf = ppm.RF.values;
pX  = ppm.Stimulus.XY{1};
pY  = ppm.Stimulus.XY{2};
px0 = ppm.RF.Centerx0;
py0 = ppm.RF.Centery0;
psigma = ppm.RF.sigmaMajor;
ppm.computeBOLD
pbold = ppm.BOLD 

% Do the process backwards
% the only thing that changes is the bold
[retimeseries,R] = deconv(bold,hrf(2:end))
timeseries = zeros(1,pm.timePointsN)';
timeseries(1:length(retimeseries)) = retimeseries';
reshstim = reshape(stim,[101*101,pm.timePointsN])';
rerf = reshstim\timeseries;
reshrf = reshape(rerf, [101,101]);
resigma = unique(sqrt(((Y - y0).^2+(X - x0).^2)./(-2*log(reshrf))))












a = [pm.HRF.plot('window',false,'dots',false,'width',true,'xlims',[0,25])];

pm.HRF.
pm.HRF.compute
a = [pm.HRF.plot('window',false,'dots',false,'width',true,'xlims',[0,25])];
%}

