function [] = mainExp(class,trainId,paramStruct)
if(nargin<4)
    paramStruct = {};
end

mainTrain(class,trainId,paramStruct);

% Test with keypoints
mainTest(class,trainId,'withKps',{'opt.rotationPredNum','1'...
'opt.relaxInit','{}','opt.relaxOpt','{''scale'',''translation'',''rotation'',''kps''}'});

%mainTest(class,trainId,strcat(trainId,'withKpsAllTest'),{'opt.rotationPredNum','1',...
%'opt.relaxInit','{}','opt.relaxOpt','{''scale'',''translation'',''rotation'',''kps''}'});

%  mainTest(class,trainId,strcat(trainId,'withKpsSDS'),{'opt.rotationPredNum','1',...
%  'opt.relaxInit','{''mask''}','opt.relaxOpt','{''scale'',''translation'',''rotation'',''kps''}',...
%  'opt.lambda','[1 1 200 0.2 0.2 5]','opt.truncatedLoss','1'});
%  
% % % Pose Hypotheses w/o keypoints
%  mainTest(class,trainId,strcat(trainId,'poseHyp1'),{'opt.rotationPredNum','1',...
%  'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
%  'opt.relaxOpt','{''scale'',''translation'',''rotation''}','opt.useOrigTri','1'});
%  
%  mainTest(class,trainId,strcat(trainId,'poseHyp1SDS'),{'opt.rotationPredNum','1',...
%  'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps'',''mask''}',...
%  'opt.relaxOpt','{''scale'',''translation'',''rotation''}','opt.useOrigTri','1',...
%  'opt.lambda','[1 1 200 0.2 0.2 5]','opt.truncatedLoss','1'});

% mainTest(class,trainId,strcat(trainId,'poseHyp2'),{'opt.rotationPredNum','2',...
% 'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
% 'opt.relaxOpt','{''scale'',''translation'',''rotation''}','opt.useOrigTri','1'});
% 
% mainTest(class,trainId,strcat(trainId,'poseHyp3'),{'opt.rotationPredNum','3',...
% 'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
% 'opt.relaxOpt','{''scale'',''translation'',''rotation''}','opt.useOrigTri','1'});
% 
% mainTest(class,trainId,strcat(trainId,'poseHyp4'),{'opt.rotationPredNum','4',...
% 'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
% 'opt.relaxOpt','{''scale'',''translation'',''rotation''}','opt.useOrigTri','1'});
% 
% Test with keypoints
%mainTest(class,trainId,strcat(trainId,'withKpsGtSubtype'),{...
%'opt.relaxInit','{}','opt.relaxOpt','{''scale'',''translation'',''rotation'',''kps''}'});
%mainTest(class,trainId,strcat(trainId,'withKpsPredSubtype'),{'opt.useGtSubtypes','0',...
%'opt.relaxInit','{}','opt.relaxOpt','{''scale'',''translation'',''rotation'',''kps''}'});

% Test without keypoints
%mainTest(class,trainId,strcat(trainId,'woKpsGtSubtype'),{...
%'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
%'opt.relaxOpt','{''scale'',''translation'',''rotation''}'});
%mainTest(class,trainId,strcat(trainId,'woKpsPredSubtype'),{...
%'opt.relaxInit','{''scale'',''translation'',''rotation'',''kps''}',...
%'opt.relaxOpt','{''scale'',''translation'',''rotation''}'});
end
% Run locally
%evalMeshesAll(classes,trainId,0);
%evalMeshesAll(classes,strcat(trainId,'withKpsgtSubtype'),1);
%evalMeshesAll(classes,strcat(trainId,'predSubtype'),1);
%[scoresMeshes, scoresDmaps] = collectEvals(classes,trainId,0);
%[scoresMeshes, scoresDmaps] = collectEvals(classes,strcat(trainId,'predSubtype'),1);
%[scoresMeshes, scoresDmaps] = collectEvals(classes,strcat(trainId,'gtSubtype'),1);
%And the same for IoU sets

