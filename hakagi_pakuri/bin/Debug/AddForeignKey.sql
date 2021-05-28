ALTER TABLE ChgAttrHistoryDetailsNewTmsLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewTmsLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewTmsLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewTmsLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_BillOfProcessBaseId FOREIGN KEY (BillOfProcessBaseId) REFERENCES BillOfProcessBase(BillOfProcessBaseId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ERPBOMId FOREIGN KEY (ERPBOMId) REFERENCES ERPBOM(ERPBOMId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ERPRouteBaseId FOREIGN KEY (ERPRouteBaseId) REFERENCES ERPRouteBase(ERPRouteBaseId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ERPRouteId FOREIGN KEY (ERPRouteId) REFERENCES ERPRoute(ERPRouteId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ES_ToolPlanMatrixId FOREIGN KEY (ES_ToolPlanMatrixId) REFERENCES ES_ToolPlanMatrix(ES_ToolPlanMatrixId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_isPreactorScheduleId FOREIGN KEY (isPreactorScheduleId) REFERENCES isPreactorSchedule(isPreactorScheduleId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_isRecipePlanId FOREIGN KEY (isRecipePlanId) REFERENCES isRecipePlan(isRecipePlanId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_OrderStatusId FOREIGN KEY (OrderStatusId) REFERENCES OrderStatus(OrderStatusId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_OrderTypeId FOREIGN KEY (OrderTypeId) REFERENCES OrderType(OrderTypeId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ProductConversionPlanId FOREIGN KEY (ProductConversionPlanId) REFERENCES A_ProductConversionPlan(ProductConversionPlanId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE MfgOrder ADD CONSTRAINT FK_MfgOrder_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ES_JobBOMs ADD CONSTRAINT FK_ES_JobBOMs_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE BizRuleParameter ADD CONSTRAINT FK_BizRuleParameter_BusinessRuleDataId FOREIGN KEY (BusinessRuleDataId) REFERENCES BusinessRuleData(BusinessRuleDataId);
GO
ALTER TABLE BizRuleParameter ADD CONSTRAINT FK_BizRuleParameter_BusinessRuleHandlerId FOREIGN KEY (BusinessRuleHandlerId) REFERENCES BusinessRuleHandler(BusinessRuleHandlerId);
GO
ALTER TABLE PhasePrerequisites ADD CONSTRAINT FK_PhasePrerequisites_PhaseId FOREIGN KEY (PhaseId) REFERENCES Phase(PhaseId);
GO
ALTER TABLE NamedObjGrpDftForObjTypes ADD CONSTRAINT FK_NamedObjGrpDftForObjTypes_NamedObjectGroupId FOREIGN KEY (NamedObjectGroupId) REFERENCES NamedObjectGroup(NamedObjectGroupId);
GO
ALTER TABLE A_JobCodesByResource ADD CONSTRAINT FK_A_JobCodesByResource_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE TrackTargetDeploymentHistory ADD CONSTRAINT FK_TrackTargetDeploymentHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_CalendarShiftId FOREIGN KEY (CalendarShiftId) REFERENCES CalendarShift(CalendarShiftId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE isOEERawDetails ADD CONSTRAINT FK_isOEERawDetails_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE CIOOutboundChannelFilters ADD CONSTRAINT FK_CIOOutboundChannelFilters_CIOFilterId FOREIGN KEY (CIOFilterId) REFERENCES CIOFilter(CIOFilterId);
GO
ALTER TABLE CIOOutboundChannelFilters ADD CONSTRAINT FK_CIOOutboundChannelFilters_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE ProductType ADD CONSTRAINT FK_ProductType_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE ProductType ADD CONSTRAINT FK_ProductType_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE FailureModeGrpDefaultForObjTyp ADD CONSTRAINT FK_FailureModeGrpDefaultForObjTyp_FailureModeGroupId FOREIGN KEY (FailureModeGroupId) REFERENCES FailureModeGroup(FailureModeGroupId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldBooLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldBooLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldBooLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldBooLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ES_JobImages ADD CONSTRAINT FK_ES_JobImages_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE BOM ADD CONSTRAINT FK_BOM_BillTypeId FOREIGN KEY (BillTypeId) REFERENCES BillType(BillTypeId);
GO
ALTER TABLE BOM ADD CONSTRAINT FK_BOM_BOMBaseId FOREIGN KEY (BOMBaseId) REFERENCES BOMBase(BOMBaseId);
GO
ALTER TABLE BOM ADD CONSTRAINT FK_BOM_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE PhaseTemplate ADD CONSTRAINT FK_PhaseTemplate_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE PhaseTemplate ADD CONSTRAINT FK_PhaseTemplate_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ActionsMenuItem ADD CONSTRAINT FK_ActionsMenuItem_UIVirtualPageId FOREIGN KEY (UIVirtualPageId) REFERENCES UIVirtualPage(UIVirtualPageId);
GO
ALTER TABLE A_JobModel ADD CONSTRAINT FK_A_JobModel_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE DecisionTreeHistoryDetail ADD CONSTRAINT FK_DecisionTreeHistoryDetail_RecordDecisionTreeHistoryId FOREIGN KEY (RecordDecisionTreeHistoryId) REFERENCES RecordDecisionTreeHistory(RecordDecisionTreeHistoryId);
GO
ALTER TABLE WebPartWorkspacePersonalizatio ADD CONSTRAINT FK_WebPartWorkspacePersonalizatio_WebPartId FOREIGN KEY (WebPartId) REFERENCES WebPart(WebPartId);
GO
ALTER TABLE ContainerAttrHistoryDetail ADD CONSTRAINT FK_ContainerAttrHistoryDetail_ContainerAttrMaintHistoryId FOREIGN KEY (ContainerAttrMaintHistoryId) REFERENCES ContainerAttrMaintHistory(ContainerAttrMaintHistoryId);
GO
ALTER TABLE TrackTargetDeploymentHistoryHi ADD CONSTRAINT FK_TrackTargetDeploymentHistoryHi_TrackTargetDeploymentHistoryId FOREIGN KEY (TrackTargetDeploymentHistoryId) REFERENCES TrackTargetDeploymentHistory(TrackTargetDeploymentHistoryId);
GO
ALTER TABLE isOEEResourceDetailsByShift ADD CONSTRAINT FK_isOEEResourceDetailsByShift_CalendarShiftId FOREIGN KEY (CalendarShiftId) REFERENCES CalendarShift(CalendarShiftId);
GO
ALTER TABLE isOEEResourceDetailsByShift ADD CONSTRAINT FK_isOEEResourceDetailsByShift_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_CIOChannelAdapterId FOREIGN KEY (CIOChannelAdapterId) REFERENCES CIOChannelAdapter(CIOChannelAdapterId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_CIOMessageTypeId FOREIGN KEY (CIOMessageTypeId) REFERENCES CIOMessageType(CIOMessageTypeId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_CIOOutboundMsgDefId FOREIGN KEY (CIOOutboundMsgDefId) REFERENCES CIOOutboundMsgDef(CIOOutboundMsgDefId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_CIOTemplateId FOREIGN KEY (CIOTemplateId) REFERENCES CIOTemplate(CIOTemplateId);
GO
ALTER TABLE CIOOutboundDefinition ADD CONSTRAINT FK_CIOOutboundDefinition_UserQueryId FOREIGN KEY (UserQueryId) REFERENCES UserQuery(UserQueryId);
GO
ALTER TABLE FailurePlanData ADD CONSTRAINT FK_FailurePlanData_FailureCauseDataId FOREIGN KEY (FailureCauseDataId) REFERENCES FailureCauseData(FailureCauseDataId);
GO
ALTER TABLE FailurePlanData ADD CONSTRAINT FK_FailurePlanData_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldDurLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldDurLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldDurLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldDurLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE PriorityCode ADD CONSTRAINT FK_PriorityCode_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE PriorityCode ADD CONSTRAINT FK_PriorityCode_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE BOMBase ADD CONSTRAINT FK_BOMBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES BOM(BOMId);
GO
ALTER TABLE PhaseTemplateonCompleteRules ADD CONSTRAINT FK_PhaseTemplateonCompleteRules_PhaseTemplateId FOREIGN KEY (PhaseTemplateId) REFERENCES PhaseTemplate(PhaseTemplateId);
GO
ALTER TABLE NCRCauseCodeGroupEntries ADD CONSTRAINT FK_NCRCauseCodeGroupEntries_NCRCauseCodeGroupId FOREIGN KEY (NCRCauseCodeGroupId) REFERENCES NCRCauseCodeGroup(NCRCauseCodeGroupId);
GO
ALTER TABLE A_JobModelDetail ADD CONSTRAINT FK_A_JobModelDetail_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE A_JobModelDetail ADD CONSTRAINT FK_A_JobModelDetail_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE A_JobModelDetail ADD CONSTRAINT FK_A_JobModelDetail_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE A_JobModelDetail ADD CONSTRAINT FK_A_JobModelDetail_JobModelId FOREIGN KEY (JobModelId) REFERENCES A_JobModel(JobModelId);
GO
ALTER TABLE ReprintLabelHistory ADD CONSTRAINT FK_ReprintLabelHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ReprintLabelHistory ADD CONSTRAINT FK_ReprintLabelHistory_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE DefectHistory ADD CONSTRAINT FK_DefectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE DefectHistory ADD CONSTRAINT FK_DefectHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ContainerAttrMaintHistory ADD CONSTRAINT FK_ContainerAttrMaintHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE SerializeHistory ADD CONSTRAINT FK_SerializeHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE SerializeHistory ADD CONSTRAINT FK_SerializeHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE FieldDefinitions ADD CONSTRAINT FK_FieldDefinitions_CDODefID FOREIGN KEY (CDODefID) REFERENCES InstanceIDCount(CDODefID);
GO
ALTER TABLE ChgAttrHistoryDetailsOldFixLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldFixLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldFixLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldFixLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ProductBase ADD CONSTRAINT FK_ProductBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES Product(ProductId);
GO
ALTER TABLE ES_NPIJob ADD CONSTRAINT FK_ES_NPIJob_ES_CADLayersId FOREIGN KEY (ES_CADLayersId) REFERENCES ES_CADLayers(ES_CADLayersId);
GO
ALTER TABLE ES_NPIJob ADD CONSTRAINT FK_ES_NPIJob_ES_CADPrimaryId FOREIGN KEY (ES_CADPrimaryId) REFERENCES ES_CADPrimary(ES_CADPrimaryId);
GO
ALTER TABLE ES_NPIJob ADD CONSTRAINT FK_ES_NPIJob_ES_NPIJobBaseId FOREIGN KEY (ES_NPIJobBaseId) REFERENCES ES_NPIJobBase(ES_NPIJobBaseId);
GO
ALTER TABLE ES_NPIJob ADD CONSTRAINT FK_ES_NPIJob_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_ERPBOMId FOREIGN KEY (ERPBOMId) REFERENCES ERPBOM(ERPBOMId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_RouteStepId FOREIGN KEY (RouteStepId) REFERENCES RouteStep(RouteStepId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE BOMMaterialListItem ADD CONSTRAINT FK_BOMMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE PhaseTemplateonStartRules ADD CONSTRAINT FK_PhaseTemplateonStartRules_PhaseTemplateId FOREIGN KEY (PhaseTemplateId) REFERENCES PhaseTemplate(PhaseTemplateId);
GO
ALTER TABLE NCRCauseCodeGroupGroups ADD CONSTRAINT FK_NCRCauseCodeGroupGroups_NCRCauseCodeGroupId FOREIGN KEY (NCRCauseCodeGroupId) REFERENCES NCRCauseCodeGroup(NCRCauseCodeGroupId);
GO
ALTER TABLE A_JobModelDetailChecklist ADD CONSTRAINT FK_A_JobModelDetailChecklist_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_JobModelDetailChecklist ADD CONSTRAINT FK_A_JobModelDetailChecklist_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE A_JobModelDetailChecklist ADD CONSTRAINT FK_A_JobModelDetailChecklist_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE A_JobModelDetailChecklist ADD CONSTRAINT FK_A_JobModelDetailChecklist_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE A_JobModelDetailChecklist ADD CONSTRAINT FK_A_JobModelDetailChecklist_JobModelDetailId FOREIGN KEY (JobModelDetailId) REFERENCES A_JobModelDetail(JobModelDetailId);
GO
ALTER TABLE isOEEThruputDetails ADD CONSTRAINT FK_isOEEThruputDetails_CalendarShiftId FOREIGN KEY (CalendarShiftId) REFERENCES CalendarShift(CalendarShiftId);
GO
ALTER TABLE isOEEThruputDetails ADD CONSTRAINT FK_isOEEThruputDetails_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE isOEEThruputDetails ADD CONSTRAINT FK_isOEEThruputDetails_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE isOEEThruputDetails ADD CONSTRAINT FK_isOEEThruputDetails_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE isOEEThruputDetails ADD CONSTRAINT FK_isOEEThruputDetails_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE ComponentRemoveHistory ADD CONSTRAINT FK_ComponentRemoveHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ReprocessActivityHistory ADD CONSTRAINT FK_ReprocessActivityHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ReprocessActivityHistory ADD CONSTRAINT FK_ReprocessActivityHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE DefectHistoryHistoryDetails ADD CONSTRAINT FK_DefectHistoryHistoryDetails_DefectHistoryId FOREIGN KEY (DefectHistoryId) REFERENCES DefectHistory(DefectHistoryId);
GO
ALTER TABLE WhereUsedConfigDetail ADD CONSTRAINT FK_WhereUsedConfigDetail_WhereUsedConfigId FOREIGN KEY (WhereUsedConfigId) REFERENCES WhereUsedConfig(WhereUsedConfigId);
GO
ALTER TABLE ContainerCompletedSubTask ADD CONSTRAINT FK_ContainerCompletedSubTask_ContainerCompletedTaskId FOREIGN KEY (ContainerCompletedTaskId) REFERENCES ContainerCompletedTask(ContainerCompletedTaskId);
GO
ALTER TABLE ContainerCompletedSubTask ADD CONSTRAINT FK_ContainerCompletedSubTask_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE TrainingPlanDetail ADD CONSTRAINT FK_TrainingPlanDetail_TrainingPlanId FOREIGN KEY (TrainingPlanId) REFERENCES TrainingPlan(TrainingPlanId);
GO
ALTER TABLE TrainingPlanDetail ADD CONSTRAINT FK_TrainingPlanDetail_TrainingRequirementBaseId FOREIGN KEY (TrainingRequirementBaseId) REFERENCES TrainingRequirementBase(TrainingRequirementBaseId);
GO
ALTER TABLE TrainingPlanDetail ADD CONSTRAINT FK_TrainingPlanDetail_TrainingRequirementId FOREIGN KEY (TrainingRequirementId) REFERENCES TrainingRequirement(TrainingRequirementId);
GO
ALTER TABLE SerializeHistoryDetails ADD CONSTRAINT FK_SerializeHistoryDetails_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE SerializeHistoryDetails ADD CONSTRAINT FK_SerializeHistoryDetails_SerializeHistoryId FOREIGN KEY (SerializeHistoryId) REFERENCES SerializeHistory(SerializeHistoryId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldFltLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldFltLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldFltLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldFltLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_BillOfProcessBaseId FOREIGN KEY (BillOfProcessBaseId) REFERENCES BillOfProcessBase(BillOfProcessBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_BOMBaseId FOREIGN KEY (BOMBaseId) REFERENCES BOMBase(BOMBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_BOMId FOREIGN KEY (BOMId) REFERENCES BOM(BOMId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ERPBOMBaseId FOREIGN KEY (ERPBOMBaseId) REFERENCES ERPBOMBase(ERPBOMBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ERPBOMId FOREIGN KEY (ERPBOMId) REFERENCES ERPBOM(ERPBOMId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ERPRouteBaseId FOREIGN KEY (ERPRouteBaseId) REFERENCES ERPRouteBase(ERPRouteBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ERPRouteId FOREIGN KEY (ERPRouteId) REFERENCES ERPRoute(ERPRouteId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ES_NPIJobBaseId FOREIGN KEY (ES_NPIJobBaseId) REFERENCES ES_NPIJobBase(ES_NPIJobBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ES_ToolPlanMatrixId FOREIGN KEY (ES_ToolPlanMatrixId) REFERENCES ES_ToolPlanMatrix(ES_ToolPlanMatrixId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_isRecipePlanId FOREIGN KEY (isRecipePlanId) REFERENCES isRecipePlan(isRecipePlanId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ProductConversionPlanId FOREIGN KEY (ProductConversionPlanId) REFERENCES A_ProductConversionPlan(ProductConversionPlanId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ProductFamilyId FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily(ProductFamilyId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_ProductTypeId FOREIGN KEY (ProductTypeId) REFERENCES ProductType(ProductTypeId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_SamplingPlanBaseId FOREIGN KEY (SamplingPlanBaseId) REFERENCES SamplingPlanBase(SamplingPlanBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_WorkflowBaseId FOREIGN KEY (WorkflowBaseId) REFERENCES WorkflowBase(WorkflowBaseId);
GO
ALTER TABLE Product ADD CONSTRAINT FK_Product_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE ES_NPIJobBase ADD CONSTRAINT FK_ES_NPIJobBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE PhaseTemplateOrganizations ADD CONSTRAINT FK_PhaseTemplateOrganizations_PhaseTemplateId FOREIGN KEY (PhaseTemplateId) REFERENCES PhaseTemplate(PhaseTemplateId);
GO
ALTER TABLE ActivityESigHistoryDetails ADD CONSTRAINT FK_ActivityESigHistoryDetails_ActivityId FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId);
GO
ALTER TABLE NCRCauseCodeGrpDefForObjTypes ADD CONSTRAINT FK_NCRCauseCodeGrpDefForObjTypes_NCRCauseCodeGroupId FOREIGN KEY (NCRCauseCodeGroupId) REFERENCES NCRCauseCodeGroup(NCRCauseCodeGroupId);
GO
ALTER TABLE A_JobModelDetailToStage ADD CONSTRAINT FK_A_JobModelDetailToStage_JobModelDetailId FOREIGN KEY (JobModelDetailId) REFERENCES A_JobModelDetail(JobModelDetailId);
GO
ALTER TABLE isPreactorSchedule ADD CONSTRAINT FK_isPreactorSchedule_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE fujCall ADD CONSTRAINT FK_fujCall_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE fujCall ADD CONSTRAINT FK_fujCall_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE fujCall ADD CONSTRAINT FK_fujCall_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE DelegateTaskHistory ADD CONSTRAINT FK_DelegateTaskHistory_DelegationReasonCodeId FOREIGN KEY (DelegationReasonCodeId) REFERENCES DelegationReasonCode(DelegationReasonCodeId);
GO
ALTER TABLE DelegateTaskHistory ADD CONSTRAINT FK_DelegateTaskHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE WhereUsedConfigWhereUsedConfig ADD CONSTRAINT FK_WhereUsedConfigWhereUsedConfig_WhereUsedConfigDetailsId FOREIGN KEY (WhereUsedConfigDetailsId) REFERENCES WhereUsedConfigDetail(WhereUsedConfigDetailsId);
GO
ALTER TABLE WhereUsedConfigWhereUsedConfig ADD CONSTRAINT FK_WhereUsedConfigWhereUsedConfig_WhereUsedConfigId FOREIGN KEY (WhereUsedConfigId) REFERENCES WhereUsedConfig(WhereUsedConfigId);
GO
ALTER TABLE TrainingRecord ADD CONSTRAINT FK_TrainingRecord_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE TrainingRecord ADD CONSTRAINT FK_TrainingRecord_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE TrainingRecord ADD CONSTRAINT FK_TrainingRecord_TrainingRequirementId FOREIGN KEY (TrainingRequirementId) REFERENCES TrainingRequirement(TrainingRequirementId);
GO
ALTER TABLE SessionValues ADD CONSTRAINT FK_SessionValues_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE SessionValues ADD CONSTRAINT FK_SessionValues_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE SessionValues ADD CONSTRAINT FK_SessionValues_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE SessionValues ADD CONSTRAINT FK_SessionValues_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE SessionValues ADD CONSTRAINT FK_SessionValues_WorkCenterId FOREIGN KEY (WorkCenterId) REFERENCES WorkCenter(WorkCenterId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldIntLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldIntLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldIntLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldIntLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_BOMId FOREIGN KEY (BOMId) REFERENCES BOM(BOMId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_HoldReasonId FOREIGN KEY (HoldReasonId) REFERENCES HoldReason(HoldReasonId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_MasterRecipeId FOREIGN KEY (MasterRecipeId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_PriorityCodeId FOREIGN KEY (PriorityCodeId) REFERENCES PriorityCode(PriorityCodeId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_SalesOrderId FOREIGN KEY (SalesOrderId) REFERENCES SalesOrder(SalesOrderId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_SpecStatusId FOREIGN KEY (SpecStatusId) REFERENCES SpecStatus(SpecStatusId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_StartReasonId FOREIGN KEY (StartReasonId) REFERENCES StartReason(StartReasonId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE Container ADD CONSTRAINT FK_Container_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ES_OmlConnector ADD CONSTRAINT FK_ES_OmlConnector_ES_OmlConnectorListId FOREIGN KEY (ES_OmlConnectorListId) REFERENCES ES_OmlConnectorList(ES_OmlConnectorListId);
GO
ALTER TABLE PlanTemplate ADD CONSTRAINT FK_PlanTemplate_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE PlanTemplate ADD CONSTRAINT FK_PlanTemplate_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ActivityEventFailures ADD CONSTRAINT FK_ActivityEventFailures_ActivityId FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId);
GO
ALTER TABLE NCRComments ADD CONSTRAINT FK_NCRComments_NonconformanceReportId FOREIGN KEY (NonconformanceReportId) REFERENCES NonconformanceReport(NonconformanceReportId);
GO
ALTER TABLE A_JobOrder ADD CONSTRAINT FK_A_JobOrder_JobModelId FOREIGN KEY (JobModelId) REFERENCES A_JobModel(JobModelId);
GO
ALTER TABLE isPreactorScheduledCntr ADD CONSTRAINT FK_isPreactorScheduledCntr_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE isPreactorScheduledCntr ADD CONSTRAINT FK_isPreactorScheduledCntr_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE fujHistoryLine ADD CONSTRAINT FK_fujHistoryLine_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE fujHistoryLine ADD CONSTRAINT FK_fujHistoryLine_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE fujHistoryLine ADD CONSTRAINT FK_fujHistoryLine_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE fujHistoryLine ADD CONSTRAINT FK_fujHistoryLine_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE WIPMsgConfig ADD CONSTRAINT FK_WIPMsgConfig_ContainerLevelId FOREIGN KEY (ContainerLevelId) REFERENCES ContainerLevel(ContainerLevelId);
GO
ALTER TABLE ContainerCompletedTask ADD CONSTRAINT FK_ContainerCompletedTask_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE cioQPPQuery ADD CONSTRAINT FK_cioQPPQuery_cioQueryPortalPageId FOREIGN KEY (cioQueryPortalPageId) REFERENCES cioQueryPortalPage(cioQueryPortalPageId);
GO
ALTER TABLE cioQPPQuery ADD CONSTRAINT FK_cioQPPQuery_UserQueryId FOREIGN KEY (UserQueryId) REFERENCES UserQuery(UserQueryId);
GO
ALTER TABLE Setup ADD CONSTRAINT FK_Setup_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE Setup ADD CONSTRAINT FK_Setup_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE Setup ADD CONSTRAINT FK_Setup_SetupBaseId FOREIGN KEY (SetupBaseId) REFERENCES SetupBase(SetupBaseId);
GO
ALTER TABLE Setup ADD CONSTRAINT FK_Setup_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldStrLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldStrLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldStrLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldStrLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE CurrentStatus ADD CONSTRAINT FK_CurrentStatus_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE CurrentStatus ADD CONSTRAINT FK_CurrentStatus_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE CurrentStatus ADD CONSTRAINT FK_CurrentStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CurrentStatus ADD CONSTRAINT FK_CurrentStatus_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE CurrentStatus ADD CONSTRAINT FK_CurrentStatus_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE BPSpecBizRuleTxnMap ADD CONSTRAINT FK_BPSpecBizRuleTxnMap_BusinessProcessSpecId FOREIGN KEY (BusinessProcessSpecId) REFERENCES BusinessProcessSpec(BusinessProcessSpecId);
GO
ALTER TABLE BPSpecBizRuleTxnMap ADD CONSTRAINT FK_BPSpecBizRuleTxnMap_BusinessRuleId FOREIGN KEY (BusinessRuleId) REFERENCES BusinessRule(BusinessRuleId);
GO
ALTER TABLE PlanTemplateonCompleteRules ADD CONSTRAINT FK_PlanTemplateonCompleteRules_PlanTemplateId FOREIGN KEY (PlanTemplateId) REFERENCES PlanTemplate(PlanTemplateId);
GO
ALTER TABLE ActivityNewProcessObjects ADD CONSTRAINT FK_ActivityNewProcessObjects_ActivityId FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId);
GO
ALTER TABLE NCRCommentsHistory ADD CONSTRAINT FK_NCRCommentsHistory_NCRUpdateHistoryDetailId FOREIGN KEY (NCRUpdateHistoryDetailId) REFERENCES NCRUpdateHistoryDetail(NCRUpdateHistoryDetailId);
GO
ALTER TABLE A_JobOrderDetail ADD CONSTRAINT FK_A_JobOrderDetail_JobOrderId FOREIGN KEY (JobOrderId) REFERENCES A_JobOrder(JobOrderId);
GO
ALTER TABLE A_JobOrderDetail ADD CONSTRAINT FK_A_JobOrderDetail_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_isPreactorScheduleId FOREIGN KEY (isPreactorScheduleId) REFERENCES isPreactorSchedule(isPreactorScheduleId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE isPreactorScheduledOrders ADD CONSTRAINT FK_isPreactorScheduledOrders_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE SpecBase ADD CONSTRAINT FK_SpecBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES Spec(SpecId);
GO
ALTER TABLE fujLotComps ADD CONSTRAINT FK_fujLotComps_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ResourceGroupDftForObjTypes ADD CONSTRAINT FK_ResourceGroupDftForObjTypes_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE WIPMsgConfigOperationsExcluded ADD CONSTRAINT FK_WIPMsgConfigOperationsExcluded_WIPMsgConfigId FOREIGN KEY (WIPMsgConfigId) REFERENCES WIPMsgConfig(WIPMsgConfigId);
GO
ALTER TABLE TrainingReqGroupEntries ADD CONSTRAINT FK_TrainingReqGroupEntries_TrainingRequirementGroupId FOREIGN KEY (TrainingRequirementGroupId) REFERENCES TrainingRequirementGroup(TrainingRequirementGroupId);
GO
ALTER TABLE SetupBase ADD CONSTRAINT FK_SetupBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES Setup(SetupId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldTmsLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldTmsLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsOldTmsLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsOldTmsLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE UOM ADD CONSTRAINT FK_UOM_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE UOM ADD CONSTRAINT FK_UOM_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ES_PanelCfgExceptions ADD CONSTRAINT FK_ES_PanelCfgExceptions_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE BusinessProcessSpec ADD CONSTRAINT FK_BusinessProcessSpec_BusinessProcessSpecBaseId FOREIGN KEY (BusinessProcessSpecBaseId) REFERENCES BusinessProcessSpecBase(BusinessProcessSpecBaseId);
GO
ALTER TABLE BusinessProcessSpec ADD CONSTRAINT FK_BusinessProcessSpec_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE PlanTemplateonStartRules ADD CONSTRAINT FK_PlanTemplateonStartRules_PlanTemplateId FOREIGN KEY (PlanTemplateId) REFERENCES PlanTemplate(PlanTemplateId);
GO
ALTER TABLE ActivityonExecuteRules ADD CONSTRAINT FK_ActivityonExecuteRules_ActivityId FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId);
GO
ALTER TABLE A_JobOrderTechnician ADD CONSTRAINT FK_A_JobOrderTechnician_JobOrderId FOREIGN KEY (JobOrderId) REFERENCES A_JobOrder(JobOrderId);
GO
ALTER TABLE fujManagementType ADD CONSTRAINT FK_fujManagementType_WorkCenterId FOREIGN KEY (WorkCenterId) REFERENCES WorkCenter(WorkCenterId);
GO
ALTER TABLE ResourceGroupGroups ADD CONSTRAINT FK_ResourceGroupGroups_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE DelegationTaskEntries ADD CONSTRAINT FK_DelegationTaskEntries_DelegationTaskId FOREIGN KEY (DelegationTaskId) REFERENCES DelegationTask(DelegationTaskId);
GO
ALTER TABLE WIPMsgConfigWIPMsgCntrEntities ADD CONSTRAINT FK_WIPMsgConfigWIPMsgCntrEntities_WIPMsgConfigId FOREIGN KEY (WIPMsgConfigId) REFERENCES WIPMsgConfig(WIPMsgConfigId);
GO
ALTER TABLE ContainerContainerSampleData ADD CONSTRAINT FK_ContainerContainerSampleData_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ContainerContainerSampleData ADD CONSTRAINT FK_ContainerContainerSampleData_ContainerSampleDataId FOREIGN KEY (ContainerSampleDataId) REFERENCES ContainerSampleData(ContainerSampleDataId);
GO
ALTER TABLE TrainingReqGroupGroups ADD CONSTRAINT FK_TrainingReqGroupGroups_TrainingRequirementGroupId FOREIGN KEY (TrainingRequirementGroupId) REFERENCES TrainingRequirementGroup(TrainingRequirementGroupId);
GO
ALTER TABLE ChgAttrHistoryHistoryDetails ADD CONSTRAINT FK_ChgAttrHistoryHistoryDetails_ChgAttrHistoryId FOREIGN KEY (ChgAttrHistoryId) REFERENCES ChgAttrHistory(ChgAttrHistoryId);
GO
ALTER TABLE ES_PanelInformation ADD CONSTRAINT FK_ES_PanelInformation_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE BusinessProcessSpecBase ADD CONSTRAINT FK_BusinessProcessSpecBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES BusinessProcessSpec(BusinessProcessSpecId);
GO
ALTER TABLE PlanTemplateOrganizations ADD CONSTRAINT FK_PlanTemplateOrganizations_PlanTemplateId FOREIGN KEY (PlanTemplateId) REFERENCES PlanTemplate(PlanTemplateId);
GO
ALTER TABLE ActivityPlanESigHistoryDetails ADD CONSTRAINT FK_ActivityPlanESigHistoryDetails_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE NCRCreateHistory ADD CONSTRAINT FK_NCRCreateHistory_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE NCRCreateHistory ADD CONSTRAINT FK_NCRCreateHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE NCRCreateHistory ADD CONSTRAINT FK_NCRCreateHistory_NCRFailureTypeId FOREIGN KEY (NCRFailureTypeId) REFERENCES NCRFailureType(NCRFailureTypeId);
GO
ALTER TABLE isRecipePlanDetails ADD CONSTRAINT FK_isRecipePlanDetails_isRecipePlanId FOREIGN KEY (isRecipePlanId) REFERENCES isRecipePlan(isRecipePlanId);
GO
ALTER TABLE isRecipePlanDetails ADD CONSTRAINT FK_isRecipePlanDetails_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE isRecipePlanDetails ADD CONSTRAINT FK_isRecipePlanDetails_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE isRecipePlanDetails ADD CONSTRAINT FK_isRecipePlanDetails_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE fujModifyCompsHistory ADD CONSTRAINT FK_fujModifyCompsHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ResourceLogs ADD CONSTRAINT FK_ResourceLogs_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE QtyHistoryDetails ADD CONSTRAINT FK_QtyHistoryDetails_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE QtyHistoryDetails ADD CONSTRAINT FK_QtyHistoryDetails_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE QtyHistoryDetails ADD CONSTRAINT FK_QtyHistoryDetails_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE QtyHistoryDetails ADD CONSTRAINT FK_QtyHistoryDetails_QtyHistoryId FOREIGN KEY (QtyHistoryId) REFERENCES QtyHistory(QtyHistoryId);
GO
ALTER TABLE QtyHistoryDetails ADD CONSTRAINT FK_QtyHistoryDetails_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE DeleteContainer ADD CONSTRAINT FK_DeleteContainer_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ContainerCurrentCrossRefs ADD CONSTRAINT FK_ContainerCurrentCrossRefs_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE TrainingReqGrpDfltForObjTypes ADD CONSTRAINT FK_TrainingReqGrpDfltForObjTypes_TrainingRequirementGroupId FOREIGN KEY (TrainingRequirementGroupId) REFERENCES TrainingRequirementGroup(TrainingRequirementGroupId);
GO
ALTER TABLE ChgAttrHistoryNewObjects ADD CONSTRAINT FK_ChgAttrHistoryNewObjects_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryNewObjects ADD CONSTRAINT FK_ChgAttrHistoryNewObjects_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE BusinessProcessWorkflow ADD CONSTRAINT FK_BusinessProcessWorkflow_BusinessProcessWorkflowBaseId FOREIGN KEY (BusinessProcessWorkflowBaseId) REFERENCES BusinessProcessWorkflowBase(BusinessProcessWorkflowBaseId);
GO
ALTER TABLE BusinessProcessWorkflow ADD CONSTRAINT FK_BusinessProcessWorkflow_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE DeleteHistory ADD CONSTRAINT FK_DeleteHistory_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ActivityPlanEventLots ADD CONSTRAINT FK_ActivityPlanEventLots_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE NCRCreateHistoryFailureCodes ADD CONSTRAINT FK_NCRCreateHistoryFailureCodes_NCRCreateHistoryId FOREIGN KEY (NCRCreateHistoryId) REFERENCES NCRCreateHistory(NCRCreateHistoryId);
GO
ALTER TABLE ResourcePMStatus ADD CONSTRAINT FK_ResourcePMStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE QtyHistory ADD CONSTRAINT FK_QtyHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE QtyHistory ADD CONSTRAINT FK_QtyHistory_MasterRecipeId FOREIGN KEY (MasterRecipeId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE QtyHistory ADD CONSTRAINT FK_QtyHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE QtyHistory ADD CONSTRAINT FK_QtyHistory_RollupReasonId FOREIGN KEY (RollupReasonId) REFERENCES RollupReason(RollupReasonId);
GO
ALTER TABLE DeleteHistoryLimit ADD CONSTRAINT FK_DeleteHistoryLimit_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE WIPMsgDetails ADD CONSTRAINT FK_WIPMsgDetails_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE WIPMsgDetails ADD CONSTRAINT FK_WIPMsgDetails_DocumentBaseId FOREIGN KEY (DocumentBaseId) REFERENCES DocumentBase(DocumentBaseId);
GO
ALTER TABLE WIPMsgDetails ADD CONSTRAINT FK_WIPMsgDetails_DocumentId FOREIGN KEY (DocumentId) REFERENCES Document(DocumentId);
GO
ALTER TABLE WIPMsgDetails ADD CONSTRAINT FK_WIPMsgDetails_HoldReasonId FOREIGN KEY (HoldReasonId) REFERENCES HoldReason(HoldReasonId);
GO
ALTER TABLE ContainerDefectHistoryDetail ADD CONSTRAINT FK_ContainerDefectHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ContainerDefectHistoryDetail ADD CONSTRAINT FK_ContainerDefectHistoryDetail_DefectHistoryId FOREIGN KEY (DefectHistoryId) REFERENCES DefectHistory(DefectHistoryId);
GO
ALTER TABLE TrainingRequirement ADD CONSTRAINT FK_TrainingRequirement_TrainingRequirementBaseId FOREIGN KEY (TrainingRequirementBaseId) REFERENCES TrainingRequirementBase(TrainingRequirementBaseId);
GO
ALTER TABLE TrainingRequirement ADD CONSTRAINT FK_TrainingRequirement_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ShipmentDestination ADD CONSTRAINT FK_ShipmentDestination_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE ShipmentDestination ADD CONSTRAINT FK_ShipmentDestination_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE ShipmentDestination ADD CONSTRAINT FK_ShipmentDestination_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE ChgAttrHistoryOldObjects ADD CONSTRAINT FK_ChgAttrHistoryOldObjects_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryOldObjects ADD CONSTRAINT FK_ChgAttrHistoryOldObjects_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE BusinessProcessWorkflowBase ADD CONSTRAINT FK_BusinessProcessWorkflowBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES BusinessProcessWorkflow(BusinessProcessWorkflowId);
GO
ALTER TABLE PortalMenuItem ADD CONSTRAINT FK_PortalMenuItem_MenuDefinitionId FOREIGN KEY (MenuDefinitionId) REFERENCES MenuDefinition(MenuDefinitionId);
GO
ALTER TABLE ActivityPlanonCompleteRules ADD CONSTRAINT FK_ActivityPlanonCompleteRules_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE NCRCurrentCrossRefs ADD CONSTRAINT FK_NCRCurrentCrossRefs_NonconformanceReportId FOREIGN KEY (NonconformanceReportId) REFERENCES NonconformanceReport(NonconformanceReportId);
GO
ALTER TABLE isRepairActionGroupDefaultForO ADD CONSTRAINT FK_isRepairActionGroupDefaultForO_isRepairActionGroupId FOREIGN KEY (isRepairActionGroupId) REFERENCES isRepairActionGroup(isRepairActionGroupId);
GO
ALTER TABLE CIOSettings ADD CONSTRAINT FK_CIOSettings_CIOCamstarConnectionId FOREIGN KEY (CIOCamstarConnectionId) REFERENCES CIOCamstarConnection(CIOCamstarConnectionId);
GO
ALTER TABLE Path ADD CONSTRAINT FK_Path_TxnDetailsId FOREIGN KEY (TxnDetailsId) REFERENCES TxnDetails(TxnDetailsId);
GO
ALTER TABLE fujModifyCompsHistoryHistoryDe ADD CONSTRAINT FK_fujModifyCompsHistoryHistoryDe_fujModifyCompsHistoryId FOREIGN KEY (fujModifyCompsHistoryId) REFERENCES fujModifyCompsHistory(fujModifyCompsHistoryId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_MasterRecipeId FOREIGN KEY (MasterRecipeId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_PriorityCodeId FOREIGN KEY (PriorityCodeId) REFERENCES PriorityCode(PriorityCodeId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_RecipeListId FOREIGN KEY (RecipeListId) REFERENCES RecipeList(RecipeListId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_SalesOrderId FOREIGN KEY (SalesOrderId) REFERENCES SalesOrder(SalesOrderId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_StartReasonId FOREIGN KEY (StartReasonId) REFERENCES StartReason(StartReasonId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE StartHistoryDetail ADD CONSTRAINT FK_StartHistoryDetail_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE WIPMsgDetailsNotificationTrgts ADD CONSTRAINT FK_WIPMsgDetailsNotificationTrgts_WIPMsgDetailsId FOREIGN KEY (WIPMsgDetailsId) REFERENCES WIPMsgDetails(WIPMsgDetailsId);
GO
ALTER TABLE TrainingRequirementBase ADD CONSTRAINT FK_TrainingRequirementBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES TrainingRequirement(TrainingRequirementId);
GO
ALTER TABLE ChgContainerAttrHistory ADD CONSTRAINT FK_ChgContainerAttrHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE BusinessRule ADD CONSTRAINT FK_BusinessRule_BusinessRuleDataId FOREIGN KEY (BusinessRuleDataId) REFERENCES BusinessRuleData(BusinessRuleDataId);
GO
ALTER TABLE DeployToTargets ADD CONSTRAINT FK_DeployToTargets_TargetSystemId FOREIGN KEY (TargetSystemId) REFERENCES TargetSystem(TargetSystemId);
GO
ALTER TABLE ActivityPlanonStartRules ADD CONSTRAINT FK_ActivityPlanonStartRules_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE NCRDefectData ADD CONSTRAINT FK_NCRDefectData_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE NCRDefectData ADD CONSTRAINT FK_NCRDefectData_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_JobTechnician ADD CONSTRAINT FK_A_JobTechnician_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE isRepairActionGroupEntries ADD CONSTRAINT FK_isRepairActionGroupEntries_isRepairActionGroupId FOREIGN KEY (isRepairActionGroupId) REFERENCES isRepairActionGroup(isRepairActionGroupId);
GO
ALTER TABLE CIOSettingsServiceBindings ADD CONSTRAINT FK_CIOSettingsServiceBindings_CIOSettingsId FOREIGN KEY (CIOSettingsId) REFERENCES CIOSettings(CIOSettingsId);
GO
ALTER TABLE ResourceStatusCodeGroupDef ADD CONSTRAINT FK_ResourceStatusCodeGroupDef_ResourceStatusCodeGroupId FOREIGN KEY (ResourceStatusCodeGroupId) REFERENCES ResourceStatusCodeGroup(ResourceStatusCodeGroupId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE MoveInHistory ADD CONSTRAINT FK_MoveInHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE WIPMsgHistoryDetail ADD CONSTRAINT FK_WIPMsgHistoryDetail_DocumentId FOREIGN KEY (DocumentId) REFERENCES Document(DocumentId);
GO
ALTER TABLE WIPMsgHistoryDetail ADD CONSTRAINT FK_WIPMsgHistoryDetail_WIPMsgDetailsId FOREIGN KEY (WIPMsgDetailsId) REFERENCES WIPMsgDetails(WIPMsgDetailsId);
GO
ALTER TABLE ContainerDetail ADD CONSTRAINT FK_ContainerDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ShipmentDestinationGrpEntries ADD CONSTRAINT FK_ShipmentDestinationGrpEntries_ShipmentDestinationGrpId FOREIGN KEY (ShipmentDestinationGrpId) REFERENCES ShipmentDestinationGrp(ShipmentDestinationGrpId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_PhysicalLocationId FOREIGN KEY (PhysicalLocationId) REFERENCES A_PhysicalLocation(PhysicalLocationId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_PhysicalPositionId FOREIGN KEY (PhysicalPositionId) REFERENCES A_PhysicalPosition(PhysicalPositionId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_ResourceStatusCodeId FOREIGN KEY (ResourceStatusCodeId) REFERENCES ResourceStatusCode(ResourceStatusCodeId);
GO
ALTER TABLE ResourceStatusHistory ADD CONSTRAINT FK_ResourceStatusHistory_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE ChgObjectListHistoryDetails ADD CONSTRAINT FK_ChgObjectListHistoryDetails_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgObjectListHistoryDetails ADD CONSTRAINT FK_ChgObjectListHistoryDetails_ChgAttrHistoryId FOREIGN KEY (ChgAttrHistoryId) REFERENCES ChgAttrHistory(ChgAttrHistoryId);
GO
ALTER TABLE ES_ToolPlanMatrixDetails ADD CONSTRAINT FK_ES_ToolPlanMatrixDetails_ES_ToolPlanMatrixId FOREIGN KEY (ES_ToolPlanMatrixId) REFERENCES ES_ToolPlanMatrix(ES_ToolPlanMatrixId);
GO
ALTER TABLE ES_ToolPlanMatrixDetails ADD CONSTRAINT FK_ES_ToolPlanMatrixDetails_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ES_ToolPlanMatrixDetails ADD CONSTRAINT FK_ES_ToolPlanMatrixDetails_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE ES_ToolPlanMatrixDetails ADD CONSTRAINT FK_ES_ToolPlanMatrixDetails_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ES_ToolPlanMatrixDetails ADD CONSTRAINT FK_ES_ToolPlanMatrixDetails_ToolPlanId FOREIGN KEY (ToolPlanId) REFERENCES A_ToolPlan(ToolPlanId);
GO
ALTER TABLE BusinessRuleData ADD CONSTRAINT FK_BusinessRuleData_BusinessRuleId FOREIGN KEY (BusinessRuleId) REFERENCES BusinessRule(BusinessRuleId);
GO
ALTER TABLE DesignateProcessObjectHistory ADD CONSTRAINT FK_DesignateProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE DesignateProcessObjectHistory ADD CONSTRAINT FK_DesignateProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ActivityPlanPrerequisites ADD CONSTRAINT FK_ActivityPlanPrerequisites_PlanId FOREIGN KEY (PlanId) REFERENCES ActivityPlan(PlanId);
GO
ALTER TABLE NCRDefectHistoryDetails ADD CONSTRAINT FK_NCRDefectHistoryDetails_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE NCRDefectHistoryDetails ADD CONSTRAINT FK_NCRDefectHistoryDetails_IssueActualsHistoryId FOREIGN KEY (IssueActualsHistoryId) REFERENCES IssueActualsHistory(IssueActualsHistoryId);
GO
ALTER TABLE NCRDefectHistoryDetails ADD CONSTRAINT FK_NCRDefectHistoryDetails_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_JobTxnHistory ADD CONSTRAINT FK_A_JobTxnHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_JobTxnHistory ADD CONSTRAINT FK_A_JobTxnHistory_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE A_JobTxnHistory ADD CONSTRAINT FK_A_JobTxnHistory_JobModelId FOREIGN KEY (JobModelId) REFERENCES A_JobModel(JobModelId);
GO
ALTER TABLE A_JobTxnHistory ADD CONSTRAINT FK_A_JobTxnHistory_JobOrderId FOREIGN KEY (JobOrderId) REFERENCES A_JobOrder(JobOrderId);
GO
ALTER TABLE isRepairActionGroupGroups ADD CONSTRAINT FK_isRepairActionGroupGroups_isRepairActionGroupId FOREIGN KEY (isRepairActionGroupId) REFERENCES isRepairActionGroup(isRepairActionGroupId);
GO
ALTER TABLE CIOShopfloorDataPointItem ADD CONSTRAINT FK_CIOShopfloorDataPointItem_CIOSubscriptionItemId FOREIGN KEY (CIOSubscriptionItemId) REFERENCES CIOSubscriptionItem(CIOSubscriptionItemId);
GO
ALTER TABLE ResourceStatusCodeStatusReason ADD CONSTRAINT FK_ResourceStatusCodeStatusReason_ResourceStatusCodeId FOREIGN KEY (ResourceStatusCodeId) REFERENCES ResourceStatusCode(ResourceStatusCodeId);
GO
ALTER TABLE WIPMsgKey ADD CONSTRAINT FK_WIPMsgKey_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE TrainingRequirementTrainers ADD CONSTRAINT FK_TrainingRequirementTrainers_TrainingRequirementId FOREIGN KEY (TrainingRequirementId) REFERENCES TrainingRequirement(TrainingRequirementId);
GO
ALTER TABLE ShipmentDestinationGrpGroups ADD CONSTRAINT FK_ShipmentDestinationGrpGroups_ShipmentDestinationGrpId FOREIGN KEY (ShipmentDestinationGrpId) REFERENCES ShipmentDestinationGrp(ShipmentDestinationGrpId);
GO
ALTER TABLE ChgObjLstHistoryDetailsNewObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsNewObjs_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgObjLstHistoryDetailsNewObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsNewObjs_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgObjLstHistoryDetailsNewObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsNewObjs_NewObjectsId FOREIGN KEY (NewObjectsId) REFERENCES ChgAttrHistoryNewObjects(NewObjectsId);
GO
ALTER TABLE BusinessRuleDataHandlers ADD CONSTRAINT FK_BusinessRuleDataHandlers_BusinessRuleDataId FOREIGN KEY (BusinessRuleDataId) REFERENCES BusinessRuleData(BusinessRuleDataId);
GO
ALTER TABLE PrinterLabelDefinition ADD CONSTRAINT FK_PrinterLabelDefinition_PrinterLabelDefinitionBaseId FOREIGN KEY (PrinterLabelDefinitionBaseId) REFERENCES PrinterLabelDefinitionBase(PrinterLabelDefinitionBaseId);
GO
ALTER TABLE PrinterLabelDefinition ADD CONSTRAINT FK_PrinterLabelDefinition_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ActivityPrerequisites ADD CONSTRAINT FK_ActivityPrerequisites_ActivityId FOREIGN KEY (ActivityId) REFERENCES Activity(ActivityId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_NCRCauseCodeId FOREIGN KEY (NCRCauseCodeId) REFERENCES NCRCauseCode(NCRCauseCodeId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_NCRResolutionCodeId FOREIGN KEY (NCRResolutionCodeId) REFERENCES NCRResolutionCode(NCRResolutionCodeId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_NonconformanceReportId FOREIGN KEY (NonconformanceReportId) REFERENCES NonconformanceReport(NonconformanceReportId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE NCREscalateHistory ADD CONSTRAINT FK_NCREscalateHistory_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE A_JobTxnHistoryDetail ADD CONSTRAINT FK_A_JobTxnHistoryDetail_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_JobTxnHistoryDetail ADD CONSTRAINT FK_A_JobTxnHistoryDetail_JobTxnHistoryId FOREIGN KEY (JobTxnHistoryId) REFERENCES A_JobTxnHistory(JobTxnHistoryId);
GO
ALTER TABLE isRepairActionList ADD CONSTRAINT FK_isRepairActionList_isRepairActionId FOREIGN KEY (isRepairActionId) REFERENCES isRepairAction(isRepairActionId);
GO
ALTER TABLE CIOSMSEntry ADD CONSTRAINT FK_CIOSMSEntry_UserQueryId FOREIGN KEY (UserQueryId) REFERENCES UserQuery(UserQueryId);
GO
ALTER TABLE FunctionDefinition ADD CONSTRAINT FK_FunctionDefinition_FunctionTypeID FOREIGN KEY (FunctionTypeID) REFERENCES FunctionTypes(FunctionTypeID);
GO
ALTER TABLE ResourceStatusDiagram ADD CONSTRAINT FK_ResourceStatusDiagram_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_PathId FOREIGN KEY (PathId) REFERENCES Path(PathId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_ReworkReasonId FOREIGN KEY (ReworkReasonId) REFERENCES ReworkReason(ReworkReasonId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_ShipmentDestinationId FOREIGN KEY (ShipmentDestinationId) REFERENCES ShipmentDestination(ShipmentDestinationId);
GO
ALTER TABLE MoveHistory ADD CONSTRAINT FK_MoveHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE WIPMsgLabelKey ADD CONSTRAINT FK_WIPMsgLabelKey_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ShippingReason ADD CONSTRAINT FK_ShippingReason_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE FunctionTypes ADD CONSTRAINT FK_FunctionTypes_CLFTypeID FOREIGN KEY (CLFTypeID) REFERENCES CLFTypes(CLFTypeID);
GO
ALTER TABLE ChgObjLstHistoryDetailsOldObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsOldObjs_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgObjLstHistoryDetailsOldObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsOldObjs_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgObjLstHistoryDetailsOldObjs ADD CONSTRAINT FK_ChgObjLstHistoryDetailsOldObjs_OldObjectsId FOREIGN KEY (OldObjectsId) REFERENCES ChgAttrHistoryOldObjects(OldObjectsId);
GO
ALTER TABLE ESigHistoryDetail ADD CONSTRAINT FK_ESigHistoryDetail_ESigHistorySummaryId FOREIGN KEY (ESigHistorySummaryId) REFERENCES ESigHistorySummary(ESigHistorySummaryId);
GO
ALTER TABLE PrinterLabelDefinitionBase ADD CONSTRAINT FK_PrinterLabelDefinitionBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE ActivityTemplate ADD CONSTRAINT FK_ActivityTemplate_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE ActivityTemplate ADD CONSTRAINT FK_ActivityTemplate_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE ActivityTemplate ADD CONSTRAINT FK_ActivityTemplate_DispositionId FOREIGN KEY (DispositionId) REFERENCES Disposition(DispositionId);
GO
ALTER TABLE ActivityTemplate ADD CONSTRAINT FK_ActivityTemplate_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE NCREscalateHistoryHistoryDetai ADD CONSTRAINT FK_NCREscalateHistoryHistoryDetai_NCREscalateHistoryId FOREIGN KEY (NCREscalateHistoryId) REFERENCES NCREscalateHistory(NCREscalateHistoryId);
GO
ALTER TABLE A_MaintenanceReqChecklist ADD CONSTRAINT FK_A_MaintenanceReqChecklist_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_MaintenanceReqChecklist ADD CONSTRAINT FK_A_MaintenanceReqChecklist_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE A_MaintenanceReqChecklist ADD CONSTRAINT FK_A_MaintenanceReqChecklist_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE A_MaintenanceReqChecklist ADD CONSTRAINT FK_A_MaintenanceReqChecklist_EmployeeGroupId FOREIGN KEY (EmployeeGroupId) REFERENCES A_EmployeeGroup(EmployeeGroupId);
GO
ALTER TABLE A_MaintenanceReqChecklist ADD CONSTRAINT FK_A_MaintenanceReqChecklist_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE isReplenishThresholdDetails ADD CONSTRAINT FK_isReplenishThresholdDetails_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_CalendarShiftId FOREIGN KEY (CalendarShiftId) REFERENCES CalendarShift(CalendarShiftId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ComputationHistoryId FOREIGN KEY (ComputationHistoryId) REFERENCES ComputationHistory(ComputationHistoryId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ResourceStatusCodeId FOREIGN KEY (ResourceStatusCodeId) REFERENCES ResourceStatusCode(ResourceStatusCodeId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_ResourceStatusReasonId FOREIGN KEY (ResourceStatusReasonId) REFERENCES ResourceStatusReason(ResourceStatusReasonId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE HistoryMainline ADD CONSTRAINT FK_HistoryMainline_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE WIPMsgOperationKey ADD CONSTRAINT FK_WIPMsgOperationKey_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE WIPMsgOperationKey ADD CONSTRAINT FK_WIPMsgOperationKey_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ContainerGroupEntries ADD CONSTRAINT FK_ContainerGroupEntries_ContainerGroupId FOREIGN KEY (ContainerGroupId) REFERENCES ContainerGroup(ContainerGroupId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_BOMId FOREIGN KEY (BOMId) REFERENCES BOM(BOMId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ProductMaterialListItem ADD CONSTRAINT FK_ProductMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE FunParmDef ADD CONSTRAINT FK_FunParmDef_DataTypeID FOREIGN KEY (DataTypeID) REFERENCES CPPDataTypes(DataTypeID);
GO
ALTER TABLE FunParmDef ADD CONSTRAINT FK_FunParmDef_FunctionParmUsageId FOREIGN KEY (FunctionParmUsageId) REFERENCES FunParmUsage(FunctionParmUsageId);
GO
ALTER TABLE CIOAttribute ADD CONSTRAINT FK_CIOAttribute_CIOFunctionId FOREIGN KEY (CIOFunctionId) REFERENCES CIOFunction(CIOFunctionId);
GO
ALTER TABLE ESigHistorySummary ADD CONSTRAINT FK_ESigHistorySummary_ESigReqDetailId FOREIGN KEY (ESigReqDetailId) REFERENCES ESigReqDetail(ESigReqDetailId);
GO
ALTER TABLE ESigHistorySummary ADD CONSTRAINT FK_ESigHistorySummary_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ESigHistorySummary ADD CONSTRAINT FK_ESigHistorySummary_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE BusinessRuleHandler ADD CONSTRAINT FK_BusinessRuleHandler_BusinessRuleHandlerDataId FOREIGN KEY (BusinessRuleHandlerDataId) REFERENCES BusinessRuleHandlerData(BusinessRuleHandlerDataId);
GO
ALTER TABLE PrintLabelHistory ADD CONSTRAINT FK_PrintLabelHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE PrintLabelHistory ADD CONSTRAINT FK_PrintLabelHistory_PrinterLabelDefinitionId FOREIGN KEY (PrinterLabelDefinitionId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE PrintLabelHistory ADD CONSTRAINT FK_PrintLabelHistory_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE DisallowedTxns ADD CONSTRAINT FK_DisallowedTxns_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE ActivityTemplateonExecuteRules ADD CONSTRAINT FK_ActivityTemplateonExecuteRules_ActivityTemplateId FOREIGN KEY (ActivityTemplateId) REFERENCES ActivityTemplate(ActivityTemplateId);
GO
ALTER TABLE NCREscalateHistoryNCRFailureCo ADD CONSTRAINT FK_NCREscalateHistoryNCRFailureCo_NCREscalateHistoryId FOREIGN KEY (NCREscalateHistoryId) REFERENCES NCREscalateHistory(NCREscalateHistoryId);
GO
ALTER TABLE A_MaintenanceStatusChecklist ADD CONSTRAINT FK_A_MaintenanceStatusChecklist_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_MaintenanceStatusChecklist ADD CONSTRAINT FK_A_MaintenanceStatusChecklist_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE A_MaintenanceStatusChecklist ADD CONSTRAINT FK_A_MaintenanceStatusChecklist_MaintenanceStatusId FOREIGN KEY (MaintenanceStatusId) REFERENCES MaintenanceStatus(MaintenanceStatusId);
GO
ALTER TABLE isResolvedDowntimeSchd ADD CONSTRAINT FK_isResolvedDowntimeSchd_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ResourceStatusModelDetails ADD CONSTRAINT FK_ResourceStatusModelDetails_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE WorkflowBase ADD CONSTRAINT FK_WorkflowBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE WorkflowStepPathSelectors ADD CONSTRAINT FK_WorkflowStepPathSelectors_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE ContainerGroupGroups ADD CONSTRAINT FK_ContainerGroupGroups_ContainerGroupId FOREIGN KEY (ContainerGroupId) REFERENCES ContainerGroup(ContainerGroupId);
GO
ALTER TABLE TriageQualityObjectHistory ADD CONSTRAINT FK_TriageQualityObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE TriageQualityObjectHistory ADD CONSTRAINT FK_TriageQualityObjectHistory_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE TriageQualityObjectHistory ADD CONSTRAINT FK_TriageQualityObjectHistory_ProcessModelTemplateId FOREIGN KEY (ProcessModelTemplateId) REFERENCES ProcessModelTemplate(ProcessModelTemplateId);
GO
ALTER TABLE TriageQualityObjectHistory ADD CONSTRAINT FK_TriageQualityObjectHistory_TriageSpecDetailId FOREIGN KEY (TriageSpecDetailId) REFERENCES TriageSpecDetail(TriageSpecDetailId);
GO
ALTER TABLE Site ADD CONSTRAINT FK_Site_SiteName FOREIGN KEY (SiteName) REFERENCES DBIdentifier(SiteName);
GO
ALTER TABLE BusinessRuleHandlerData ADD CONSTRAINT FK_BusinessRuleHandlerData_BusinessRuleHandlerId FOREIGN KEY (BusinessRuleHandlerId) REFERENCES BusinessRuleHandler(BusinessRuleHandlerId);
GO
ALTER TABLE DisassociateHistory ADD CONSTRAINT FK_DisassociateHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ActivityTemplateOrganizations ADD CONSTRAINT FK_ActivityTemplateOrganizations_ActivityTemplateId FOREIGN KEY (ActivityTemplateId) REFERENCES ActivityTemplate(ActivityTemplateId);
GO
ALTER TABLE NCRFailCodeGrpDefForObjTypes ADD CONSTRAINT FK_NCRFailCodeGrpDefForObjTypes_NCRFailureCodeGroupId FOREIGN KEY (NCRFailureCodeGroupId) REFERENCES NCRFailureCodeGroup(NCRFailureCodeGroupId);
GO
ALTER TABLE A_MfgOrderMaterialListItemSub ADD CONSTRAINT FK_A_MfgOrderMaterialListItemSub_MfgOrderMaterialListItemId FOREIGN KEY (MfgOrderMaterialListItemId) REFERENCES MfgOrderMaterialListItem(MfgOrderMaterialListItemId);
GO
ALTER TABLE CIOSubscriptResCnvtrItem ADD CONSTRAINT FK_CIOSubscriptResCnvtrItem_CIOSubscriptionItemId FOREIGN KEY (CIOSubscriptionItemId) REFERENCES CIOSubscriptionItem(CIOSubscriptionItemId);
GO
ALTER TABLE GateStatus ADD CONSTRAINT FK_GateStatus_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE ResourceThruputHistory ADD CONSTRAINT FK_ResourceThruputHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE Workflow ADD CONSTRAINT FK_Workflow_ERPRouteBaseId FOREIGN KEY (ERPRouteBaseId) REFERENCES ERPRouteBase(ERPRouteBaseId);
GO
ALTER TABLE Workflow ADD CONSTRAINT FK_Workflow_ERPRouteId FOREIGN KEY (ERPRouteId) REFERENCES ERPRoute(ERPRouteId);
GO
ALTER TABLE Workflow ADD CONSTRAINT FK_Workflow_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE Workflow ADD CONSTRAINT FK_Workflow_WorkflowBaseId FOREIGN KEY (WorkflowBaseId) REFERENCES WorkflowBase(WorkflowBaseId);
GO
ALTER TABLE ContainerGrpDftForObjTypes ADD CONSTRAINT FK_ContainerGrpDftForObjTypes_ContainerGroupId FOREIGN KEY (ContainerGroupId) REFERENCES ContainerGroup(ContainerGroupId);
GO
ALTER TABLE SiteInfoKeyList ADD CONSTRAINT FK_SiteInfoKeyList_RecID FOREIGN KEY (RecID) REFERENCES InsiteKeyList(RecID);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_CAPACustomDataId FOREIGN KEY (CAPACustomDataId) REFERENCES CAPACustomData(CAPACustomDataId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_CARSeverityId FOREIGN KEY (CARSeverityId) REFERENCES CARSeverity(CARSeverityId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_QualityResolutionCodeId FOREIGN KEY (QualityResolutionCodeId) REFERENCES QualityResolutionCode(QualityResolutionCodeId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_RiskAssessmentId FOREIGN KEY (RiskAssessmentId) REFERENCES RiskAssessment(RiskAssessmentId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE CAPA ADD CONSTRAINT FK_CAPA_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE ESigReqDetail ADD CONSTRAINT FK_ESigReqDetail_ESigMeaningId FOREIGN KEY (ESigMeaningId) REFERENCES ESigMeaning(ESigMeaningId);
GO
ALTER TABLE ESigReqDetail ADD CONSTRAINT FK_ESigReqDetail_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE BusinessRuleParameterValues ADD CONSTRAINT FK_BusinessRuleParameterValues_BusinessRuleExecutionHistoryId FOREIGN KEY (BusinessRuleExecutionHistoryId) REFERENCES BusinessRuleExecutionHistory(BusinessRuleExecutionHistoryId);
GO
ALTER TABLE DisassociateHistoryChildCnts ADD CONSTRAINT FK_DisassociateHistoryChildCnts_DisassociateHistoryId FOREIGN KEY (DisassociateHistoryId) REFERENCES DisassociateHistory(DisassociateHistoryId);
GO
ALTER TABLE AddSPCAnnotationHistory ADD CONSTRAINT FK_AddSPCAnnotationHistory_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE AddSPCAnnotationHistory ADD CONSTRAINT FK_AddSPCAnnotationHistory_DataPointId FOREIGN KEY (DataPointId) REFERENCES DataPoint(DataPointId);
GO
ALTER TABLE AddSPCAnnotationHistory ADD CONSTRAINT FK_AddSPCAnnotationHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CIOSystemDispatchRule ADD CONSTRAINT FK_CIOSystemDispatchRule_CIOWorkflowBaseId FOREIGN KEY (CIOWorkflowBaseId) REFERENCES CIOWorkflowBase(CIOWorkflowBaseId);
GO
ALTER TABLE CIOSystemDispatchRule ADD CONSTRAINT FK_CIOSystemDispatchRule_CIOWorkflowId FOREIGN KEY (CIOWorkflowId) REFERENCES CIOWorkflow(CIOWorkflowId);
GO
ALTER TABLE GateStatusCompletedSteps ADD CONSTRAINT FK_GateStatusCompletedSteps_GateStatusId FOREIGN KEY (GateStatusId) REFERENCES GateStatus(GateStatusId);
GO
ALTER TABLE ResourceThruputHistoryDetails ADD CONSTRAINT FK_ResourceThruputHistoryDetails_ResourceThruputHistoryId FOREIGN KEY (ResourceThruputHistoryId) REFERENCES ResourceThruputHistory(ResourceThruputHistoryId);
GO
ALTER TABLE ContainerisCurrentDefects ADD CONSTRAINT FK_ContainerisCurrentDefects_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE TriageSpecBusinessRules ADD CONSTRAINT FK_TriageSpecBusinessRules_TriageSpecId FOREIGN KEY (TriageSpecId) REFERENCES TriageSpec(TriageSpecId);
GO
ALTER TABLE SiteState ADD CONSTRAINT FK_SiteState_SiteName FOREIGN KEY (SiteName) REFERENCES DBIdentifier(SiteName);
GO
ALTER TABLE ResourceGroupEntries ADD CONSTRAINT FK_ResourceGroupEntries_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE ESigReqTxnMap ADD CONSTRAINT FK_ESigReqTxnMap_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE ButtonLabel ADD CONSTRAINT FK_ButtonLabel_UIFloatPageLayoutId FOREIGN KEY (UIFloatPageLayoutId) REFERENCES UIFloatPageLayout(UIFloatPageLayoutId);
GO
ALTER TABLE ProcessingGate ADD CONSTRAINT FK_ProcessingGate_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE DispatchDetail ADD CONSTRAINT FK_DispatchDetail_DispatchRuleId FOREIGN KEY (DispatchRuleId) REFERENCES DispatchRule(DispatchRuleId);
GO
ALTER TABLE A_PartRequestOrder ADD CONSTRAINT FK_A_PartRequestOrder_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE A_PartRequestOrder ADD CONSTRAINT FK_A_PartRequestOrder_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIOTemplate ADD CONSTRAINT FK_CIOTemplate_CIOTemplateBaseId FOREIGN KEY (CIOTemplateBaseId) REFERENCES CIOTemplateBase(CIOTemplateBaseId);
GO
ALTER TABLE CIOTemplate ADD CONSTRAINT FK_CIOTemplate_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE GateStatusStepsRemaining ADD CONSTRAINT FK_GateStatusStepsRemaining_GateStatusId FOREIGN KEY (GateStatusId) REFERENCES GateStatus(GateStatusId);
GO
ALTER TABLE ResourceType ADD CONSTRAINT FK_ResourceType_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE ResourceType ADD CONSTRAINT FK_ResourceType_UIPreferenceId FOREIGN KEY (UIPreferenceId) REFERENCES UIPreference(UIPreferenceId);
GO
ALTER TABLE ContainerLevelChildLevels ADD CONSTRAINT FK_ContainerLevelChildLevels_ContainerLevelId FOREIGN KEY (ContainerLevelId) REFERENCES ContainerLevel(ContainerLevelId);
GO
ALTER TABLE TriageSpecDetail ADD CONSTRAINT FK_TriageSpecDetail_ChecklistTemplateId FOREIGN KEY (ChecklistTemplateId) REFERENCES ChecklistTemplate(ChecklistTemplateId);
GO
ALTER TABLE TriageSpecDetail ADD CONSTRAINT FK_TriageSpecDetail_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE TriageSpecDetail ADD CONSTRAINT FK_TriageSpecDetail_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE TriageSpecDetail ADD CONSTRAINT FK_TriageSpecDetail_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE TriageSpecDetail ADD CONSTRAINT FK_TriageSpecDetail_TriageSpecId FOREIGN KEY (TriageSpecId) REFERENCES TriageSpec(TriageSpecId);
GO
ALTER TABLE SPCChartDef ADD CONSTRAINT FK_SPCChartDef_EMailMessageId FOREIGN KEY (EMailMessageId) REFERENCES EMailMessage(EMailMessageId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_BOMBaseId FOREIGN KEY (BOMBaseId) REFERENCES BOMBase(BOMBaseId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_BOMId FOREIGN KEY (BOMId) REFERENCES BOM(BOMId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_CIOChannelAdapterId FOREIGN KEY (CIOChannelAdapterId) REFERENCES CIOChannelAdapter(CIOChannelAdapterId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ES_ResourceCategoryId FOREIGN KEY (ES_ResourceCategoryId) REFERENCES ES_ResourceCategory(ES_ResourceCategoryId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_FeederPlanBaseId FOREIGN KEY (FeederPlanBaseId) REFERENCES A_FeederPlanBase(FeederPlanBaseId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_FeederPlanId FOREIGN KEY (FeederPlanId) REFERENCES A_FeederPlan(FeederPlanId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_FeederSlotId FOREIGN KEY (FeederSlotId) REFERENCES A_FeederSlot(FeederSlotId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_isOEESettingsId FOREIGN KEY (isOEESettingsId) REFERENCES isOEESettings(isOEESettingsId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_MaintenanceClassId FOREIGN KEY (MaintenanceClassId) REFERENCES MaintenanceClass(MaintenanceClassId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ProductionStatusId FOREIGN KEY (ProductionStatusId) REFERENCES ProductionStatus(ProductionStatusId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ResourceFamilyId FOREIGN KEY (ResourceFamilyId) REFERENCES ResourceFamily(ResourceFamilyId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ResourceTypeId FOREIGN KEY (ResourceTypeId) REFERENCES ResourceType(ResourceTypeId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_ToolPlanId FOREIGN KEY (ToolPlanId) REFERENCES A_ToolPlan(ToolPlanId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE ResourceDef ADD CONSTRAINT FK_ResourceDef_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ProcessingGateOptionalSteps ADD CONSTRAINT FK_ProcessingGateOptionalSteps_ProcessingGateId FOREIGN KEY (ProcessingGateId) REFERENCES ProcessingGate(ProcessingGateId);
GO
ALTER TABLE ADS_AUDITEE ADD CONSTRAINT FK_ADS_AUDITEE_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE ADS_AUDITEE ADD CONSTRAINT FK_ADS_AUDITEE_Version FOREIGN KEY (Version) REFERENCES LocalControl(Version);
GO
ALTER TABLE ADS_AUDITEE ADD CONSTRAINT FK_ADS_AUDITEE_Version FOREIGN KEY (Version) REFERENCES VersionInfo(Version);
GO
ALTER TABLE NCRFailureCodeGroupEntries ADD CONSTRAINT FK_NCRFailureCodeGroupEntries_NCRFailureCodeGroupId FOREIGN KEY (NCRFailureCodeGroupId) REFERENCES NCRFailureCodeGroup(NCRFailureCodeGroupId);
GO
ALTER TABLE A_PartRequestOrderMaterialPart ADD CONSTRAINT FK_A_PartRequestOrderMaterialPart_PartRequestOrderId FOREIGN KEY (PartRequestOrderId) REFERENCES A_PartRequestOrder(PartRequestOrderId);
GO
ALTER TABLE isValidateMatQueueTxns ADD CONSTRAINT FK_isValidateMatQueueTxns_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE CIOTemplateBase ADD CONSTRAINT FK_CIOTemplateBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES CIOTemplate(CIOTemplateId);
GO
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_DispositionId FOREIGN KEY (DispositionId) REFERENCES Disposition(DispositionId);
GO
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOBindingId FOREIGN KEY (CIOBindingId) REFERENCES CIOBinding(CIOBindingId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOBufferId FOREIGN KEY (CIOBufferId) REFERENCES CIOBuffer(CIOBufferId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOCamstarConnectionId FOREIGN KEY (CIOCamstarConnectionId) REFERENCES CIOCamstarConnection(CIOCamstarConnectionId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOChannelSourceId FOREIGN KEY (CIOChannelSourceId) REFERENCES CIOChannelSource(CIOChannelSourceId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIODataHandlerId FOREIGN KEY (CIODataHandlerId) REFERENCES CIODataHandler(CIODataHandlerId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIODetailSectionId FOREIGN KEY (CIODetailSectionId) REFERENCES CIODetailSection(CIODetailSectionId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_CIOMessageTypeId FOREIGN KEY (CIOMessageTypeId) REFERENCES CIOMessageType(CIOMessageTypeId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_MessageNameParameterId FOREIGN KEY (MessageNameParameterId) REFERENCES MessageNameParameter(MessageNameParameterId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_MessageTypeParameterId FOREIGN KEY (MessageTypeParameterId) REFERENCES MessageTypeParameter(MessageTypeParameterId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_RequestIdParameterId FOREIGN KEY (RequestIdParameterId) REFERENCES RequestIdParameter(RequestIdParameterId);
GO
ALTER TABLE CIOChannelAdapter ADD CONSTRAINT FK_CIOChannelAdapter_TagDataParameterId FOREIGN KEY (TagDataParameterId) REFERENCES TagDataParameter(TagDataParameterId);
GO
ALTER TABLE ContainerLevelParentLevels ADD CONSTRAINT FK_ContainerLevelParentLevels_ContainerLevelId FOREIGN KEY (ContainerLevelId) REFERENCES ContainerLevel(ContainerLevelId);
GO
ALTER TABLE TxnDetails ADD CONSTRAINT FK_TxnDetails_PathId FOREIGN KEY (PathId) REFERENCES Path(PathId);
GO
ALTER TABLE TxnDetails ADD CONSTRAINT FK_TxnDetails_ReworkReasonId FOREIGN KEY (ReworkReasonId) REFERENCES ReworkReason(ReworkReasonId);
GO
ALTER TABLE SPCChartHistoryDetail ADD CONSTRAINT FK_SPCChartHistoryDetail_RecordSPCViolationSummaryId FOREIGN KEY (RecordSPCViolationSummaryId) REFERENCES RecordSPCViolationHistory(RecordSPCViolationSummaryId);
GO
ALTER TABLE SPCChartHistoryDetail ADD CONSTRAINT FK_SPCChartHistoryDetail_SPCChartDefId FOREIGN KEY (SPCChartDefId) REFERENCES SPCChartDef(SPCChartDefId);
GO
ALTER TABLE ProcessingGateRequiredSteps ADD CONSTRAINT FK_ProcessingGateRequiredSteps_ProcessingGateId FOREIGN KEY (ProcessingGateId) REFERENCES ProcessingGate(ProcessingGateId);
GO
ALTER TABLE NCRFailureCodeGroupGroups ADD CONSTRAINT FK_NCRFailureCodeGroupGroups_NCRFailureCodeGroupId FOREIGN KEY (NCRFailureCodeGroupId) REFERENCES NCRFailureCodeGroup(NCRFailureCodeGroupId);
GO
ALTER TABLE A_PartRequestOrderPart ADD CONSTRAINT FK_A_PartRequestOrderPart_PartRequestOrderId FOREIGN KEY (PartRequestOrderId) REFERENCES A_PartRequestOrder(PartRequestOrderId);
GO
ALTER TABLE CIOTestObjDetails ADD CONSTRAINT FK_CIOTestObjDetails_CIOTestObjectId FOREIGN KEY (CIOTestObjectId) REFERENCES CIOTestObject(CIOTestObjectId);
GO
ALTER TABLE ProcessModel ADD CONSTRAINT FK_ProcessModel_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE ProcessModel ADD CONSTRAINT FK_ProcessModel_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE ProcessModel ADD CONSTRAINT FK_ProcessModel_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE CIOChannelAdapterAvailableMess ADD CONSTRAINT FK_CIOChannelAdapterAvailableMess_CIOChannelAdapterId FOREIGN KEY (CIOChannelAdapterId) REFERENCES CIOChannelAdapter(CIOChannelAdapterId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_ChgContainerAttrHistoryId FOREIGN KEY (ChgContainerAttrHistoryId) REFERENCES ChgContainerAttrHistory(ChgContainerAttrHistoryId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_LocationId FOREIGN KEY (LocationId) REFERENCES Location(LocationId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_SalesOrderId FOREIGN KEY (SalesOrderId) REFERENCES SalesOrder(SalesOrderId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_StartReasonId FOREIGN KEY (StartReasonId) REFERENCES StartReason(StartReasonId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE ContainerMaintHistDetail ADD CONSTRAINT FK_ContainerMaintHistDetail_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE TxnMap ADD CONSTRAINT FK_TxnMap_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ESigRoleGroupEntries ADD CONSTRAINT FK_ESigRoleGroupEntries_ESigRoleGroupId FOREIGN KEY (ESigRoleGroupId) REFERENCES ESigRoleGroup(ESigRoleGroupId);
GO
ALTER TABLE CAPAAdditionalOrganizations ADD CONSTRAINT FK_CAPAAdditionalOrganizations_CAPAId FOREIGN KEY (CAPAId) REFERENCES CAPA(CAPAId);
GO
ALTER TABLE ProcessModelESigHistoryDetails ADD CONSTRAINT FK_ProcessModelESigHistoryDetails_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE DispositionData ADD CONSTRAINT FK_DispositionData_EventLotId FOREIGN KEY (EventLotId) REFERENCES EventLot(EventLotId);
GO
ALTER TABLE ADS_CLUSTER_STR ADD CONSTRAINT FK_ADS_CLUSTER_STR_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE A_PartTxnHistory ADD CONSTRAINT FK_A_PartTxnHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_PartTxnHistory ADD CONSTRAINT FK_A_PartTxnHistory_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE LabelHistoryDetail ADD CONSTRAINT FK_LabelHistoryDetail_LabelHistorySummaryId FOREIGN KEY (LabelHistorySummaryId) REFERENCES LabelHistorySummary(LabelHistorySummaryId);
GO
ALTER TABLE ActivityPlan ADD CONSTRAINT FK_ActivityPlan_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE ActivityPlan ADD CONSTRAINT FK_ActivityPlan_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE ActivityPlan ADD CONSTRAINT FK_ActivityPlan_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE CIOChannelSource ADD CONSTRAINT FK_CIOChannelSource_CIOBufferId FOREIGN KEY (CIOBufferId) REFERENCES CIOBuffer(CIOBufferId);
GO
ALTER TABLE CIOChannelSource ADD CONSTRAINT FK_CIOChannelSource_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE ResStatusCodeGroupEntries ADD CONSTRAINT FK_ResStatusCodeGroupEntries_ResourceStatusCodeGroupId FOREIGN KEY (ResourceStatusCodeGroupId) REFERENCES ResourceStatusCodeGroup(ResourceStatusCodeGroupId);
GO
ALTER TABLE ContainerMaintHistory ADD CONSTRAINT FK_ContainerMaintHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE UIAction ADD CONSTRAINT FK_UIAction_ActionCategoryId FOREIGN KEY (ActionCategoryId) REFERENCES ActionCategory(ActionCategoryId);
GO
ALTER TABLE UIAction ADD CONSTRAINT FK_UIAction_UIPageFlowId FOREIGN KEY (UIPageFlowId) REFERENCES UIPageFlow(UIPageFlowId);
GO
ALTER TABLE UIAction ADD CONSTRAINT FK_UIAction_UIVirtualPageId FOREIGN KEY (UIVirtualPageId) REFERENCES UIVirtualPage(UIVirtualPageId);
GO
ALTER TABLE SPCViolationHistoryDetail ADD CONSTRAINT FK_SPCViolationHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE SPCViolationHistoryDetail ADD CONSTRAINT FK_SPCViolationHistoryDetail_DataPointId FOREIGN KEY (DataPointId) REFERENCES DataPoint(DataPointId);
GO
ALTER TABLE SPCViolationHistoryDetail ADD CONSTRAINT FK_SPCViolationHistoryDetail_HoldReasonId FOREIGN KEY (HoldReasonId) REFERENCES HoldReason(HoldReasonId);
GO
ALTER TABLE SPCViolationHistoryDetail ADD CONSTRAINT FK_SPCViolationHistoryDetail_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE SPCViolationHistoryDetail ADD CONSTRAINT FK_SPCViolationHistoryDetail_ResourceStatusCodeId FOREIGN KEY (ResourceStatusCodeId) REFERENCES ResourceStatusCode(ResourceStatusCodeId);
GO
ALTER TABLE ESigRoleGroupGroups ADD CONSTRAINT FK_ESigRoleGroupGroups_ESigRoleGroupId FOREIGN KEY (ESigRoleGroupId) REFERENCES ESigRoleGroup(ESigRoleGroupId);
GO
ALTER TABLE CAPACurrentCrossRefs ADD CONSTRAINT FK_CAPACurrentCrossRefs_CAPAId FOREIGN KEY (CAPAId) REFERENCES CAPA(CAPAId);
GO
ALTER TABLE ProcessModelonCompleteRules ADD CONSTRAINT FK_ProcessModelonCompleteRules_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE DispositionDataEventFailures ADD CONSTRAINT FK_DispositionDataEventFailures_DispositionDataId FOREIGN KEY (DispositionDataId) REFERENCES DispositionData(DispositionDataId);
GO
ALTER TABLE ADS_EVENT ADD CONSTRAINT FK_ADS_EVENT_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE ADS_EVENT ADD CONSTRAINT FK_ADS_EVENT_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT_DELETES(Event_ID);
GO
ALTER TABLE NCRResCodeGrpDefForObjTypes ADD CONSTRAINT FK_NCRResCodeGrpDefForObjTypes_NCRResolutionCodeGroupId FOREIGN KEY (NCRResolutionCodeGroupId) REFERENCES NCRResolutionCodeGroup(NCRResolutionCodeGroupId);
GO
ALTER TABLE A_PartTxnHistoryDetail ADD CONSTRAINT FK_A_PartTxnHistoryDetail_PartTxnHistoryId FOREIGN KEY (PartTxnHistoryId) REFERENCES A_PartTxnHistory(PartTxnHistoryId);
GO
ALTER TABLE A_PartTxnHistoryDetail ADD CONSTRAINT FK_A_PartTxnHistoryDetail_PhysicalLocationId FOREIGN KEY (PhysicalLocationId) REFERENCES A_PhysicalLocation(PhysicalLocationId);
GO
ALTER TABLE A_PartTxnHistoryDetail ADD CONSTRAINT FK_A_PartTxnHistoryDetail_PhysicalPositionId FOREIGN KEY (PhysicalPositionId) REFERENCES A_PhysicalPosition(PhysicalPositionId);
GO
ALTER TABLE LabelHistorySummary ADD CONSTRAINT FK_LabelHistorySummary_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE LabelHistorySummary ADD CONSTRAINT FK_LabelHistorySummary_PrinterLabelDefinitionId FOREIGN KEY (PrinterLabelDefinitionId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE LabelHistorySummary ADD CONSTRAINT FK_LabelHistorySummary_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE HistoryMainlineAdditionalESigs ADD CONSTRAINT FK_HistoryMainlineAdditionalESigs_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CIOChannelSourceRouterHostName ADD CONSTRAINT FK_CIOChannelSourceRouterHostName_CIOChannelSourceId FOREIGN KEY (CIOChannelSourceId) REFERENCES CIOChannelSource(CIOChannelSourceId);
GO
ALTER TABLE ResStatusCodeGroupGroups ADD CONSTRAINT FK_ResStatusCodeGroupGroups_ResourceStatusCodeGroupId FOREIGN KEY (ResourceStatusCodeGroupId) REFERENCES ResourceStatusCodeGroup(ResourceStatusCodeGroupId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_RouteStepId FOREIGN KEY (RouteStepId) REFERENCES RouteStep(RouteStepId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ContainerMaterialListItem ADD CONSTRAINT FK_ContainerMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE SpecSchedulingDetail ADD CONSTRAINT FK_SpecSchedulingDetail_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ApprovalSheetEntry ADD CONSTRAINT FK_ApprovalSheetEntry_ApprovalDecisionId FOREIGN KEY (ApprovalDecisionId) REFERENCES ApprovalDecision(ApprovalDecisionId);
GO
ALTER TABLE ApprovalSheetEntry ADD CONSTRAINT FK_ApprovalSheetEntry_DelegationTaskId FOREIGN KEY (DelegationTaskId) REFERENCES DelegationTask(DelegationTaskId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_ComputerGroupId FOREIGN KEY (ComputerGroupId) REFERENCES A_ComputerGroup(ComputerGroupId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_ElectronicProcedureBaseId FOREIGN KEY (ElectronicProcedureBaseId) REFERENCES ElectronicProcedureBase(ElectronicProcedureBaseId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_ElectronicProcedureId FOREIGN KEY (ElectronicProcedureId) REFERENCES ElectronicProcedure(ElectronicProcedureId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_ES_DisplayOptionsId FOREIGN KEY (ES_DisplayOptionsId) REFERENCES ES_DisplayOptions(ES_DisplayOptionsId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_fujOperationTypeId FOREIGN KEY (fujOperationTypeId) REFERENCES fujOperationType(fujOperationTypeId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_fujSpecTypeId FOREIGN KEY (fujSpecTypeId) REFERENCES fujSpecType(fujSpecTypeId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_SetupBaseId FOREIGN KEY (SetupBaseId) REFERENCES SetupBase(SetupBaseId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE Spec ADD CONSTRAINT FK_Spec_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ESigRoleGrpDefForObjTypes ADD CONSTRAINT FK_ESigRoleGrpDefForObjTypes_ESigRoleGroupId FOREIGN KEY (ESigRoleGroupId) REFERENCES ESigRoleGroup(ESigRoleGroupId);
GO
ALTER TABLE ProcessModelonStartRules ADD CONSTRAINT FK_ProcessModelonStartRules_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE LabelTag ADD CONSTRAINT FK_LabelTag_PrinterLabelDefinitionId FOREIGN KEY (PrinterLabelDefinitionId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE CIOWorkflow ADD CONSTRAINT FK_CIOWorkflow_CIOWorkflowBaseId FOREIGN KEY (CIOWorkflowBaseId) REFERENCES CIOWorkflowBase(CIOWorkflowBaseId);
GO
ALTER TABLE CIOWorkflow ADD CONSTRAINT FK_CIOWorkflow_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE HistoryMainlineAuthorizations ADD CONSTRAINT FK_HistoryMainlineAuthorizations_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE SpecStatus ADD CONSTRAINT FK_SpecStatus_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE SpecStatus ADD CONSTRAINT FK_SpecStatus_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE SpecStatus ADD CONSTRAINT FK_SpecStatus_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ApprovalSheet ADD CONSTRAINT FK_ApprovalSheet_ApprovalDecisionListId FOREIGN KEY (ApprovalDecisionListId) REFERENCES ApprovalDecisionList(ApprovalDecisionListId);
GO
ALTER TABLE ApprovalSheet ADD CONSTRAINT FK_ApprovalSheet_ApprovalRoutingInfoId FOREIGN KEY (ApprovalRoutingInfoId) REFERENCES ApprovalRoutingInfo(ApprovalRoutingInfoId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_PhysicalLocationId FOREIGN KEY (PhysicalLocationId) REFERENCES A_PhysicalLocation(PhysicalLocationId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_PhysicalPositionId FOREIGN KEY (PhysicalPositionId) REFERENCES A_PhysicalPosition(PhysicalPositionId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_SetupBaseId FOREIGN KEY (SetupBaseId) REFERENCES SetupBase(SetupBaseId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE ProductionStatus ADD CONSTRAINT FK_ProductionStatus_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE EventCheckBoxFieldData ADD CONSTRAINT FK_EventCheckBoxFieldData_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE EventCheckBoxFieldData ADD CONSTRAINT FK_EventCheckBoxFieldData_OccupationId FOREIGN KEY (OccupationId) REFERENCES Occupation(OccupationId);
GO
ALTER TABLE ProcessModelTemplate ADD CONSTRAINT FK_ProcessModelTemplate_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ProcessModelTemplate ADD CONSTRAINT FK_ProcessModelTemplate_ProcessModelTemplateBaseId FOREIGN KEY (ProcessModelTemplateBaseId) REFERENCES ProcessModelTemplateBase(ProcessModelTemplateBaseId);
GO
ALTER TABLE ADS_EVENT_DELETES ADD CONSTRAINT FK_ADS_EVENT_DELETES_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE ADS_EVENT_DELETES ADD CONSTRAINT FK_ADS_EVENT_DELETES_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT(Event_ID);
GO
ALTER TABLE A_PhysicalLocationPosition ADD CONSTRAINT FK_A_PhysicalLocationPosition_PhysicalLocationId FOREIGN KEY (PhysicalLocationId) REFERENCES A_PhysicalLocation(PhysicalLocationId);
GO
ALTER TABLE LabelTxnMap ADD CONSTRAINT FK_LabelTxnMap_PrinterLabelDefinitionBaseId FOREIGN KEY (PrinterLabelDefinitionBaseId) REFERENCES PrinterLabelDefinitionBase(PrinterLabelDefinitionBaseId);
GO
ALTER TABLE LabelTxnMap ADD CONSTRAINT FK_LabelTxnMap_PrinterLabelDefinitionId FOREIGN KEY (PrinterLabelDefinitionId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE CIOWorkflowBase ADD CONSTRAINT FK_CIOWorkflowBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES CIOWorkflow(CIOWorkflowId);
GO
ALTER TABLE HistoryMainlineESigSummaries ADD CONSTRAINT FK_HistoryMainlineESigSummaries_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ResStatusReasonGroupDefFor ADD CONSTRAINT FK_ResStatusReasonGroupDefFor_ResStatusReasonGroupId FOREIGN KEY (ResStatusReasonGroupId) REFERENCES ResStatusReasonGroup(ResStatusReasonGroupId);
GO
ALTER TABLE ContainerSampleData ADD CONSTRAINT FK_ContainerSampleData_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE ContainerSampleData ADD CONSTRAINT FK_ContainerSampleData_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ContainerSampleData ADD CONSTRAINT FK_ContainerSampleData_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE ContainerSampleData ADD CONSTRAINT FK_ContainerSampleData_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE ContainerSampleData ADD CONSTRAINT FK_ContainerSampleData_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE SpecStatusCompletedTxns ADD CONSTRAINT FK_SpecStatusCompletedTxns_SpecStatusId FOREIGN KEY (SpecStatusId) REFERENCES SpecStatus(SpecStatusId);
GO
ALTER TABLE SignApprovalHistory ADD CONSTRAINT FK_SignApprovalHistory_ApprovalDecisionId FOREIGN KEY (ApprovalDecisionId) REFERENCES ApprovalDecision(ApprovalDecisionId);
GO
ALTER TABLE SignApprovalHistory ADD CONSTRAINT FK_SignApprovalHistory_ApprovalSheetEntryId FOREIGN KEY (ApprovalSheetEntryId) REFERENCES ApprovalSheetEntry(ApprovalSheetEntryId);
GO
ALTER TABLE SignApprovalHistory ADD CONSTRAINT FK_SignApprovalHistory_ApprovalSheetId FOREIGN KEY (ApprovalSheetId) REFERENCES ApprovalSheet(ApprovalSheetId);
GO
ALTER TABLE SignApprovalHistory ADD CONSTRAINT FK_SignApprovalHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE EventCheckBoxFieldHistDetail ADD CONSTRAINT FK_EventCheckBoxFieldHistDetail_OccupationId FOREIGN KEY (OccupationId) REFERENCES Occupation(OccupationId);
GO
ALTER TABLE CAPAHistoryDetail ADD CONSTRAINT FK_CAPAHistoryDetail_CARSeverityId FOREIGN KEY (CARSeverityId) REFERENCES CARSeverity(CARSeverityId);
GO
ALTER TABLE CAPAHistoryDetail ADD CONSTRAINT FK_CAPAHistoryDetail_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE ProcessModelTemplateBase ADD CONSTRAINT FK_ProcessModelTemplateBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ProcessModelTemplate(ProcessModelTemplateId);
GO
ALTER TABLE DocAttachmentsDocuments ADD CONSTRAINT FK_DocAttachmentsDocuments_DocAttachmentsId FOREIGN KEY (DocAttachmentsId) REFERENCES DocAttachments(DocAttachmentsId);
GO
ALTER TABLE ADS_EVENT_DETAIL ADD CONSTRAINT FK_ADS_EVENT_DETAIL_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT(Event_ID);
GO
ALTER TABLE ADS_EVENT_DETAIL ADD CONSTRAINT FK_ADS_EVENT_DETAIL_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT_DELETES(Event_ID);
GO
ALTER TABLE NCRResolutionCodeGroupEntries ADD CONSTRAINT FK_NCRResolutionCodeGroupEntries_NCRResolutionCodeGroupId FOREIGN KEY (NCRResolutionCodeGroupId) REFERENCES NCRResolutionCodeGroup(NCRResolutionCodeGroupId);
GO
ALTER TABLE HistoryMainlineHistoryDetails ADD CONSTRAINT FK_HistoryMainlineHistoryDetails_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CIOConverterFieldItem ADD CONSTRAINT FK_CIOConverterFieldItem_CIOSubscriptResCnvtrItemId FOREIGN KEY (CIOSubscriptResCnvtrItemId) REFERENCES CIOSubscriptResCnvtrItem(CIOSubscriptResCnvtrItemId);
GO
ALTER TABLE ResStatusReasonGroupEntries ADD CONSTRAINT FK_ResStatusReasonGroupEntries_ResStatusReasonGroupId FOREIGN KEY (ResStatusReasonGroupId) REFERENCES ResStatusReasonGroup(ResStatusReasonGroupId);
GO
ALTER TABLE ContainerStatusChangeHistory ADD CONSTRAINT FK_ContainerStatusChangeHistory_ChangeStatusReasonId FOREIGN KEY (ChangeStatusReasonId) REFERENCES ChangeStatusReason(ChangeStatusReasonId);
GO
ALTER TABLE ContainerStatusChangeHistory ADD CONSTRAINT FK_ContainerStatusChangeHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE SpecTxnMap ADD CONSTRAINT FK_SpecTxnMap_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE SpecTxnMap ADD CONSTRAINT FK_SpecTxnMap_TxnMapId FOREIGN KEY (TxnMapId) REFERENCES TxnMap(TxnMapId);
GO
ALTER TABLE ApprovalSheetHistory ADD CONSTRAINT FK_ApprovalSheetHistory_ApprovalSheetEntryId FOREIGN KEY (ApprovalSheetEntryId) REFERENCES ApprovalSheetEntry(ApprovalSheetEntryId);
GO
ALTER TABLE ApprovalSheetHistory ADD CONSTRAINT FK_ApprovalSheetHistory_ApprovalSheetId FOREIGN KEY (ApprovalSheetId) REFERENCES ApprovalSheet(ApprovalSheetId);
GO
ALTER TABLE ApprovalSheetHistory ADD CONSTRAINT FK_ApprovalSheetHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_ChecklistTemplateId FOREIGN KEY (ChecklistTemplateId) REFERENCES ChecklistTemplate(ChecklistTemplateId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_FailureModeGroupId FOREIGN KEY (FailureModeGroupId) REFERENCES FailureModeGroup(FailureModeGroupId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE EventClassificationSpecMap ADD CONSTRAINT FK_EventClassificationSpecMap_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE CAPAHistoryDetailAdditionalOrg ADD CONSTRAINT FK_CAPAHistoryDetailAdditionalOrg_CAPAHistoryDetailId FOREIGN KEY (CAPAHistoryDetailId) REFERENCES CAPAHistoryDetail(CAPAHistoryDetailId);
GO
ALTER TABLE ProcessModelTemplateonComplete ADD CONSTRAINT FK_ProcessModelTemplateonComplete_ProcessModelTemplateId FOREIGN KEY (ProcessModelTemplateId) REFERENCES ProcessModelTemplate(ProcessModelTemplateId);
GO
ALTER TABLE DocAttachmentsHistory ADD CONSTRAINT FK_DocAttachmentsHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ADS_EVENT_DETAIL_DELETES ADD CONSTRAINT FK_ADS_EVENT_DETAIL_DELETES_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT(Event_ID);
GO
ALTER TABLE ADS_EVENT_DETAIL_DELETES ADD CONSTRAINT FK_ADS_EVENT_DETAIL_DELETES_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT_DELETES(Event_ID);
GO
ALTER TABLE NCRResolutionCodeGroupGroups ADD CONSTRAINT FK_NCRResolutionCodeGroupGroups_NCRResolutionCodeGroupId FOREIGN KEY (NCRResolutionCodeGroupId) REFERENCES NCRResolutionCodeGroup(NCRResolutionCodeGroupId);
GO
ALTER TABLE A_ProductConversionHistory ADD CONSTRAINT FK_A_ProductConversionHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_ProductConversionHistory ADD CONSTRAINT FK_A_ProductConversionHistory_ProductConversionPlanId FOREIGN KEY (ProductConversionPlanId) REFERENCES A_ProductConversionPlan(ProductConversionPlanId);
GO
ALTER TABLE LocalControl ADD CONSTRAINT FK_LocalControl_Version FOREIGN KEY (Version) REFERENCES VersionInfo(Version);
GO
ALTER TABLE HistoryMainlineLabelSummaries ADD CONSTRAINT FK_HistoryMainlineLabelSummaries_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ResStatusReasonGroupGroups ADD CONSTRAINT FK_ResStatusReasonGroupGroups_ResStatusReasonGroupId FOREIGN KEY (ResStatusReasonGroupId) REFERENCES ResStatusReasonGroup(ResStatusReasonGroupId);
GO
ALTER TABLE UIPageFlowActivity ADD CONSTRAINT FK_UIPageFlowActivity_UIPageFlowStateId FOREIGN KEY (UIPageFlowStateId) REFERENCES UIPageFlowState(UIPageFlowStateId);
GO
ALTER TABLE SplitHistory ADD CONSTRAINT FK_SplitHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_ProcessModelId FOREIGN KEY (ProcessModelId) REFERENCES ProcessModel(ProcessModelId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_QualityResolutionCodeId FOREIGN KEY (QualityResolutionCodeId) REFERENCES QualityResolutionCode(QualityResolutionCodeId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_RiskAssessmentId FOREIGN KEY (RiskAssessmentId) REFERENCES RiskAssessment(RiskAssessmentId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE Event ADD CONSTRAINT FK_Event_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE EventComponent ADD CONSTRAINT FK_EventComponent_EventLotId FOREIGN KEY (EventLotId) REFERENCES EventLot(EventLotId);
GO
ALTER TABLE ProcessModelTemplateonStartRul ADD CONSTRAINT FK_ProcessModelTemplateonStartRul_ProcessModelTemplateId FOREIGN KEY (ProcessModelTemplateId) REFERENCES ProcessModelTemplate(ProcessModelTemplateId);
GO
ALTER TABLE DocAttachmentsHistoryDetails ADD CONSTRAINT FK_DocAttachmentsHistoryDetails_DocAttachmentsHistoryId FOREIGN KEY (DocAttachmentsHistoryId) REFERENCES DocAttachmentsHistory(DocAttachmentsHistoryId);
GO
ALTER TABLE DocAttachmentsHistoryDetails ADD CONSTRAINT FK_DocAttachmentsHistoryDetails_Version FOREIGN KEY (Version) REFERENCES LocalControl(Version);
GO
ALTER TABLE DocAttachmentsHistoryDetails ADD CONSTRAINT FK_DocAttachmentsHistoryDetails_Version FOREIGN KEY (Version) REFERENCES VersionInfo(Version);
GO
ALTER TABLE NCRUpdateHistDetFailureCodes ADD CONSTRAINT FK_NCRUpdateHistDetFailureCodes_NCRUpdateHistoryDetailId FOREIGN KEY (NCRUpdateHistoryDetailId) REFERENCES NCRUpdateHistoryDetail(NCRUpdateHistoryDetailId);
GO
ALTER TABLE HistoryMainlineMassUpdates ADD CONSTRAINT FK_HistoryMainlineMassUpdates_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ContentCollaborationReminder ADD CONSTRAINT FK_ContentCollaborationReminder_EMailMessageId FOREIGN KEY (EMailMessageId) REFERENCES EMailMessage(EMailMessageId);
GO
ALTER TABLE UIPageFlowState ADD CONSTRAINT FK_UIPageFlowState_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE UIPageFlowState ADD CONSTRAINT FK_UIPageFlowState_UIPageFlowId FOREIGN KEY (UIPageFlowId) REFERENCES UIPageFlow(UIPageFlowId);
GO
ALTER TABLE SplitHistoryDetails ADD CONSTRAINT FK_SplitHistoryDetails_SplitHistoryId FOREIGN KEY (SplitHistoryId) REFERENCES SplitHistory(SplitHistoryId);
GO
ALTER TABLE NCRCauseCode ADD CONSTRAINT FK_NCRCauseCode_NCRResolutionCodeGroupId FOREIGN KEY (NCRResolutionCodeGroupId) REFERENCES NCRResolutionCodeGroup(NCRResolutionCodeGroupId);
GO
ALTER TABLE EventComponentHistoryDetail ADD CONSTRAINT FK_EventComponentHistoryDetail_EventLotHistoryDetailId FOREIGN KEY (EventLotHistoryDetailId) REFERENCES EventLotHistoryDetail(EventLotHistoryDetailId);
GO
ALTER TABLE CategoryMap ADD CONSTRAINT FK_CategoryMap_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE CategoryMap ADD CONSTRAINT FK_CategoryMap_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE CategoryMap ADD CONSTRAINT FK_CategoryMap_TriageSpecId FOREIGN KEY (TriageSpecId) REFERENCES TriageSpec(TriageSpecId);
GO
ALTER TABLE ProcessModelTemplateOrgs ADD CONSTRAINT FK_ProcessModelTemplateOrgs_ProcessModelTemplateId FOREIGN KEY (ProcessModelTemplateId) REFERENCES ProcessModelTemplate(ProcessModelTemplateId);
GO
ALTER TABLE DocAttachmentsHistoryHistoryDe ADD CONSTRAINT FK_DocAttachmentsHistoryHistoryDe_DocAttachmentsHistoryId FOREIGN KEY (DocAttachmentsHistoryId) REFERENCES DocAttachmentsHistory(DocAttachmentsHistoryId);
GO
ALTER TABLE NCRUpdateHistory ADD CONSTRAINT FK_NCRUpdateHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_ProductConversionPlanDetails ADD CONSTRAINT FK_A_ProductConversionPlanDetails_ProductConversionPlanId FOREIGN KEY (ProductConversionPlanId) REFERENCES A_ProductConversionPlan(ProductConversionPlanId);
GO
ALTER TABLE A_ProductConversionPlanDetails ADD CONSTRAINT FK_A_ProductConversionPlanDetails_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE CIODataHubPoints ADD CONSTRAINT FK_CIODataHubPoints_CIODataHubSubscriptionId FOREIGN KEY (CIODataHubSubscriptionId) REFERENCES CIODataHubSubscriptions(CIODataHubSubscriptionId);
GO
ALTER TABLE DictionaryLabel ADD CONSTRAINT FK_DictionaryLabel_DictionaryId FOREIGN KEY (DictionaryId) REFERENCES Dictionary(DictionaryId);
GO
ALTER TABLE EventCurrentCrossRefs ADD CONSTRAINT FK_EventCurrentCrossRefs_EventId FOREIGN KEY (EventId) REFERENCES Event(EventId);
GO
ALTER TABLE ProcessTimer ADD CONSTRAINT FK_ProcessTimer_ProcessTimerBaseId FOREIGN KEY (ProcessTimerBaseId) REFERENCES ProcessTimerBase(ProcessTimerBaseId);
GO
ALTER TABLE ProcessTimer ADD CONSTRAINT FK_ProcessTimer_ProcessTimerTypeId FOREIGN KEY (ProcessTimerTypeId) REFERENCES ProcessTimerType(ProcessTimerTypeId);
GO
ALTER TABLE ProcessTimer ADD CONSTRAINT FK_ProcessTimer_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE NCRUpdateHistoryDetail ADD CONSTRAINT FK_NCRUpdateHistoryDetail_NCRCauseCodeId FOREIGN KEY (NCRCauseCodeId) REFERENCES NCRCauseCode(NCRCauseCodeId);
GO
ALTER TABLE NCRUpdateHistoryDetail ADD CONSTRAINT FK_NCRUpdateHistoryDetail_NCRFailureTypeId FOREIGN KEY (NCRFailureTypeId) REFERENCES NCRFailureType(NCRFailureTypeId);
GO
ALTER TABLE NCRUpdateHistoryDetail ADD CONSTRAINT FK_NCRUpdateHistoryDetail_NCRUpdateHistoryId FOREIGN KEY (NCRUpdateHistoryId) REFERENCES NCRUpdateHistory(NCRUpdateHistoryId);
GO
ALTER TABLE A_ProductMaterialListItemSub ADD CONSTRAINT FK_A_ProductMaterialListItemSub_ProductMaterialListItemId FOREIGN KEY (ProductMaterialListItemId) REFERENCES ProductMaterialListItem(ProductMaterialListItemId);
GO
ALTER TABLE Location ADD CONSTRAINT FK_Location_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE Location ADD CONSTRAINT FK_Location_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE CloseQualityObjectHistory ADD CONSTRAINT FK_CloseQualityObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CloseQualityObjectHistory ADD CONSTRAINT FK_CloseQualityObjectHistory_QualityResolutionCodeId FOREIGN KEY (QualityResolutionCodeId) REFERENCES QualityResolutionCode(QualityResolutionCodeId);
GO
ALTER TABLE Document ADD CONSTRAINT FK_Document_DocumentBaseId FOREIGN KEY (DocumentBaseId) REFERENCES DocumentBase(DocumentBaseId);
GO
ALTER TABLE Document ADD CONSTRAINT FK_Document_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE CPDeployment ADD CONSTRAINT FK_CPDeployment_TargetDeploymentHeaderId FOREIGN KEY (TargetDeploymentHeaderId) REFERENCES TargetDeploymentHeader(TargetDeploymentHeaderId);
GO
ALTER TABLE UIPersonalization ADD CONSTRAINT FK_UIPersonalization_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE UIPersonalization ADD CONSTRAINT FK_UIPersonalization_UIVirtualPageId FOREIGN KEY (UIVirtualPageId) REFERENCES UIVirtualPage(UIVirtualPageId);
GO
ALTER TABLE UIPersonalization ADD CONSTRAINT FK_UIPersonalization_WorkspaceId FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
GO
ALTER TABLE StartChangePkgHistory ADD CONSTRAINT FK_StartChangePkgHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE StartChangePkgHistory ADD CONSTRAINT FK_StartChangePkgHistory_PackageTypeId FOREIGN KEY (PackageTypeId) REFERENCES PackageType(PackageTypeId);
GO
ALTER TABLE StartChangePkgHistory ADD CONSTRAINT FK_StartChangePkgHistory_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE Labels ADD CONSTRAINT FK_Labels_CategoryID FOREIGN KEY (CategoryID) REFERENCES LabelCategory(CategoryID);
GO
ALTER TABLE CategoryNotificationMapTypes ADD CONSTRAINT FK_CategoryNotificationMapTypes_CategoryNotificationMapId FOREIGN KEY (CategoryNotificationMapId) REFERENCES CategoryNotificationMap(CategoryNotificationMapId);
GO
ALTER TABLE ProcessTimerBase ADD CONSTRAINT FK_ProcessTimerBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ProcessTimer(ProcessTimerId);
GO
ALTER TABLE NonconformanceReport ADD CONSTRAINT FK_NonconformanceReport_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE NonconformanceReport ADD CONSTRAINT FK_NonconformanceReport_NCRCauseCodeGroupId FOREIGN KEY (NCRCauseCodeGroupId) REFERENCES NCRCauseCodeGroup(NCRCauseCodeGroupId);
GO
ALTER TABLE NonconformanceReport ADD CONSTRAINT FK_NonconformanceReport_NCRCauseCodeId FOREIGN KEY (NCRCauseCodeId) REFERENCES NCRCauseCode(NCRCauseCodeId);
GO
ALTER TABLE NonconformanceReport ADD CONSTRAINT FK_NonconformanceReport_NCRFailureTypeId FOREIGN KEY (NCRFailureTypeId) REFERENCES NCRFailureType(NCRFailureTypeId);
GO
ALTER TABLE NonconformanceReport ADD CONSTRAINT FK_NonconformanceReport_NCRResolutionCodeId FOREIGN KEY (NCRResolutionCodeId) REFERENCES NCRResolutionCode(NCRResolutionCodeId);
GO
ALTER TABLE A_ProductParams ADD CONSTRAINT FK_A_ProductParams_ParamId FOREIGN KEY (ParamId) REFERENCES A_Param(ParamId);
GO
ALTER TABLE A_ProductParams ADD CONSTRAINT FK_A_ProductParams_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CMS_Aliases7 ADD CONSTRAINT FK_CMS_Aliases7_ObjectID FOREIGN KEY (ObjectID) REFERENCES CMS_InfoObjects7(ObjectID);
GO
ALTER TABLE HistoryViewHistViewDtls ADD CONSTRAINT FK_HistoryViewHistViewDtls_HistoryViewId FOREIGN KEY (HistoryViewId) REFERENCES HistoryView(HistoryViewId);
GO
ALTER TABLE CIODataPointInstance ADD CONSTRAINT FK_CIODataPointInstance_CIODataPointTypeId FOREIGN KEY (CIODataPointTypeId) REFERENCES CIODataPointType(CIODataPointTypeId);
GO
ALTER TABLE DocumentBase ADD CONSTRAINT FK_DocumentBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES Document(DocumentId);
GO
ALTER TABLE StartChangePkgHistoryInstances ADD CONSTRAINT FK_StartChangePkgHistoryInstances_StartChangePkgHistoryId FOREIGN KEY (StartChangePkgHistoryId) REFERENCES StartChangePkgHistory(StartChangePkgHistoryId);
GO
ALTER TABLE EventFailure ADD CONSTRAINT FK_EventFailure_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE EventFailure ADD CONSTRAINT FK_EventFailure_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE EventFailure ADD CONSTRAINT FK_EventFailure_FailureSeverityId FOREIGN KEY (FailureSeverityId) REFERENCES FailureSeverity(FailureSeverityId);
GO
ALTER TABLE CDOFieldInheritMaskDef ADD CONSTRAINT FK_CDOFieldInheritMaskDef_InheritanceBitValue FOREIGN KEY (InheritanceBitValue) REFERENCES CDOInheritMaskDef(InheritanceBitValue);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_BusinessRuleId FOREIGN KEY (BusinessRuleId) REFERENCES BusinessRule(BusinessRuleId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_HoldReasonId FOREIGN KEY (HoldReasonId) REFERENCES HoldReason(HoldReasonId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_ReworkReasonId FOREIGN KEY (ReworkReasonId) REFERENCES ReworkReason(ReworkReasonId);
GO
ALTER TABLE ProcessTimerDtl ADD CONSTRAINT FK_ProcessTimerDtl_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE ADS_SERVER_NAME_STR ADD CONSTRAINT FK_ADS_SERVER_NAME_STR_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE NonconformanceReportNCRFailure ADD CONSTRAINT FK_NonconformanceReportNCRFailure_NonconformanceReportId FOREIGN KEY (NonconformanceReportId) REFERENCES NonconformanceReport(NonconformanceReportId);
GO
ALTER TABLE A_ProductStockLevel ADD CONSTRAINT FK_A_ProductStockLevel_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE A_ProductStockLevel ADD CONSTRAINT FK_A_ProductStockLevel_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CMS_InfoObjects7 ADD CONSTRAINT FK_CMS_InfoObjects7_Version FOREIGN KEY (Version) REFERENCES LocalControl(Version);
GO
ALTER TABLE CMS_InfoObjects7 ADD CONSTRAINT FK_CMS_InfoObjects7_Version FOREIGN KEY (Version) REFERENCES VersionInfo(Version);
GO
ALTER TABLE HistViewDtl ADD CONSTRAINT FK_HistViewDtl_HistoryViewId FOREIGN KEY (HistoryViewId) REFERENCES HistoryView(HistoryViewId);
GO
ALTER TABLE DocumentEntry ADD CONSTRAINT FK_DocumentEntry_DocumentBaseId FOREIGN KEY (DocumentBaseId) REFERENCES DocumentBase(DocumentBaseId);
GO
ALTER TABLE DocumentEntry ADD CONSTRAINT FK_DocumentEntry_DocumentId FOREIGN KEY (DocumentId) REFERENCES Document(DocumentId);
GO
ALTER TABLE DocumentEntry ADD CONSTRAINT FK_DocumentEntry_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE StartChangePkgHistoryTargetSys ADD CONSTRAINT FK_StartChangePkgHistoryTargetSys_StartChangePkgHistoryId FOREIGN KEY (StartChangePkgHistoryId) REFERENCES StartChangePkgHistory(StartChangePkgHistoryId);
GO
ALTER TABLE ReworkReason ADD CONSTRAINT FK_ReworkReason_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE EventFailureCause ADD CONSTRAINT FK_EventFailureCause_EventFailureId FOREIGN KEY (EventFailureId) REFERENCES EventFailure(EventFailureId);
GO
ALTER TABLE EventDataHistoryDetail ADD CONSTRAINT FK_EventDataHistoryDetail_EventHistoryDetailId FOREIGN KEY (EventHistoryDetailId) REFERENCES EventHistoryDetail(EventHistoryDetailId);
GO
ALTER TABLE EventDataHistoryDetail ADD CONSTRAINT FK_EventDataHistoryDetail_OccupationId FOREIGN KEY (OccupationId) REFERENCES Occupation(OccupationId);
GO
ALTER TABLE EventDataHistoryDetail ADD CONSTRAINT FK_EventDataHistoryDetail_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE EventDataHistoryDetail ADD CONSTRAINT FK_EventDataHistoryDetail_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE EventDataHistoryDetail ADD CONSTRAINT FK_EventDataHistoryDetail_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE ProcessTimerHistory ADD CONSTRAINT FK_ProcessTimerHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_RecipeMaterialListItemSub ADD CONSTRAINT FK_A_RecipeMaterialListItemSub_RecipeMaterialListItemId FOREIGN KEY (RecipeMaterialListItemId) REFERENCES RecipeMaterialListItem(RecipeMaterialListItemId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE LotSampleData ADD CONSTRAINT FK_LotSampleData_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE ResourceFamily ADD CONSTRAINT FK_ResourceFamily_isOEESettingsId FOREIGN KEY (isOEESettingsId) REFERENCES isOEESettings(isOEESettingsId);
GO
ALTER TABLE ResourceFamily ADD CONSTRAINT FK_ResourceFamily_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE ResourceFamily ADD CONSTRAINT FK_ResourceFamily_UIPreferenceId FOREIGN KEY (UIPreferenceId) REFERENCES UIPreference(UIPreferenceId);
GO
ALTER TABLE HistViewDtlUIFields ADD CONSTRAINT FK_HistViewDtlUIFields_HistViewDtlId FOREIGN KEY (HistViewDtlId) REFERENCES HistViewDtl(HistViewDtlId);
GO
ALTER TABLE CIODefQueryParameter ADD CONSTRAINT FK_CIODefQueryParameter_CIOSMSEntryId FOREIGN KEY (CIOSMSEntryId) REFERENCES CIOSMSEntry(CIOSMSEntryId);
GO
ALTER TABLE DocumentSet ADD CONSTRAINT FK_DocumentSet_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE UIPreferenceMap ADD CONSTRAINT FK_UIPreferenceMap_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE UIPreferenceMap ADD CONSTRAINT FK_UIPreferenceMap_UIPreferenceId FOREIGN KEY (UIPreferenceId) REFERENCES UIPreference(UIPreferenceId);
GO
ALTER TABLE StartContAttrHistoryDetail ADD CONSTRAINT FK_StartContAttrHistoryDetail_StartHistoryDetailId FOREIGN KEY (StartHistoryDetailId) REFERENCES StartHistoryDetail(StartHistoryDetailId);
GO
ALTER TABLE EventDataHistoryDetailSuspectD ADD CONSTRAINT FK_EventDataHistoryDetailSuspectD_EventDataHistoryDetailsId FOREIGN KEY (EventDataHistoryDetailsId) REFERENCES EventDataHistoryDetail(EventDataHistoryDetailsId);
GO
ALTER TABLE NotificationEvent ADD CONSTRAINT FK_NotificationEvent_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE NotificationEvent ADD CONSTRAINT FK_NotificationEvent_EMailMessageId FOREIGN KEY (EMailMessageId) REFERENCES EMailMessage(EMailMessageId);
GO
ALTER TABLE A_ResourceBOM ADD CONSTRAINT FK_A_ResourceBOM_BillTypeId FOREIGN KEY (BillTypeId) REFERENCES BillType(BillTypeId);
GO
ALTER TABLE A_ResourceBOM ADD CONSTRAINT FK_A_ResourceBOM_ResourceBOMBaseId FOREIGN KEY (ResourceBOMBaseId) REFERENCES A_ResourceBOMBase(ResourceBOMBaseId);
GO
ALTER TABLE A_ResourceBOM ADD CONSTRAINT FK_A_ResourceBOM_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE LotSizeDetails ADD CONSTRAINT FK_LotSizeDetails_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE HoldReason ADD CONSTRAINT FK_HoldReason_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE HoldReason ADD CONSTRAINT FK_HoldReason_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE CIODetailField ADD CONSTRAINT FK_CIODetailField_CIODetailSectionId FOREIGN KEY (CIODetailSectionId) REFERENCES CIODetailSection(CIODetailSectionId);
GO
ALTER TABLE DocumentViewer ADD CONSTRAINT FK_DocumentViewer_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE CPTargetSystemHistDtl ADD CONSTRAINT FK_CPTargetSystemHistDtl_TargetSystemId FOREIGN KEY (TargetSystemId) REFERENCES TargetSystem(TargetSystemId);
GO
ALTER TABLE UIPrefFieldDef ADD CONSTRAINT FK_UIPrefFieldDef_UIPreferenceId FOREIGN KEY (UIPreferenceId) REFERENCES UIPreference(UIPreferenceId);
GO
ALTER TABLE StartHistoryDetailES_BoardToTe ADD CONSTRAINT FK_StartHistoryDetailES_BoardToTe_ES_BoardToTestId FOREIGN KEY (ES_BoardToTestId) REFERENCES ES_BoardToTestId(ES_BoardToTestId);
GO
ALTER TABLE StartHistoryDetailES_BoardToTe ADD CONSTRAINT FK_StartHistoryDetailES_BoardToTe_StartHistoryDetailId FOREIGN KEY (StartHistoryDetailId) REFERENCES StartHistoryDetail(StartHistoryDetailId);
GO
ALTER TABLE ReworkStatus ADD CONSTRAINT FK_ReworkStatus_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE ReworkStatus ADD CONSTRAINT FK_ReworkStatus_ReworkReasonId FOREIGN KEY (ReworkReasonId) REFERENCES ReworkReason(ReworkReasonId);
GO
ALTER TABLE EventDisallowedTxns ADD CONSTRAINT FK_EventDisallowedTxns_EventId FOREIGN KEY (EventId) REFERENCES Event(EventId);
GO
ALTER TABLE ProcessTimerHistoryHistoryDeta ADD CONSTRAINT FK_ProcessTimerHistoryHistoryDeta_ProcessTimerHistoryId FOREIGN KEY (ProcessTimerHistoryId) REFERENCES ProcessTimerHistory(ProcessTimerHistoryId);
GO
ALTER TABLE NotificationServers ADD CONSTRAINT FK_NotificationServers_ServerId FOREIGN KEY (ServerId) REFERENCES SecurityServers(ServerId);
GO
ALTER TABLE HoldReleaseHistory ADD CONSTRAINT FK_HoldReleaseHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE HoldReleaseHistory ADD CONSTRAINT FK_HoldReleaseHistory_HoldReasonId FOREIGN KEY (HoldReasonId) REFERENCES HoldReason(HoldReasonId);
GO
ALTER TABLE HoldReleaseHistory ADD CONSTRAINT FK_HoldReleaseHistory_ReleaseReasonId FOREIGN KEY (ReleaseReasonId) REFERENCES ReleaseReason(ReleaseReasonId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_EmployeeLoginInfoId FOREIGN KEY (EmployeeLoginInfoId) REFERENCES EmployeeLoginInfo(EmployeeLoginInfoId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_ES_DisplayOptionsId FOREIGN KEY (ES_DisplayOptionsId) REFERENCES ES_DisplayOptions(ES_DisplayOptionsId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_ESigRoleGroupId FOREIGN KEY (ESigRoleGroupId) REFERENCES ESigRoleGroup(ESigRoleGroupId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_HistoryViewId FOREIGN KEY (HistoryViewId) REFERENCES HistoryView(HistoryViewId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_MenuDefinitionId FOREIGN KEY (MenuDefinitionId) REFERENCES MenuDefinition(MenuDefinitionId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_PortalMenuDefinitionId FOREIGN KEY (PortalMenuDefinitionId) REFERENCES PortalMenuDefinition(PortalMenuDefinitionId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_SessionValuesId FOREIGN KEY (SessionValuesId) REFERENCES SessionValues(SessionValuesId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_TrainingPlanId FOREIGN KEY (TrainingPlanId) REFERENCES TrainingPlan(TrainingPlanId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_UIPortalProfileId FOREIGN KEY (UIPortalProfileId) REFERENCES UIPortalProfile(UIPortalProfileId);
GO
ALTER TABLE Employee ADD CONSTRAINT FK_Employee_UserProfileId FOREIGN KEY (UserProfileId) REFERENCES UserProfile(UserProfileId);
GO
ALTER TABLE CDOInheritMaskDef ADD CONSTRAINT FK_CDOInheritMaskDef_InheritanceBitValue FOREIGN KEY (InheritanceBitValue) REFERENCES CDOFieldInheritMaskDef(InheritanceBitValue);
GO
ALTER TABLE DPCollectionGroupHistory ADD CONSTRAINT FK_DPCollectionGroupHistory_CollectDataPointsHistoryId FOREIGN KEY (CollectDataPointsHistoryId) REFERENCES CollectDataPointsHistory(CollectDataPointsHistoryId);
GO
ALTER TABLE NotificationTarget ADD CONSTRAINT FK_NotificationTarget_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE CreateCAPAHistory ADD CONSTRAINT FK_CreateCAPAHistory_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE CreateCAPAHistory ADD CONSTRAINT FK_CreateCAPAHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CreateCAPAHistory ADD CONSTRAINT FK_CreateCAPAHistory_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CreateCAPAHistory ADD CONSTRAINT FK_CreateCAPAHistory_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE UISourcePage ADD CONSTRAINT FK_UISourcePage_ActionId FOREIGN KEY (ActionId) REFERENCES ActionDef(ActionId);
GO
ALTER TABLE UISourcePage ADD CONSTRAINT FK_UISourcePage_UIVirtualPageId FOREIGN KEY (UIVirtualPageId) REFERENCES UIVirtualPage(UIVirtualPageId);
GO
ALTER TABLE StartHistoryDetailfujLotComps ADD CONSTRAINT FK_StartHistoryDetailfujLotComps_fujLotCompsId FOREIGN KEY (fujLotCompsId) REFERENCES fujLotComps(fujLotCompsId);
GO
ALTER TABLE StartHistoryDetailfujLotComps ADD CONSTRAINT FK_StartHistoryDetailfujLotComps_StartHistoryDetailId FOREIGN KEY (StartHistoryDetailId) REFERENCES StartHistoryDetail(StartHistoryDetailId);
GO
ALTER TABLE CalendarShift ADD CONSTRAINT FK_CalendarShift_MfgCalendarId FOREIGN KEY (MfgCalendarId) REFERENCES MfgCalendar(MfgCalendarId);
GO
ALTER TABLE CalendarShift ADD CONSTRAINT FK_CalendarShift_ShiftId FOREIGN KEY (ShiftId) REFERENCES Shift(ShiftId);
GO
ALTER TABLE CalendarShift ADD CONSTRAINT FK_CalendarShift_TeamId FOREIGN KEY (TeamId) REFERENCES Team(TeamId);
GO
ALTER TABLE EventDisposition ADD CONSTRAINT FK_EventDisposition_DispositionId FOREIGN KEY (DispositionId) REFERENCES Disposition(DispositionId);
GO
ALTER TABLE ADS_SUPPORTED_EVENTS ADD CONSTRAINT FK_ADS_SUPPORTED_EVENTS_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE A_ResourceBOMMaterialListItem ADD CONSTRAINT FK_A_ResourceBOMMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_ResourceBOMMaterialListItem ADD CONSTRAINT FK_A_ResourceBOMMaterialListItem_ResourceBOMId FOREIGN KEY (ResourceBOMId) REFERENCES A_ResourceBOM(ResourceBOMId);
GO
ALTER TABLE A_ResourceBOMMaterialListItem ADD CONSTRAINT FK_A_ResourceBOMMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE HoldReleaseHistoryDetail ADD CONSTRAINT FK_HoldReleaseHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE HoldReleaseHistoryDetail ADD CONSTRAINT FK_HoldReleaseHistoryDetail_HoldReleaseHistoryId FOREIGN KEY (HoldReleaseHistoryId) REFERENCES HoldReleaseHistory(HoldReleaseHistoryId);
GO
ALTER TABLE DPCollectionPointHistory ADD CONSTRAINT FK_DPCollectionPointHistory_DPCollectionGroupHistoryId FOREIGN KEY (DPCollectionGroupHistoryId) REFERENCES DPCollectionGroupHistory(DPCollectionGroupHistoryId);
GO
ALTER TABLE DPCollectionPointHistory ADD CONSTRAINT FK_DPCollectionPointHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE ADS_TENANT ADD CONSTRAINT FK_ADS_TENANT_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE CreateCAPAHistoryHistoryDetail ADD CONSTRAINT FK_CreateCAPAHistoryHistoryDetail_CreateCAPAHistoryId FOREIGN KEY (CreateCAPAHistoryId) REFERENCES CreateCAPAHistory(CreateCAPAHistoryId);
GO
ALTER TABLE StartHistoryDetailisCurrentDef ADD CONSTRAINT FK_StartHistoryDetailisCurrentDef_isCurrentDefectsId FOREIGN KEY (isCurrentDefectsId) REFERENCES isCurrentDefects(isCurrentDefectsId);
GO
ALTER TABLE StartHistoryDetailisCurrentDef ADD CONSTRAINT FK_StartHistoryDetailisCurrentDef_StartHistoryDetailId FOREIGN KEY (StartHistoryDetailId) REFERENCES StartHistoryDetail(StartHistoryDetailId);
GO
ALTER TABLE EventDispositionHistoryDetail ADD CONSTRAINT FK_EventDispositionHistoryDetail_DispositionId FOREIGN KEY (DispositionId) REFERENCES Disposition(DispositionId);
GO
ALTER TABLE ProductionStatusAllowedProduct ADD CONSTRAINT FK_ProductionStatusAllowedProduct_ProductionStatusId FOREIGN KEY (ProductionStatusId) REFERENCES ProductionStatus(ProductionStatusId);
GO
ALTER TABLE A_ResourceBOMMaterialListItemS ADD CONSTRAINT FK_A_ResourceBOMMaterialListItemS_ResourceBOMMaterialListItemId FOREIGN KEY (ResourceBOMMaterialListItemId) REFERENCES A_ResourceBOMMaterialListItem(ResourceBOMMaterialListItemId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_BOMBaseId FOREIGN KEY (BOMBaseId) REFERENCES BOMBase(BOMBaseId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_BOMId FOREIGN KEY (BOMId) REFERENCES BOM(BOMId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_JobModelId FOREIGN KEY (JobModelId) REFERENCES A_JobModel(JobModelId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_MaintenanceReasonId FOREIGN KEY (MaintenanceReasonId) REFERENCES MaintenanceReason(MaintenanceReasonId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_MaintenanceReqBaseId FOREIGN KEY (MaintenanceReqBaseId) REFERENCES MaintenanceReqBase(MaintenanceReqBaseId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE MaintenanceReq ADD CONSTRAINT FK_MaintenanceReq_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE HorizontalShiftOptions ADD CONSTRAINT FK_HorizontalShiftOptions_UIActionId FOREIGN KEY (UIActionId) REFERENCES UIAction(UIActionId);
GO
ALTER TABLE Organization ADD CONSTRAINT FK_Organization_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE ADS_USER ADD CONSTRAINT FK_ADS_USER_Cluster_ID FOREIGN KEY (Cluster_ID) REFERENCES ADS_CLUSTER(Cluster_ID);
GO
ALTER TABLE CreateEventHistory ADD CONSTRAINT FK_CreateEventHistory_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE CreateEventHistory ADD CONSTRAINT FK_CreateEventHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CreateEventHistory ADD CONSTRAINT FK_CreateEventHistory_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CreateEventHistory ADD CONSTRAINT FK_CreateEventHistory_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE CollaboratorEntry ADD CONSTRAINT FK_CollaboratorEntry_DelegationTaskId FOREIGN KEY (DelegationTaskId) REFERENCES DelegationTask(DelegationTaskId);
GO
ALTER TABLE CollaboratorEntry ADD CONSTRAINT FK_CollaboratorEntry_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE StartHistoryDtlWorkflowStack ADD CONSTRAINT FK_StartHistoryDtlWorkflowStack_StartHistoryDetailId FOREIGN KEY (StartHistoryDetailId) REFERENCES StartHistoryDetail(StartHistoryDetailId);
GO
ALTER TABLE A_ResourceComponents ADD CONSTRAINT FK_A_ResourceComponents_IssueDifferenceReasonId FOREIGN KEY (IssueDifferenceReasonId) REFERENCES IssueDifferenceReason(IssueDifferenceReasonId);
GO
ALTER TABLE A_ResourceComponents ADD CONSTRAINT FK_A_ResourceComponents_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_ResourceComponents ADD CONSTRAINT FK_A_ResourceComponents_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE A_ResourceComponents ADD CONSTRAINT FK_A_ResourceComponents_SubstitutionReasonId FOREIGN KEY (SubstitutionReasonId) REFERENCES SubstitutionReason(SubstitutionReasonId);
GO
ALTER TABLE MaintenanceReqBase ADD CONSTRAINT FK_MaintenanceReqBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE CIODPElementItem ADD CONSTRAINT FK_CIODPElementItem_CIODataPointInstanceId FOREIGN KEY (CIODataPointInstanceId) REFERENCES CIODataPointInstance(CIODataPointInstanceId);
GO
ALTER TABLE AlarmDefinition ADD CONSTRAINT FK_AlarmDefinition_ActionId FOREIGN KEY (ActionId) REFERENCES ActionDef(ActionId);
GO
ALTER TABLE AlarmDefinition ADD CONSTRAINT FK_AlarmDefinition_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE AlarmDefinition ADD CONSTRAINT FK_AlarmDefinition_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE AlarmDefinition ADD CONSTRAINT FK_AlarmDefinition_NotificationTargetId FOREIGN KEY (NotificationTargetId) REFERENCES NotificationTarget(NotificationTargetId);
GO
ALTER TABLE NumberingRuleMap ADD CONSTRAINT FK_NumberingRuleMap_NumberingRuleId FOREIGN KEY (NumberingRuleId) REFERENCES NumberingRule(NumberingRuleId);
GO
ALTER TABLE NumberingRuleMap ADD CONSTRAINT FK_NumberingRuleMap_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CreateSamplingLotHistory ADD CONSTRAINT FK_CreateSamplingLotHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CreateSamplingLotHistory ADD CONSTRAINT FK_CreateSamplingLotHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CreateSamplingLotHistory ADD CONSTRAINT FK_CreateSamplingLotHistory_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE CreateSamplingLotHistory ADD CONSTRAINT FK_CreateSamplingLotHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE StartReason ADD CONSTRAINT FK_StartReason_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE StartReason ADD CONSTRAINT FK_StartReason_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE EventFailureActionHistoryDtl ADD CONSTRAINT FK_EventFailureActionHistoryDtl_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE A_ResourceComponentSetupHist ADD CONSTRAINT FK_A_ResourceComponentSetupHist_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE MaintenanceStatus ADD CONSTRAINT FK_MaintenanceStatus_AssignedMaintReqId FOREIGN KEY (AssignedMaintReqId) REFERENCES AssignedMaintReq(AssignedMaintReqId);
GO
ALTER TABLE MaintenanceStatus ADD CONSTRAINT FK_MaintenanceStatus_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE MaintenanceStatus ADD CONSTRAINT FK_MaintenanceStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIODPTElementItem ADD CONSTRAINT FK_CIODPTElementItem_CIODataPointTypeId FOREIGN KEY (CIODataPointTypeId) REFERENCES CIODataPointType(CIODataPointTypeId);
GO
ALTER TABLE ElectronicProcedure ADD CONSTRAINT FK_ElectronicProcedure_ElectronicProcedureBaseId FOREIGN KEY (ElectronicProcedureBaseId) REFERENCES ElectronicProcedureBase(ElectronicProcedureBaseId);
GO
ALTER TABLE ElectronicProcedure ADD CONSTRAINT FK_ElectronicProcedure_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE AlarmDefinitionTextVariables ADD CONSTRAINT FK_AlarmDefinitionTextVariables_AlarmDefinitionId FOREIGN KEY (AlarmDefinitionId) REFERENCES AlarmDefinition(AlarmDefinitionId);
GO
ALTER TABLE CreateSamplingLotHistoryHistor ADD CONSTRAINT FK_CreateSamplingLotHistoryHistor_CreateSamplingLotHistoryId FOREIGN KEY (CreateSamplingLotHistoryId) REFERENCES CreateSamplingLotHistory(CreateSamplingLotHistoryId);
GO
ALTER TABLE UIVirPageUserPersonalizations ADD CONSTRAINT FK_UIVirPageUserPersonalizations_UIVirtualPageId FOREIGN KEY (UIVirtualPageId) REFERENCES UIVirtualPage(UIVirtualPageId);
GO
ALTER TABLE CollectDataHistory ADD CONSTRAINT FK_CollectDataHistory_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE CollectDataHistory ADD CONSTRAINT FK_CollectDataHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CollectDataHistory ADD CONSTRAINT FK_CollectDataHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE RolePermission ADD CONSTRAINT FK_RolePermission_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE EventFailureCauseHistoryDetail ADD CONSTRAINT FK_EventFailureCauseHistoryDetail_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE ChangeCategoryHistory ADD CONSTRAINT FK_ChangeCategoryHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ProductSubstitutes ADD CONSTRAINT FK_ProductSubstitutes_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_ResourceComponentSetupHistD ADD CONSTRAINT FK_A_ResourceComponentSetupHistD_IssueDifferenceReasonId FOREIGN KEY (IssueDifferenceReasonId) REFERENCES IssueDifferenceReason(IssueDifferenceReasonId);
GO
ALTER TABLE A_ResourceComponentSetupHistD ADD CONSTRAINT FK_A_ResourceComponentSetupHistD_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_ResourceComponentSetupHistD ADD CONSTRAINT FK_A_ResourceComponentSetupHistD_ResourceComponentSetupHistId FOREIGN KEY (ResourceComponentSetupHistId) REFERENCES A_ResourceComponentSetupHist(ResourceComponentSetupHistId);
GO
ALTER TABLE A_ResourceComponentSetupHistD ADD CONSTRAINT FK_A_ResourceComponentSetupHistD_SubstitutionReasonId FOREIGN KEY (SubstitutionReasonId) REFERENCES SubstitutionReason(SubstitutionReasonId);
GO
ALTER TABLE FujHistoryManhour ADD CONSTRAINT FK_FujHistoryManhour_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE FujHistoryManhour ADD CONSTRAINT FK_FujHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE FujHistoryManhour ADD CONSTRAINT FK_FujHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE FujHistoryManhour ADD CONSTRAINT FK_FujHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE CDOFields ADD CONSTRAINT FK_CDOFields_CDODefID FOREIGN KEY (CDODefID) REFERENCES InstanceIDCount(CDODefID);
GO
ALTER TABLE CDOFields ADD CONSTRAINT FK_CDOFields_CDOFieldUsageId FOREIGN KEY (CDOFieldUsageId) REFERENCES CDOFieldUsage(CDOFieldUsageId);
GO
ALTER TABLE CDOFields ADD CONSTRAINT FK_CDOFields_SelValMode FOREIGN KEY (SelValMode) REFERENCES CDOFieldSelValModes(SelValMode);
GO
ALTER TABLE ElectronicProcedureBase ADD CONSTRAINT FK_ElectronicProcedureBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ElectronicProcedure(ElectronicProcedureId);
GO
ALTER TABLE andonForUnitProcess ADD CONSTRAINT FK_andonForUnitProcess_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE andonForUnitProcess ADD CONSTRAINT FK_andonForUnitProcess_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE csiTbl_FactoryPerformanceSum ADD CONSTRAINT FK_csiTbl_FactoryPerformanceSum_CalendarShiftId FOREIGN KEY (CalendarShiftId) REFERENCES CalendarShift(CalendarShiftId);
GO
ALTER TABLE csiTbl_FactoryPerformanceSum ADD CONSTRAINT FK_csiTbl_FactoryPerformanceSum_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE csiTbl_FactoryPerformanceSum ADD CONSTRAINT FK_csiTbl_FactoryPerformanceSum_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE csiTbl_FactoryPerformanceSum ADD CONSTRAINT FK_csiTbl_FactoryPerformanceSum_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE csiTbl_FactoryPerformanceSum ADD CONSTRAINT FK_csiTbl_FactoryPerformanceSum_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE CollectDataHistoryHistoryDetai ADD CONSTRAINT FK_CollectDataHistoryHistoryDetai_CollectDataHistoryId FOREIGN KEY (CollectDataHistoryId) REFERENCES CollectDataHistory(CollectDataHistoryId);
GO
ALTER TABLE StartTimerTxnMap ADD CONSTRAINT FK_StartTimerTxnMap_ProcessTimerId FOREIGN KEY (ProcessTimerId) REFERENCES ProcessTimer(ProcessTimerId);
GO
ALTER TABLE RolePermissionModes ADD CONSTRAINT FK_RolePermissionModes_RolePermissionId FOREIGN KEY (RolePermissionId) REFERENCES RolePermission(RolePermissionId);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_EventCustomDataId FOREIGN KEY (EventCustomDataId) REFERENCES EventCustomData(EventCustomDataId);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_EventId FOREIGN KEY (EventId) REFERENCES Event(EventId);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_OccupationId FOREIGN KEY (OccupationId) REFERENCES Occupation(OccupationId);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE EventData ADD CONSTRAINT FK_EventData_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE EventFailureHistoryDetail ADD CONSTRAINT FK_EventFailureHistoryDetail_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE EventFailureHistoryDetail ADD CONSTRAINT FK_EventFailureHistoryDetail_FailureSeverityId FOREIGN KEY (FailureSeverityId) REFERENCES FailureSeverity(FailureSeverityId);
GO
ALTER TABLE ProductVendorItems ADD CONSTRAINT FK_ProductVendorItems_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE csiTbl_QualityObject ADD CONSTRAINT FK_csiTbl_QualityObject_EventFailureId FOREIGN KEY (EventFailureId) REFERENCES EventFailure(EventFailureId);
GO
ALTER TABLE csiTbl_QualityObject ADD CONSTRAINT FK_csiTbl_QualityObject_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE A_ResourceEmployees ADD CONSTRAINT FK_A_ResourceEmployees_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE A_ResourceEmployees ADD CONSTRAINT FK_A_ResourceEmployees_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE MaintReqDueEmailTarget ADD CONSTRAINT FK_MaintReqDueEmailTarget_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE INCOMPLETE_EVENT ADD CONSTRAINT FK_INCOMPLETE_EVENT_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT(Event_ID);
GO
ALTER TABLE INCOMPLETE_EVENT ADD CONSTRAINT FK_INCOMPLETE_EVENT_Event_ID FOREIGN KEY (Event_ID) REFERENCES ADS_EVENT_DELETES(Event_ID);
GO
ALTER TABLE CIOFilterObjects ADD CONSTRAINT FK_CIOFilterObjects_CIOFilterId FOREIGN KEY (CIOFilterId) REFERENCES CIOFilter(CIOFilterId);
GO
ALTER TABLE EMailDistExternalRecipents ADD CONSTRAINT FK_EMailDistExternalRecipents_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE andonForUnitProcessCurrentStatus ADD CONSTRAINT FK_andonForUnitProcessCurrentStatus_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE andonForUnitProcessCurrentStatus ADD CONSTRAINT FK_andonForUnitProcessCurrentStatus_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE OpenProcessObjectHistory ADD CONSTRAINT FK_OpenProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE OpenProcessObjectHistory ADD CONSTRAINT FK_OpenProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CurrentStatusClearanceWorkStns ADD CONSTRAINT FK_CurrentStatusClearanceWorkStns_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE UpdateCAPAHistory ADD CONSTRAINT FK_UpdateCAPAHistory_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE UpdateCAPAHistory ADD CONSTRAINT FK_UpdateCAPAHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE UpdateCAPAHistory ADD CONSTRAINT FK_UpdateCAPAHistory_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE UpdateCAPAHistory ADD CONSTRAINT FK_UpdateCAPAHistory_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE CollectDataPointsHistory ADD CONSTRAINT FK_CollectDataPointsHistory_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE CollectDataPointsHistory ADD CONSTRAINT FK_CollectDataPointsHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE StepPassCount ADD CONSTRAINT FK_StepPassCount_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE fujRestTimeEachWorkCenter ADD CONSTRAINT FK_fujRestTimeEachWorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE fujRestTimeEachWorkCenter ADD CONSTRAINT FK_fujRestTimeEachWorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE fujRestTimeEachWorkCenter ADD CONSTRAINT FK_fujRestTimeEachWorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE InsiteKeyList ADD CONSTRAINT FK_InsiteKeyList_RecID FOREIGN KEY (RecID) REFERENCES SiteInfoKeyList(RecID);
GO
ALTER TABLE EventLot ADD CONSTRAINT FK_EventLot_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE EventLot ADD CONSTRAINT FK_EventLot_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE EventHistoryDetail ADD CONSTRAINT FK_EventHistoryDetail_CreateEventHistoryId FOREIGN KEY (CreateEventHistoryId) REFERENCES CreateEventHistory(CreateEventHistoryId);
GO
ALTER TABLE EventHistoryDetail ADD CONSTRAINT FK_EventHistoryDetail_PriorityLevelId FOREIGN KEY (PriorityLevelId) REFERENCES PriorityLevel(PriorityLevelId);
GO
ALTER TABLE ChangeMgtSpecAllowableRoles ADD CONSTRAINT FK_ChangeMgtSpecAllowableRoles_BusinessProcessSpecId FOREIGN KEY (BusinessProcessSpecId) REFERENCES BusinessProcessSpec(BusinessProcessSpecId);
GO
ALTER TABLE A_ResourceParams ADD CONSTRAINT FK_A_ResourceParams_ParamId FOREIGN KEY (ParamId) REFERENCES A_Param(ParamId);
GO
ALTER TABLE A_ResourceParams ADD CONSTRAINT FK_A_ResourceParams_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE MaintReqPastDueEmailTarget ADD CONSTRAINT FK_MaintReqPastDueEmailTarget_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE andonForUnitRefreshCount ADD CONSTRAINT FK_andonForUnitRefreshCount_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE andonForUnitRefreshCount ADD CONSTRAINT FK_andonForUnitRefreshCount_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE OpenQualityObjectHistory ADD CONSTRAINT FK_OpenQualityObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE UpdateChangePkgHistory ADD CONSTRAINT FK_UpdateChangePkgHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE UpdateChangePkgHistory ADD CONSTRAINT FK_UpdateChangePkgHistory_PackageTypeId FOREIGN KEY (PackageTypeId) REFERENCES PackageType(PackageTypeId);
GO
ALTER TABLE CollectionGate ADD CONSTRAINT FK_CollectionGate_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE fujTmpResultManHour ADD CONSTRAINT FK_fujTmpResultManHour_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE fujTmpResultManHour ADD CONSTRAINT FK_fujTmpResultManHour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE fujTmpResultManHour ADD CONSTRAINT FK_fujTmpResultManHour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE fujTmpResultManHour ADD CONSTRAINT FK_fujTmpResultManHour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE EventLog ADD CONSTRAINT FK_EventLog_CommentTypeId FOREIGN KEY (CommentTypeId) REFERENCES CommentType(CommentTypeId);
GO
ALTER TABLE EventLog ADD CONSTRAINT FK_EventLog_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE EventLog ADD CONSTRAINT FK_EventLog_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE ChangeOwnerHistory ADD CONSTRAINT FK_ChangeOwnerHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ChangeOwnerHistory ADD CONSTRAINT FK_ChangeOwnerHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE ChangeOwnerHistory ADD CONSTRAINT FK_ChangeOwnerHistory_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE A_ResourcePart ADD CONSTRAINT FK_A_ResourcePart_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE MaintReqPendingEmailTarget ADD CONSTRAINT FK_MaintReqPendingEmailTarget_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE GD_CompIf ADD CONSTRAINT FK_GD_CompIf_SEQUENCE FOREIGN KEY (SEQUENCE) REFERENCES GD_ProcessIf(SEQUENCE);
GO
ALTER TABLE CIOFunctionArgs ADD CONSTRAINT FK_CIOFunctionArgs_CIOFunctionId FOREIGN KEY (CIOFunctionId) REFERENCES CIOFunction(CIOFunctionId);
GO
ALTER TABLE EMailDistributionEmployee ADD CONSTRAINT FK_EMailDistributionEmployee_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE andonLineStatus ADD CONSTRAINT FK_andonLineStatus_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE andonLineStatus ADD CONSTRAINT FK_andonLineStatus_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE andonLineStatus ADD CONSTRAINT FK_andonLineStatus_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE OpenQualityObjectHistoryHistor ADD CONSTRAINT FK_OpenQualityObjectHistoryHistor_OpenQualityObjectHistoryId FOREIGN KEY (OpenQualityObjectHistoryId) REFERENCES OpenQualityObjectHistory(OpenQualityObjectHistoryId);
GO
ALTER TABLE CurrentStatusWorkflowStack ADD CONSTRAINT FK_CurrentStatusWorkflowStack_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE UpdateChangePkgHistoryInstance ADD CONSTRAINT FK_UpdateChangePkgHistoryInstance_UpdateChangePkgHistoryId FOREIGN KEY (UpdateChangePkgHistoryId) REFERENCES UpdateChangePkgHistory(UpdateChangePkgHistoryId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE CollectSamplingDataHistory ADD CONSTRAINT FK_CollectSamplingDataHistory_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE EventLogHistoryDetail ADD CONSTRAINT FK_EventLogHistoryDetail_CommentTypeId FOREIGN KEY (CommentTypeId) REFERENCES CommentType(CommentTypeId);
GO
ALTER TABLE EventLogHistoryDetail ADD CONSTRAINT FK_EventLogHistoryDetail_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ChangePackage ADD CONSTRAINT FK_ChangePackage_CollaboratorDataId FOREIGN KEY (CollaboratorDataId) REFERENCES CollaboratorData(CollaboratorDataId);
GO
ALTER TABLE ChangePackage ADD CONSTRAINT FK_ChangePackage_CurrentStatusId FOREIGN KEY (CurrentStatusId) REFERENCES CurrentStatus(CurrentStatusId);
GO
ALTER TABLE ChangePackage ADD CONSTRAINT FK_ChangePackage_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE ChangePackage ADD CONSTRAINT FK_ChangePackage_PackageCreationTemplateId FOREIGN KEY (PackageCreationTemplateId) REFERENCES PackageCreationTemplate(PackageCreationTemplateId);
GO
ALTER TABLE ChangePackage ADD CONSTRAINT FK_ChangePackage_PackageTypeId FOREIGN KEY (PackageTypeId) REFERENCES PackageType(PackageTypeId);
GO
ALTER TABLE QualityCrossRefHistory ADD CONSTRAINT FK_QualityCrossRefHistory_QualityResolutionCodeId FOREIGN KEY (QualityResolutionCodeId) REFERENCES QualityResolutionCode(QualityResolutionCodeId);
GO
ALTER TABLE ApprovalDecision ADD CONSTRAINT FK_ApprovalDecision_ApprovalDecisionListId FOREIGN KEY (ApprovalDecisionListId) REFERENCES ApprovalDecisionList(ApprovalDecisionListId);
GO
ALTER TABLE A_ResourceSlots ADD CONSTRAINT FK_A_ResourceSlots_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIOFunctionItem ADD CONSTRAINT FK_CIOFunctionItem_CIOFunctionId FOREIGN KEY (CIOFunctionId) REFERENCES CIOFunction(CIOFunctionId);
GO
ALTER TABLE CIOFunctionItem ADD CONSTRAINT FK_CIOFunctionItem_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_isRecipePlanId FOREIGN KEY (isRecipePlanId) REFERENCES isRecipePlan(isRecipePlanId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_WorkflowBaseId FOREIGN KEY (WorkflowBaseId) REFERENCES WorkflowBase(WorkflowBaseId);
GO
ALTER TABLE ProductFamily ADD CONSTRAINT FK_ProductFamily_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE EMailDistributionRoleRecipient ADD CONSTRAINT FK_EMailDistributionRoleRecipient_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE OperationSchedulingDetail ADD CONSTRAINT FK_OperationSchedulingDetail_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE Customer ADD CONSTRAINT FK_Customer_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE UpdateChangePkgHistoryTargetSy ADD CONSTRAINT FK_UpdateChangePkgHistoryTargetSy_UpdateChangePkgHistoryId FOREIGN KEY (UpdateChangePkgHistoryId) REFERENCES UpdateChangePkgHistory(UpdateChangePkgHistoryId);
GO
ALTER TABLE CollectSamplingHistoryDetails ADD CONSTRAINT FK_CollectSamplingHistoryDetails_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE GD_ProcessIf ADD CONSTRAINT FK_GD_ProcessIf_SEQUENCE FOREIGN KEY (SEQUENCE) REFERENCES GD_CompIf(SEQUENCE);
GO
ALTER TABLE RoutingHistory ADD CONSTRAINT FK_RoutingHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE RoutingHistory ADD CONSTRAINT FK_RoutingHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE EventLotEventDispositions ADD CONSTRAINT FK_EventLotEventDispositions_EventLotId FOREIGN KEY (EventLotId) REFERENCES EventLot(EventLotId);
GO
ALTER TABLE ChangePackageMoveHistory ADD CONSTRAINT FK_ChangePackageMoveHistory_PathId FOREIGN KEY (PathId) REFERENCES Path(PathId);
GO
ALTER TABLE QualityProcessingMap ADD CONSTRAINT FK_QualityProcessingMap_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE QualityProcessingMap ADD CONSTRAINT FK_QualityProcessingMap_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE A_ResourceStatusHistoryDetails ADD CONSTRAINT FK_A_ResourceStatusHistoryDetails_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE A_ResourceStatusHistoryDetails ADD CONSTRAINT FK_A_ResourceStatusHistoryDetails_ParamId FOREIGN KEY (ParamId) REFERENCES A_Param(ParamId);
GO
ALTER TABLE A_ResourceStatusHistoryDetails ADD CONSTRAINT FK_A_ResourceStatusHistoryDetails_ResourceStatusHistoryId FOREIGN KEY (ResourceStatusHistoryId) REFERENCES ResourceStatusHistory(ResourceStatusHistoryId);
GO
ALTER TABLE MasterDataCatalogDtl ADD CONSTRAINT FK_MasterDataCatalogDtl_MasterDataCatalogId FOREIGN KEY (MasterDataCatalogId) REFERENCES MasterDataCatalog(MasterDataCatalogId);
GO
ALTER TABLE CIOHeaderField ADD CONSTRAINT FK_CIOHeaderField_CIOHeaderSectionId FOREIGN KEY (CIOHeaderSectionId) REFERENCES CIOHeaderSection(CIOHeaderSectionId);
GO
ALTER TABLE CustomerContact ADD CONSTRAINT FK_CustomerContact_CustomerId FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);
GO
ALTER TABLE UpdateEventDetailsHistory ADD CONSTRAINT FK_UpdateEventDetailsHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CollectSamplingTestDtlHistory ADD CONSTRAINT FK_CollectSamplingTestDtlHistory_SampleDataPointId FOREIGN KEY (SampleDataPointId) REFERENCES SampleDataPoint(SampleDataPointId);
GO
ALTER TABLE SuspectDeviceData ADD CONSTRAINT FK_SuspectDeviceData_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE SalesOrder ADD CONSTRAINT FK_SalesOrder_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE SalesOrder ADD CONSTRAINT FK_SalesOrder_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE SalesOrder ADD CONSTRAINT FK_SalesOrder_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE SalesOrder ADD CONSTRAINT FK_SalesOrder_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE SalesOrder ADD CONSTRAINT FK_SalesOrder_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE EventLotFailures ADD CONSTRAINT FK_EventLotFailures_EventLotId FOREIGN KEY (EventLotId) REFERENCES EventLot(EventLotId);
GO
ALTER TABLE ChangePackagePreReqChangePkgs ADD CONSTRAINT FK_ChangePackagePreReqChangePkgs_ChangePackageId FOREIGN KEY (ChangePackageId) REFERENCES ChangePackage(ChangePackageId);
GO
ALTER TABLE QualityReportConfig ADD CONSTRAINT FK_QualityReportConfig_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE QualityReportConfig ADD CONSTRAINT FK_QualityReportConfig_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE ApprovalRoutingInfo ADD CONSTRAINT FK_ApprovalRoutingInfo_QualityResolutionCodeId FOREIGN KEY (QualityResolutionCodeId) REFERENCES QualityResolutionCode(QualityResolutionCodeId);
GO
ALTER TABLE A_RoleSetupAccesses ADD CONSTRAINT FK_A_RoleSetupAccesses_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE MasterRecipe ADD CONSTRAINT FK_MasterRecipe_MasterRecipeBaseId FOREIGN KEY (MasterRecipeBaseId) REFERENCES MasterRecipeBase(MasterRecipeBaseId);
GO
ALTER TABLE MasterRecipe ADD CONSTRAINT FK_MasterRecipe_PrinterLabelDefinitionId FOREIGN KEY (PrinterLabelDefinitionId) REFERENCES PrinterLabelDefinition(PrinterLabelDefinitionId);
GO
ALTER TABLE MasterRecipe ADD CONSTRAINT FK_MasterRecipe_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE MasterRecipe ADD CONSTRAINT FK_MasterRecipe_WorkflowBaseId FOREIGN KEY (WorkflowBaseId) REFERENCES WorkflowBase(WorkflowBaseId);
GO
ALTER TABLE MasterRecipe ADD CONSTRAINT FK_MasterRecipe_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE A_BOMMaterialListItemSub ADD CONSTRAINT FK_A_BOMMaterialListItemSub_BOMMaterialListItemId FOREIGN KEY (BOMMaterialListItemId) REFERENCES BOMMaterialListItem(BOMMaterialListItemId);
GO
ALTER TABLE OrganizationAffectedContainers ADD CONSTRAINT FK_OrganizationAffectedContainers_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CustomerData ADD CONSTRAINT FK_CustomerData_EventDataId FOREIGN KEY (EventDataId) REFERENCES EventData(EventDataId);
GO
ALTER TABLE UpdateEventHistory ADD CONSTRAINT FK_UpdateEventHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CombineHistDetChildContainers ADD CONSTRAINT FK_CombineHistDetChildContainers_CombineHistoryId FOREIGN KEY (CombineHistoryId) REFERENCES CombineHistory(CombineHistoryId);
GO
ALTER TABLE SuspectDeviceHistoryDetail ADD CONSTRAINT FK_SuspectDeviceHistoryDetail_EventDataHistoryDetailsId FOREIGN KEY (EventDataHistoryDetailsId) REFERENCES EventDataHistoryDetail(EventDataHistoryDetailsId);
GO
ALTER TABLE isConsumeMatQueueTxns ADD CONSTRAINT FK_isConsumeMatQueueTxns_FactoryId FOREIGN KEY (FactoryId) REFERENCES Factory(FactoryId);
GO
ALTER TABLE SampleDataPoint ADD CONSTRAINT FK_SampleDataPoint_SampleDataPointBaseId FOREIGN KEY (SampleDataPointBaseId) REFERENCES SampleDataPointBase(SampleDataPointBaseId);
GO
ALTER TABLE SampleDataPoint ADD CONSTRAINT FK_SampleDataPoint_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE SampleDataPoint ADD CONSTRAINT FK_SampleDataPoint_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE EventLotHistDetailFailureModes ADD CONSTRAINT FK_EventLotHistDetailFailureModes_EventLotHistoryDetailId FOREIGN KEY (EventLotHistoryDetailId) REFERENCES EventLotHistoryDetail(EventLotHistoryDetailId);
GO
ALTER TABLE EmployeeEscalationRecipients ADD CONSTRAINT FK_EmployeeEscalationRecipients_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ApprovalSheetMap ADD CONSTRAINT FK_ApprovalSheetMap_ApprovalSheetTemplateId FOREIGN KEY (ApprovalSheetTemplateId) REFERENCES ApprovalSheetTemplate(ApprovalSheetTemplateId);
GO
ALTER TABLE MasterRecipeBase ADD CONSTRAINT FK_MasterRecipeBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE A_CompleteMaintHistoryDetailsC ADD CONSTRAINT FK_A_CompleteMaintHistoryDetailsC_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_CompleteMaintHistoryDetailsC ADD CONSTRAINT FK_A_CompleteMaintHistoryDetailsC_CompleteMaintHistoryDetailsId FOREIGN KEY (CompleteMaintHistoryDetailsId) REFERENCES CompleteMaintHistoryDetails(CompleteMaintHistoryDetailsId);
GO
ALTER TABLE A_CompleteMaintHistoryDetailsC ADD CONSTRAINT FK_A_CompleteMaintHistoryDetailsC_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_ChangeMgtApplicationId FOREIGN KEY (ChangeMgtApplicationId) REFERENCES ChangeMgtApplication(ChangeMgtApplicationId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_DispatchRuleId FOREIGN KEY (DispatchRuleId) REFERENCES DispatchRule(DispatchRuleId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_EnterpriseId FOREIGN KEY (EnterpriseId) REFERENCES Enterprise(EnterpriseId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_ES_DisplayOptionsId FOREIGN KEY (ES_DisplayOptionsId) REFERENCES ES_DisplayOptions(ES_DisplayOptionsId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_ES_SettingsId FOREIGN KEY (ES_SettingsId) REFERENCES ES_Settings(ES_SettingsId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_isAutoStartSettingsId FOREIGN KEY (isAutoStartSettingsId) REFERENCES isAutoStartSettings(isAutoStartSettingsId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_isOEESettingsId FOREIGN KEY (isOEESettingsId) REFERENCES isOEESettings(isOEESettingsId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_MfgCalendarId FOREIGN KEY (MfgCalendarId) REFERENCES MfgCalendar(MfgCalendarId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE Factory ADD CONSTRAINT FK_Factory_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE OrganizationGEDisallowedTxns ADD CONSTRAINT FK_OrganizationGEDisallowedTxns_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE UpdateSamplingLotHistory ADD CONSTRAINT FK_UpdateSamplingLotHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CombineHistory ADD CONSTRAINT FK_CombineHistory_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE CombineHistory ADD CONSTRAINT FK_CombineHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE SwitchingRule ADD CONSTRAINT FK_SwitchingRule_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE SwitchingRule ADD CONSTRAINT FK_SwitchingRule_EMailMessageId FOREIGN KEY (EMailMessageId) REFERENCES EMailMessage(EMailMessageId);
GO
ALTER TABLE SwitchingRule ADD CONSTRAINT FK_SwitchingRule_SwitchingRuleBaseId FOREIGN KEY (SwitchingRuleBaseId) REFERENCES SwitchingRuleBase(SwitchingRuleBaseId);
GO
ALTER TABLE SwitchingRule ADD CONSTRAINT FK_SwitchingRule_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE SampleDataPointBase ADD CONSTRAINT FK_SampleDataPointBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES SampleDataPoint(SampleDataPointId);
GO
ALTER TABLE EventLotHistoryDetail ADD CONSTRAINT FK_EventLotHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE QueryDef ADD CONSTRAINT FK_QueryDef_DataSourceNameID FOREIGN KEY (DataSourceNameID) REFERENCES DBDataSourceNames(DataSourceNameID);
GO
ALTER TABLE QueryDef ADD CONSTRAINT FK_QueryDef_QueryCategoryID FOREIGN KEY (QueryCategoryID) REFERENCES QueryCategory(QueryCategoryID);
GO
ALTER TABLE QueryDef ADD CONSTRAINT FK_QueryDef_QueryTypeID FOREIGN KEY (QueryTypeID) REFERENCES QueryTypes(QueryTypeID);
GO
ALTER TABLE EmployeeLoginInfo ADD CONSTRAINT FK_EmployeeLoginInfo_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ApprovalSheetTemplate ADD CONSTRAINT FK_ApprovalSheetTemplate_ApprovalDecisionListId FOREIGN KEY (ApprovalDecisionListId) REFERENCES ApprovalDecisionList(ApprovalDecisionListId);
GO
ALTER TABLE A_SpecParams ADD CONSTRAINT FK_A_SpecParams_ParamId FOREIGN KEY (ParamId) REFERENCES A_Param(ParamId);
GO
ALTER TABLE A_SpecParams ADD CONSTRAINT FK_A_SpecParams_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE MasterRecipeDetail ADD CONSTRAINT FK_MasterRecipeDetail_MasterRecipeId FOREIGN KEY (MasterRecipeId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE MasterRecipeDetail ADD CONSTRAINT FK_MasterRecipeDetail_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE MasterRecipeDetail ADD CONSTRAINT FK_MasterRecipeDetail_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE MasterRecipeDetail ADD CONSTRAINT FK_MasterRecipeDetail_TaskListBaseId FOREIGN KEY (TaskListBaseId) REFERENCES TaskListBase(TaskListBaseId);
GO
ALTER TABLE MasterRecipeDetail ADD CONSTRAINT FK_MasterRecipeDetail_TaskListId FOREIGN KEY (TaskListId) REFERENCES TaskList(TaskListId);
GO
ALTER TABLE CIOInboundAdapterFilters ADD CONSTRAINT FK_CIOInboundAdapterFilters_CIOChannelAdapterId FOREIGN KEY (CIOChannelAdapterId) REFERENCES CIOChannelAdapter(CIOChannelAdapterId);
GO
ALTER TABLE CIOInboundAdapterFilters ADD CONSTRAINT FK_CIOInboundAdapterFilters_CIOFilterId FOREIGN KEY (CIOFilterId) REFERENCES CIOFilter(CIOFilterId);
GO
ALTER TABLE OrganizationPEDisallowedTxns ADD CONSTRAINT FK_OrganizationPEDisallowedTxns_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE CycleTimeGate ADD CONSTRAINT FK_CycleTimeGate_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE UpdateSamplingLotHistoryHistor ADD CONSTRAINT FK_UpdateSamplingLotHistoryHistor_UpdateSamplingLotHistoryId FOREIGN KEY (UpdateSamplingLotHistoryId) REFERENCES UpdateSamplingLotHistory(UpdateSamplingLotHistoryId);
GO
ALTER TABLE CombineHistoryDetail ADD CONSTRAINT FK_CombineHistoryDetail_CombineHistoryId FOREIGN KEY (CombineHistoryId) REFERENCES CombineHistory(CombineHistoryId);
GO
ALTER TABLE SwitchingRuleBase ADD CONSTRAINT FK_SwitchingRuleBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES SwitchingRule(SwitchingRuleId);
GO
ALTER TABLE isDefectReasonGroupDefaultForO ADD CONSTRAINT FK_isDefectReasonGroupDefaultForO_isDefectReasonGroupId FOREIGN KEY (isDefectReasonGroupId) REFERENCES isDefectReasonGroup(isDefectReasonGroupId);
GO
ALTER TABLE SampleSizeDetails ADD CONSTRAINT FK_SampleSizeDetails_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE ExecuteChecklistHistory ADD CONSTRAINT FK_ExecuteChecklistHistory_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE ExecuteChecklistHistory ADD CONSTRAINT FK_ExecuteChecklistHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ChangePackageStatusHistory ADD CONSTRAINT FK_ChangePackageStatusHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE EmployeeRole ADD CONSTRAINT FK_EmployeeRole_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE EmployeeRole ADD CONSTRAINT FK_EmployeeRole_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE EmployeeRole ADD CONSTRAINT FK_EmployeeRole_RoleId FOREIGN KEY (RoleId) REFERENCES RoleDef(RoleId);
GO
ALTER TABLE A_StatusModelDetail ADD CONSTRAINT FK_A_StatusModelDetail_ResourceStatusModelId FOREIGN KEY (ResourceStatusModelId) REFERENCES ResourceStatusModel(ResourceStatusModelId);
GO
ALTER TABLE CIOInboundChannelFilters ADD CONSTRAINT FK_CIOInboundChannelFilters_CIOFilterId FOREIGN KEY (CIOFilterId) REFERENCES CIOFilter(CIOFilterId);
GO
ALTER TABLE CIOInboundChannelFilters ADD CONSTRAINT FK_CIOInboundChannelFilters_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_ActionsMenuId FOREIGN KEY (ActionsMenuId) REFERENCES ActionsMenu(ActionsMenuId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_DispatchRuleId FOREIGN KEY (DispatchRuleId) REFERENCES DispatchRule(DispatchRuleId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_ES_DisplayOptionsId FOREIGN KEY (ES_DisplayOptionsId) REFERENCES ES_DisplayOptions(ES_DisplayOptionsId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_fujOperationTypeId FOREIGN KEY (fujOperationTypeId) REFERENCES fujOperationType(fujOperationTypeId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_PrintQueueId FOREIGN KEY (PrintQueueId) REFERENCES PrintQueue(PrintQueueId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_QtyAdjustReasonId FOREIGN KEY (QtyAdjustReasonId) REFERENCES QtyAdjustReason(QtyAdjustReasonId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE Operation ADD CONSTRAINT FK_Operation_WorkCenterId FOREIGN KEY (WorkCenterId) REFERENCES WorkCenter(WorkCenterId);
GO
ALTER TABLE OrganizationQualityESigTxns ADD CONSTRAINT FK_OrganizationQualityESigTxns_OrganizationId FOREIGN KEY (OrganizationId) REFERENCES Organization(OrganizationId);
GO
ALTER TABLE DataCollectionDef ADD CONSTRAINT FK_DataCollectionDef_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE DataCollectionDef ADD CONSTRAINT FK_DataCollectionDef_WebPartId FOREIGN KEY (WebPartId) REFERENCES WebPart(WebPartId);
GO
ALTER TABLE DataCollectionDef ADD CONSTRAINT FK_DataCollectionDef_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE UserAttribute ADD CONSTRAINT FK_UserAttribute_ParentId FOREIGN KEY (ParentId) REFERENCES Container(ContainerId);
GO
ALTER TABLE UserAttribute ADD CONSTRAINT FK_UserAttribute_ParentId FOREIGN KEY (ParentId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE SwitchingRuleDetails ADD CONSTRAINT FK_SwitchingRuleDetails_EMailDistributionId FOREIGN KEY (EMailDistributionId) REFERENCES EMailDistribution(EMailDistributionId);
GO
ALTER TABLE SwitchingRuleDetails ADD CONSTRAINT FK_SwitchingRuleDetails_SwitchingRuleId FOREIGN KEY (SwitchingRuleId) REFERENCES SwitchingRule(SwitchingRuleId);
GO
ALTER TABLE isDefectReasonGroupEntries ADD CONSTRAINT FK_isDefectReasonGroupEntries_isDefectReasonGroupId FOREIGN KEY (isDefectReasonGroupId) REFERENCES isDefectReasonGroup(isDefectReasonGroupId);
GO
ALTER TABLE SampleTest ADD CONSTRAINT FK_SampleTest_ClassificationId FOREIGN KEY (ClassificationId) REFERENCES Classification(ClassificationId);
GO
ALTER TABLE SampleTest ADD CONSTRAINT FK_SampleTest_SampleTestBaseId FOREIGN KEY (SampleTestBaseId) REFERENCES SampleTestBase(SampleTestBaseId);
GO
ALTER TABLE SampleTest ADD CONSTRAINT FK_SampleTest_SubClassificationId FOREIGN KEY (SubClassificationId) REFERENCES SubClassification(SubClassificationId);
GO
ALTER TABLE SampleTest ADD CONSTRAINT FK_SampleTest_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ExecuteChecklistHistoryDtl ADD CONSTRAINT FK_ExecuteChecklistHistoryDtl_ChecklistEntryId FOREIGN KEY (ChecklistEntryId) REFERENCES ChecklistEntry(ChecklistEntryId);
GO
ALTER TABLE ExecuteChecklistHistoryDtl ADD CONSTRAINT FK_ExecuteChecklistHistoryDtl_ExecuteChecklistHistoryId FOREIGN KEY (ExecuteChecklistHistoryId) REFERENCES ExecuteChecklistHistory(ExecuteChecklistHistoryId);
GO
ALTER TABLE ExecuteChecklistHistoryDtl ADD CONSTRAINT FK_ExecuteChecklistHistoryDtl_ResponseSetId FOREIGN KEY (ResponseSetId) REFERENCES ResponseSet(ResponseSetId);
GO
ALTER TABLE ChangePackageTarget ADD CONSTRAINT FK_ChangePackageTarget_TargetSystemId FOREIGN KEY (TargetSystemId) REFERENCES TargetSystem(TargetSystemId);
GO
ALTER TABLE QueryText ADD CONSTRAINT FK_QueryText_DBTypeID FOREIGN KEY (DBTypeID) REFERENCES DBType(DBTypeID);
GO
ALTER TABLE EndCollaborationHistory ADD CONSTRAINT FK_EndCollaborationHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE EndCollaborationHistory ADD CONSTRAINT FK_EndCollaborationHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_StatusModelDetailToReason ADD CONSTRAINT FK_A_StatusModelDetailToReason_StatusModelDetailId FOREIGN KEY (StatusModelDetailId) REFERENCES A_StatusModelDetail(StatusModelDetailId);
GO
ALTER TABLE MenuItem ADD CONSTRAINT FK_MenuItem_MenuDefinitionId FOREIGN KEY (MenuDefinitionId) REFERENCES MenuDefinition(MenuDefinitionId);
GO
ALTER TABLE A_ComputerGroupDefaultForObjec ADD CONSTRAINT FK_A_ComputerGroupDefaultForObjec_ComputerGroupId FOREIGN KEY (ComputerGroupId) REFERENCES A_ComputerGroup(ComputerGroupId);
GO
ALTER TABLE ContainerLevel ADD CONSTRAINT FK_ContainerLevel_UIPreferenceId FOREIGN KEY (UIPreferenceId) REFERENCES UIPreference(UIPreferenceId);
GO
ALTER TABLE ContainerLevel ADD CONSTRAINT FK_ContainerLevel_WIPMsgConfigId FOREIGN KEY (WIPMsgConfigId) REFERENCES WIPMsgConfig(WIPMsgConfigId);
GO
ALTER TABLE ContainerLevel ADD CONSTRAINT FK_ContainerLevel_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE DataCollectionDefBase ADD CONSTRAINT FK_DataCollectionDefBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE isDefectReasonGroupGroups ADD CONSTRAINT FK_isDefectReasonGroupGroups_isDefectReasonGroupId FOREIGN KEY (isDefectReasonGroupId) REFERENCES isDefectReasonGroup(isDefectReasonGroupId);
GO
ALTER TABLE SampleTestBase ADD CONSTRAINT FK_SampleTestBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE ExecuteChklstResponseHistDtl ADD CONSTRAINT FK_ExecuteChklstResponseHistDtl_ExecuteChecklistHistoryDtlId FOREIGN KEY (ExecuteChecklistHistoryDtlId) REFERENCES ExecuteChecklistHistoryDtl(ExecuteChecklistHistoryDtlId);
GO
ALTER TABLE ChangeProcessHistory ADD CONSTRAINT FK_ChangeProcessHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE AssignChangePkgContentHistoryI ADD CONSTRAINT FK_AssignChangePkgContentHistoryI_AssignChangePkgContentHistorId FOREIGN KEY (AssignChangePkgContentHistorId) REFERENCES AssignChangePkgContentHistory(AssignChangePkgContentHistorId);
GO
ALTER TABLE A_TDA ADD CONSTRAINT FK_A_TDA_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE A_ComputerGroupEntries ADD CONSTRAINT FK_A_ComputerGroupEntries_ComputerGroupId FOREIGN KEY (ComputerGroupId) REFERENCES A_ComputerGroup(ComputerGroupId);
GO
ALTER TABLE CIOIncludedMaps ADD CONSTRAINT FK_CIOIncludedMaps_CIOMessageMapBaseId FOREIGN KEY (CIOMessageMapBaseId) REFERENCES CIOMessageMapBase(CIOMessageMapBaseId);
GO
ALTER TABLE CIOIncludedMaps ADD CONSTRAINT FK_CIOIncludedMaps_CIOMessageMapId FOREIGN KEY (CIOMessageMapId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_DispatchRuleId FOREIGN KEY (DispatchRuleId) REFERENCES DispatchRule(DispatchRuleId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_MfgCalendarId FOREIGN KEY (MfgCalendarId) REFERENCES MfgCalendar(MfgCalendarId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE WorkCenter ADD CONSTRAINT FK_WorkCenter_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE RecipeItem ADD CONSTRAINT FK_RecipeItem_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE RecipeItem ADD CONSTRAINT FK_RecipeItem_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE RecipeItem ADD CONSTRAINT FK_RecipeItem_RecipeListId FOREIGN KEY (RecipeListId) REFERENCES RecipeList(RecipeListId);
GO
ALTER TABLE RecipeItem ADD CONSTRAINT FK_RecipeItem_RecipeMaterialListItemId FOREIGN KEY (RecipeMaterialListItemId) REFERENCES RecipeMaterialListItem(RecipeMaterialListItemId);
GO
ALTER TABLE OutboundXMLDocProcessing ADD CONSTRAINT FK_OutboundXMLDocProcessing_DataTransportId FOREIGN KEY (DataTransportId) REFERENCES DataTransport(DataTransportId);
GO
ALTER TABLE DataPoint ADD CONSTRAINT FK_DataPoint_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE DataPoint ADD CONSTRAINT FK_DataPoint_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE isIdealCycleTimes ADD CONSTRAINT FK_isIdealCycleTimes_ProductFamilyId FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily(ProductFamilyId);
GO
ALTER TABLE isIdealCycleTimes ADD CONSTRAINT FK_isIdealCycleTimes_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE SampleTestSampleDataPoints ADD CONSTRAINT FK_SampleTestSampleDataPoints_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_ElectronicProcedureId FOREIGN KEY (ElectronicProcedureId) REFERENCES ElectronicProcedure(ElectronicProcedureId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_IssueDifferenceReasonId FOREIGN KEY (IssueDifferenceReasonId) REFERENCES IssueDifferenceReason(IssueDifferenceReasonId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ExecuteTaskHistory ADD CONSTRAINT FK_ExecuteTaskHistory_TaskListId FOREIGN KEY (TaskListId) REFERENCES TaskList(TaskListId);
GO
ALTER TABLE ChangeProcessHistoryHistoryDet ADD CONSTRAINT FK_ChangeProcessHistoryHistoryDet_ChangeProcessHistoryId FOREIGN KEY (ChangeProcessHistoryId) REFERENCES ChangeProcessHistory(ChangeProcessHistoryId);
GO
ALTER TABLE EndTimerTxnMap ADD CONSTRAINT FK_EndTimerTxnMap_ProcessTimerId FOREIGN KEY (ProcessTimerId) REFERENCES ProcessTimer(ProcessTimerId);
GO
ALTER TABLE AssignChangePkgContentHistoryT ADD CONSTRAINT FK_AssignChangePkgContentHistoryT_AssignChangePkgContentHistorId FOREIGN KEY (AssignChangePkgContentHistorId) REFERENCES AssignChangePkgContentHistory(AssignChangePkgContentHistorId);
GO
ALTER TABLE A_TDADetailsHistory ADD CONSTRAINT FK_A_TDADetailsHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_TDADetailsHistory ADD CONSTRAINT FK_A_TDADetailsHistory_TDAId FOREIGN KEY (TDAId) REFERENCES A_TDA(TDAId);
GO
ALTER TABLE A_ComputerGroupGroups ADD CONSTRAINT FK_A_ComputerGroupGroups_ComputerGroupId FOREIGN KEY (ComputerGroupId) REFERENCES A_ComputerGroup(ComputerGroupId);
GO
ALTER TABLE RecipeItemPrerequisiteTasks ADD CONSTRAINT FK_RecipeItemPrerequisiteTasks_RecipeItemId FOREIGN KEY (RecipeItemId) REFERENCES RecipeItem(RecipeItemId);
GO
ALTER TABLE OutboundXMLDocStatus ADD CONSTRAINT FK_OutboundXMLDocStatus_StatusCodeId FOREIGN KEY (StatusCodeId) REFERENCES OutboundXMLDocStatusCode(StatusCodeId);
GO
ALTER TABLE CompleteActivityHistory ADD CONSTRAINT FK_CompleteActivityHistory_DispositionId FOREIGN KEY (DispositionId) REFERENCES Disposition(DispositionId);
GO
ALTER TABLE CompleteActivityHistory ADD CONSTRAINT FK_CompleteActivityHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE CompleteActivityHistory ADD CONSTRAINT FK_CompleteActivityHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isInventoryDetails ADD CONSTRAINT FK_isInventoryDetails_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE SamplingCurrentStatus ADD CONSTRAINT FK_SamplingCurrentStatus_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE ExecuteTaskHistPrereqTasks ADD CONSTRAINT FK_ExecuteTaskHistPrereqTasks_ExecuteTaskHistoryId FOREIGN KEY (ExecuteTaskHistoryId) REFERENCES ExecuteTaskHistory(ExecuteTaskHistoryId);
GO
ALTER TABLE Enterprise ADD CONSTRAINT FK_Enterprise_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE AssignChecklistHistory ADD CONSTRAINT FK_AssignChecklistHistory_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE AssignChecklistHistory ADD CONSTRAINT FK_AssignChecklistHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_TDADocument ADD CONSTRAINT FK_A_TDADocument_DocumentBaseId FOREIGN KEY (DocumentBaseId) REFERENCES DocumentBase(DocumentBaseId);
GO
ALTER TABLE A_TDADocument ADD CONSTRAINT FK_A_TDADocument_DocumentId FOREIGN KEY (DocumentId) REFERENCES Document(DocumentId);
GO
ALTER TABLE A_TDADocument ADD CONSTRAINT FK_A_TDADocument_TDAId FOREIGN KEY (TDAId) REFERENCES A_TDA(TDAId);
GO
ALTER TABLE TargetDeployment ADD CONSTRAINT FK_TargetDeployment_TargetSystemId FOREIGN KEY (TargetSystemId) REFERENCES TargetSystem(TargetSystemId);
GO
ALTER TABLE A_ContainerFeederHistory ADD CONSTRAINT FK_A_ContainerFeederHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CIOLastUpdate ADD CONSTRAINT FK_CIOLastUpdate_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE RecipeList ADD CONSTRAINT FK_RecipeList_RecipeListBaseId FOREIGN KEY (RecipeListBaseId) REFERENCES RecipeListBase(RecipeListBaseId);
GO
ALTER TABLE RecipeList ADD CONSTRAINT FK_RecipeList_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE DataPointCollectionGroup ADD CONSTRAINT FK_DataPointCollectionGroup_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE CompleteActivityHistoryDetails ADD CONSTRAINT FK_CompleteActivityHistoryDetails_ExecuteActivityHistoryId FOREIGN KEY (ExecuteActivityHistoryId) REFERENCES CompleteActivityHistory(ExecuteActivityHistoryId);
GO
ALTER TABLE CIOListProcessor ADD CONSTRAINT FK_CIOListProcessor_CIOListProcessorBaseId FOREIGN KEY (CIOListProcessorBaseId) REFERENCES CIOListProcessorBase(CIOListProcessorBaseId);
GO
ALTER TABLE CIOListProcessor ADD CONSTRAINT FK_CIOListProcessor_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ExportImportDetail ADD CONSTRAINT FK_ExportImportDetail_ExportImportHeaderId FOREIGN KEY (ExportImportHeaderId) REFERENCES ExportImportHeader(ExportImportHeaderId);
GO
ALTER TABLE EProcedureDetail ADD CONSTRAINT FK_EProcedureDetail_ElectronicProcedureId FOREIGN KEY (ElectronicProcedureId) REFERENCES ElectronicProcedure(ElectronicProcedureId);
GO
ALTER TABLE EProcedureDetail ADD CONSTRAINT FK_EProcedureDetail_TaskListBaseId FOREIGN KEY (TaskListBaseId) REFERENCES TaskListBase(TaskListBaseId);
GO
ALTER TABLE EProcedureDetail ADD CONSTRAINT FK_EProcedureDetail_TaskListId FOREIGN KEY (TaskListId) REFERENCES TaskList(TaskListId);
GO
ALTER TABLE AssignChecklistToEventHistory ADD CONSTRAINT FK_AssignChecklistToEventHistory_ChecklistTemplateId FOREIGN KEY (ChecklistTemplateId) REFERENCES ChecklistTemplate(ChecklistTemplateId);
GO
ALTER TABLE AssignChecklistToEventHistory ADD CONSTRAINT FK_AssignChecklistToEventHistory_EventId FOREIGN KEY (EventId) REFERENCES Event(EventId);
GO
ALTER TABLE AssignChecklistToEventHistory ADD CONSTRAINT FK_AssignChecklistToEventHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_TDAList ADD CONSTRAINT FK_A_TDAList_TDAId FOREIGN KEY (TDAId) REFERENCES A_TDA(TDAId);
GO
ALTER TABLE MfgLot ADD CONSTRAINT FK_MfgLot_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE MfgLot ADD CONSTRAINT FK_MfgLot_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE MfgLot ADD CONSTRAINT FK_MfgLot_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE A_ContainerMaterialListItemSub ADD CONSTRAINT FK_A_ContainerMaterialListItemSub_ContainerMaterialListItemId FOREIGN KEY (ContainerMaterialListItemId) REFERENCES ContainerMaterialListItem(ContainerMaterialListItemId);
GO
ALTER TABLE isRepairActionHistDetails ADD CONSTRAINT FK_isRepairActionHistDetails_isDefectHistoryDetailId FOREIGN KEY (isDefectHistoryDetailId) REFERENCES isDefectHistoryDetail(isDefectHistoryDetailId);
GO
ALTER TABLE isRepairActionHistDetails ADD CONSTRAINT FK_isRepairActionHistDetails_isRepairActionId FOREIGN KEY (isRepairActionId) REFERENCES isRepairAction(isRepairActionId);
GO
ALTER TABLE RecipeListBase ADD CONSTRAINT FK_RecipeListBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES RecipeList(RecipeListId);
GO
ALTER TABLE Owner ADD CONSTRAINT FK_Owner_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE Owner ADD CONSTRAINT FK_Owner_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE DataPointHistory ADD CONSTRAINT FK_DataPointHistory_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE DataPointHistory ADD CONSTRAINT FK_DataPointHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CompleteMaintenanceHistory ADD CONSTRAINT FK_CompleteMaintenanceHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE CIOListProcessorBase ADD CONSTRAINT FK_CIOListProcessorBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES CIOListProcessor(CIOListProcessorId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_SamplingPlanBaseId FOREIGN KEY (SamplingPlanBaseId) REFERENCES SamplingPlanBase(SamplingPlanBaseId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_SwitchingRuleBaseId FOREIGN KEY (SwitchingRuleBaseId) REFERENCES SwitchingRuleBase(SwitchingRuleBaseId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_SwitchingRuleId FOREIGN KEY (SwitchingRuleId) REFERENCES SwitchingRule(SwitchingRuleId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE SamplingPlan ADD CONSTRAINT FK_SamplingPlan_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ChecklistActualResponse ADD CONSTRAINT FK_ChecklistActualResponse_ChecklistEntryId FOREIGN KEY (ChecklistEntryId) REFERENCES ChecklistEntry(ChecklistEntryId);
GO
ALTER TABLE ChecklistActualResponse ADD CONSTRAINT FK_ChecklistActualResponse_ResponseItemId FOREIGN KEY (ResponseItemId) REFERENCES ResponseItem(ResponseItemId);
GO
ALTER TABLE ERPBOM ADD CONSTRAINT FK_ERPBOM_BillTypeId FOREIGN KEY (BillTypeId) REFERENCES BillType(BillTypeId);
GO
ALTER TABLE ERPBOM ADD CONSTRAINT FK_ERPBOM_ERPBOMBaseId FOREIGN KEY (ERPBOMBaseId) REFERENCES ERPBOMBase(ERPBOMBaseId);
GO
ALTER TABLE ERPBOM ADD CONSTRAINT FK_ERPBOM_ERPRouteBaseId FOREIGN KEY (ERPRouteBaseId) REFERENCES ERPRouteBase(ERPRouteBaseId);
GO
ALTER TABLE ERPBOM ADD CONSTRAINT FK_ERPBOM_ERPRouteId FOREIGN KEY (ERPRouteId) REFERENCES ERPRoute(ERPRouteId);
GO
ALTER TABLE ERPBOM ADD CONSTRAINT FK_ERPBOM_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE AssignedMaintReq ADD CONSTRAINT FK_AssignedMaintReq_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_MfgOrderId FOREIGN KEY (MfgOrderId) REFERENCES MfgOrder(MfgOrderId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_RouteStepId FOREIGN KEY (RouteStepId) REFERENCES RouteStep(RouteStepId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE MfgOrderMaterialListItem ADD CONSTRAINT FK_MfgOrderMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE isDefectHistory ADD CONSTRAINT FK_isDefectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isDefectHistory ADD CONSTRAINT FK_isDefectHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE RecipeMaterialListItem ADD CONSTRAINT FK_RecipeMaterialListItem_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE RecipeMaterialListItem ADD CONSTRAINT FK_RecipeMaterialListItem_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE DataPointHistoryDetail ADD CONSTRAINT FK_DataPointHistoryDetail_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE DataPointHistoryDetail ADD CONSTRAINT FK_DataPointHistoryDetail_DataPointHistoryId FOREIGN KEY (DataPointHistoryId) REFERENCES DataPointHistory(DataPointHistoryId);
GO
ALTER TABLE DataPointHistoryDetail ADD CONSTRAINT FK_DataPointHistoryDetail_DataPointId FOREIGN KEY (DataPointId) REFERENCES DataPoint(DataPointId);
GO
ALTER TABLE DataPointHistoryDetail ADD CONSTRAINT FK_DataPointHistoryDetail_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE UserLabel ADD CONSTRAINT FK_UserLabel_CategoryID FOREIGN KEY (CategoryID) REFERENCES LabelCategory(CategoryID);
GO
ALTER TABLE CompleteMaintenanceHistoryHist ADD CONSTRAINT FK_CompleteMaintenanceHistoryHist_CompleteMaintenanceHistoryId FOREIGN KEY (CompleteMaintenanceHistoryId) REFERENCES CompleteMaintenanceHistory(CompleteMaintenanceHistoryId);
GO
ALTER TABLE isLoadUnloadCarrierHistoryDtl ADD CONSTRAINT FK_isLoadUnloadCarrierHistoryDtl_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE CIOListProcessorDetails ADD CONSTRAINT FK_CIOListProcessorDetails_CIOListProcessorId FOREIGN KEY (CIOListProcessorId) REFERENCES CIOListProcessor(CIOListProcessorId);
GO
ALTER TABLE SamplingPlanBase ADD CONSTRAINT FK_SamplingPlanBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE ExportImportLog ADD CONSTRAINT FK_ExportImportLog_ExportImportDetailId FOREIGN KEY (ExportImportDetailId) REFERENCES ExportImportDetail(ExportImportDetailId);
GO
ALTER TABLE ExportImportLog ADD CONSTRAINT FK_ExportImportLog_ExportImportHeaderId FOREIGN KEY (ExportImportHeaderId) REFERENCES ExportImportHeader(ExportImportHeaderId);
GO
ALTER TABLE ChecklistEntry ADD CONSTRAINT FK_ChecklistEntry_ResponseSetId FOREIGN KEY (ResponseSetId) REFERENCES ResponseSet(ResponseSetId);
GO
ALTER TABLE ERPBOMBase ADD CONSTRAINT FK_ERPBOMBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ERPBOM(ERPBOMId);
GO
ALTER TABLE AssignmentHistory ADD CONSTRAINT FK_AssignmentHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE AssignmentHistory ADD CONSTRAINT FK_AssignmentHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_TDATxnMap ADD CONSTRAINT FK_A_TDATxnMap_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE ModelingAuditTrail ADD CONSTRAINT FK_ModelingAuditTrail_ModelingAuditTrailHeaderId FOREIGN KEY (ModelingAuditTrailHeaderId) REFERENCES ModelingAuditTrailHeader(ModelingAuditTrailHeaderId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_ComputationId FOREIGN KEY (ComputationId) REFERENCES Computation(ComputationId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_DataCollectionDefBaseId FOREIGN KEY (DataCollectionDefBaseId) REFERENCES DataCollectionDefBase(DataCollectionDefBaseId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_ESigRequirementId FOREIGN KEY (ESigRequirementId) REFERENCES ESigRequirement(ESigRequirementId);
GO
ALTER TABLE TaskItem ADD CONSTRAINT FK_TaskItem_TaskListId FOREIGN KEY (TaskListId) REFERENCES TaskList(TaskListId);
GO
ALTER TABLE A_EmployeeGroupDefaultForObjec ADD CONSTRAINT FK_A_EmployeeGroupDefaultForObjec_EmployeeGroupId FOREIGN KEY (EmployeeGroupId) REFERENCES A_EmployeeGroup(EmployeeGroupId);
GO
ALTER TABLE isDefectOldValue ADD CONSTRAINT FK_isDefectOldValue_isDefectHistoryDetailId FOREIGN KEY (isDefectHistoryDetailId) REFERENCES isDefectHistoryDetail(isDefectHistoryDetailId);
GO
ALTER TABLE RecordDecisionTreeHistory ADD CONSTRAINT FK_RecordDecisionTreeHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE RecordDecisionTreeHistory ADD CONSTRAINT FK_RecordDecisionTreeHistory_RegulatoryAgencyId FOREIGN KEY (RegulatoryAgencyId) REFERENCES RegulatoryAgency(RegulatoryAgencyId);
GO
ALTER TABLE PackageApprovalReminder ADD CONSTRAINT FK_PackageApprovalReminder_EMailMessageId FOREIGN KEY (EMailMessageId) REFERENCES EMailMessage(EMailMessageId);
GO
ALTER TABLE UserProfile ADD CONSTRAINT FK_UserProfile_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_CompleteMaintenanceHistoryId FOREIGN KEY (CompleteMaintenanceHistoryId) REFERENCES CompleteMaintenanceHistory(CompleteMaintenanceHistoryId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_DataCollectionDefId FOREIGN KEY (DataCollectionDefId) REFERENCES DataCollectionDef(DataCollectionDefId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_MaintenanceReqId FOREIGN KEY (MaintenanceReqId) REFERENCES MaintenanceReq(MaintenanceReqId);
GO
ALTER TABLE CompleteMaintHistoryDetails ADD CONSTRAINT FK_CompleteMaintHistoryDetails_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE isManageInventoryHistory ADD CONSTRAINT FK_isManageInventoryHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isManageInventoryHistory ADD CONSTRAINT FK_isManageInventoryHistory_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE CIOListProcessors ADD CONSTRAINT FK_CIOListProcessors_CIOListProcessorBaseId FOREIGN KEY (CIOListProcessorBaseId) REFERENCES CIOListProcessorBase(CIOListProcessorBaseId);
GO
ALTER TABLE CIOListProcessors ADD CONSTRAINT FK_CIOListProcessors_CIOListProcessorId FOREIGN KEY (CIOListProcessorId) REFERENCES CIOListProcessor(CIOListProcessorId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_AQLLevelId FOREIGN KEY (AQLLevelId) REFERENCES AQLLevel(AQLLevelId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_InspectionLevelId FOREIGN KEY (InspectionLevelId) REFERENCES InspectionLevel(InspectionLevelId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SampleTestBaseId FOREIGN KEY (SampleTestBaseId) REFERENCES SampleTestBase(SampleTestBaseId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SampleTestId FOREIGN KEY (SampleTestId) REFERENCES SampleTest(SampleTestId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SamplingPlanId FOREIGN KEY (SamplingPlanId) REFERENCES SamplingPlan(SamplingPlanId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SwitchingRuleBaseId FOREIGN KEY (SwitchingRuleBaseId) REFERENCES SwitchingRuleBase(SwitchingRuleBaseId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_SwitchingRuleId FOREIGN KEY (SwitchingRuleId) REFERENCES SwitchingRule(SwitchingRuleId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE SamplingPlanDetails ADD CONSTRAINT FK_SamplingPlanDetails_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE ExportImportQueue ADD CONSTRAINT FK_ExportImportQueue_ExportImportHeaderId FOREIGN KEY (ExportImportHeaderId) REFERENCES ExportImportHeader(ExportImportHeaderId);
GO
ALTER TABLE ChecklistEntryHistoryDetail ADD CONSTRAINT FK_ChecklistEntryHistoryDetail_ChecklistEntryId FOREIGN KEY (ChecklistEntryId) REFERENCES ChecklistEntry(ChecklistEntryId);
GO
ALTER TABLE ChecklistEntryHistoryDetail ADD CONSTRAINT FK_ChecklistEntryHistoryDetail_ResponseSetId FOREIGN KEY (ResponseSetId) REFERENCES ResponseSet(ResponseSetId);
GO
ALTER TABLE ERPRoute ADD CONSTRAINT FK_ERPRoute_ERPRouteBaseId FOREIGN KEY (ERPRouteBaseId) REFERENCES ERPRouteBase(ERPRouteBaseId);
GO
ALTER TABLE ERPRoute ADD CONSTRAINT FK_ERPRoute_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE ERPRoute ADD CONSTRAINT FK_ERPRoute_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ERPRoute ADD CONSTRAINT FK_ERPRoute_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE AssociateHistory ADD CONSTRAINT FK_AssociateHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_ToolPlan ADD CONSTRAINT FK_A_ToolPlan_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ModelingAuditTrailHeader ADD CONSTRAINT FK_ModelingAuditTrailHeader_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE TaskItemPrerequisiteTask ADD CONSTRAINT FK_TaskItemPrerequisiteTask_TaskItemId FOREIGN KEY (TaskItemId) REFERENCES TaskItem(TaskItemId);
GO
ALTER TABLE A_EmployeeGroupEntries ADD CONSTRAINT FK_A_EmployeeGroupEntries_EmployeeGroupId FOREIGN KEY (EmployeeGroupId) REFERENCES A_EmployeeGroup(EmployeeGroupId);
GO
ALTER TABLE A_EmployeeGroupEntries ADD CONSTRAINT FK_A_EmployeeGroupEntries_EntriesId FOREIGN KEY (EntriesId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE isDefectHistoryDetail ADD CONSTRAINT FK_isDefectHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE isDefectHistoryDetail ADD CONSTRAINT FK_isDefectHistoryDetail_DefectHistoryId FOREIGN KEY (DefectHistoryId) REFERENCES DefectHistory(DefectHistoryId);
GO
ALTER TABLE isDefectHistoryDetail ADD CONSTRAINT FK_isDefectHistoryDetail_isDefectReasonId FOREIGN KEY (isDefectReasonId) REFERENCES isDefectReason(isDefectReasonId);
GO
ALTER TABLE RecordSPCViolationHistory ADD CONSTRAINT FK_RecordSPCViolationHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE PackageCreationTemplate ADD CONSTRAINT FK_PackageCreationTemplate_CollaboratorTemplateId FOREIGN KEY (CollaboratorTemplateId) REFERENCES CollaboratorTemplate(CollaboratorTemplateId);
GO
ALTER TABLE PackageCreationTemplate ADD CONSTRAINT FK_PackageCreationTemplate_PackageTypeId FOREIGN KEY (PackageTypeId) REFERENCES PackageType(PackageTypeId);
GO
ALTER TABLE PackageCreationTemplate ADD CONSTRAINT FK_PackageCreationTemplate_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE UserQuery ADD CONSTRAINT FK_UserQuery_QueryTypeID FOREIGN KEY (QueryTypeID) REFERENCES QueryTypes(QueryTypeID);
GO
ALTER TABLE CompleteProcessObjectHistory ADD CONSTRAINT FK_CompleteProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE CompleteProcessObjectHistory ADD CONSTRAINT FK_CompleteProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ExportImportTarget ADD CONSTRAINT FK_ExportImportTarget_ExportImportHeaderId FOREIGN KEY (ExportImportHeaderId) REFERENCES ExportImportHeader(ExportImportHeaderId);
GO
ALTER TABLE ExportImportTarget ADD CONSTRAINT FK_ExportImportTarget_TargetSystemId FOREIGN KEY (TargetSystemId) REFERENCES TargetSystem(TargetSystemId);
GO
ALTER TABLE ChecklistTemplate ADD CONSTRAINT FK_ChecklistTemplate_ChecklistTemplateBaseId FOREIGN KEY (ChecklistTemplateBaseId) REFERENCES ChecklistTemplateBase(ChecklistTemplateBaseId);
GO
ALTER TABLE ChecklistTemplate ADD CONSTRAINT FK_ChecklistTemplate_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE ERPRouteBase ADD CONSTRAINT FK_ERPRouteBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ERPRoute(ERPRouteId);
GO
ALTER TABLE AssociateHistoryChildCnts ADD CONSTRAINT FK_AssociateHistoryChildCnts_AssociateHistoryId FOREIGN KEY (AssociateHistoryId) REFERENCES AssociateHistory(AssociateHistoryId);
GO
ALTER TABLE A_ToolPlanDetails ADD CONSTRAINT FK_A_ToolPlanDetails_ToolPlanId FOREIGN KEY (ToolPlanId) REFERENCES A_ToolPlan(ToolPlanId);
GO
ALTER TABLE ModelingAuditTrailHeaderMassUp ADD CONSTRAINT FK_ModelingAuditTrailHeaderMassUp_ModelingAuditTrailHeaderId FOREIGN KEY (ModelingAuditTrailHeaderId) REFERENCES ModelingAuditTrailHeader(ModelingAuditTrailHeaderId);
GO
ALTER TABLE TaskList ADD CONSTRAINT FK_TaskList_TaskListBaseId FOREIGN KEY (TaskListBaseId) REFERENCES TaskListBase(TaskListBaseId);
GO
ALTER TABLE TaskList ADD CONSTRAINT FK_TaskList_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE A_EmployeeGroupGroups ADD CONSTRAINT FK_A_EmployeeGroupGroups_EmployeeGroupId FOREIGN KEY (EmployeeGroupId) REFERENCES A_EmployeeGroup(EmployeeGroupId);
GO
ALTER TABLE CIOMapDetails ADD CONSTRAINT FK_CIOMapDetails_CIOMessageMapId FOREIGN KEY (CIOMessageMapId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE PackageTemplateTargetSystems ADD CONSTRAINT FK_PackageTemplateTargetSystems_PackageCreationTemplateId FOREIGN KEY (PackageCreationTemplateId) REFERENCES PackageCreationTemplate(PackageCreationTemplateId);
GO
ALTER TABLE DBCategories ADD CONSTRAINT FK_DBCategories_DataSourceNameID FOREIGN KEY (DataSourceNameID) REFERENCES DBDataSourceNames(DataSourceNameID);
GO
ALTER TABLE CompleteRiskAssessmentHistory ADD CONSTRAINT FK_CompleteRiskAssessmentHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isManageMaterialQueueHistory ADD CONSTRAINT FK_isManageMaterialQueueHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isManageMaterialQueueHistory ADD CONSTRAINT FK_isManageMaterialQueueHistory_isMaterialQueueId FOREIGN KEY (isMaterialQueueId) REFERENCES isMaterialQueue(isMaterialQueueId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_FeederSlotId FOREIGN KEY (FeederSlotId) REFERENCES A_FeederSlot(FeederSlotId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_isMaterialQueueDetailsId FOREIGN KEY (isMaterialQueueDetailsId) REFERENCES isMaterialQueueDetails(isMaterialQueueDetailsId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_IssueDifferenceReasonId FOREIGN KEY (IssueDifferenceReasonId) REFERENCES IssueDifferenceReason(IssueDifferenceReasonId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_IssueHistoryDetailId FOREIGN KEY (IssueHistoryDetailId) REFERENCES IssueHistoryDetail(IssueHistoryDetailId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_IssueReasonId FOREIGN KEY (IssueReasonId) REFERENCES IssueReason(IssueReasonId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_SubstitutionReasonId FOREIGN KEY (SubstitutionReasonId) REFERENCES SubstitutionReason(SubstitutionReasonId);
GO
ALTER TABLE IssueActualsHistory ADD CONSTRAINT FK_IssueActualsHistory_VendorItemId FOREIGN KEY (VendorItemId) REFERENCES VendorItem(VendorItemId);
GO
ALTER TABLE ChecklistTemplateBase ADD CONSTRAINT FK_ChecklistTemplateBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ChecklistTemplate(ChecklistTemplateId);
GO
ALTER TABLE AttachDocumentHistory ADD CONSTRAINT FK_AttachDocumentHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_YieldLimits ADD CONSTRAINT FK_A_YieldLimits_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE A_YieldLimits ADD CONSTRAINT FK_A_YieldLimits_ProductFamilyId FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily(ProductFamilyId);
GO
ALTER TABLE A_YieldLimits ADD CONSTRAINT FK_A_YieldLimits_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE A_YieldLimits ADD CONSTRAINT FK_A_YieldLimits_ResourceFamilyId FOREIGN KEY (ResourceFamilyId) REFERENCES ResourceFamily(ResourceFamilyId);
GO
ALTER TABLE A_YieldLimits ADD CONSTRAINT FK_A_YieldLimits_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE TaskListBase ADD CONSTRAINT FK_TaskListBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES TaskList(TaskListId);
GO
ALTER TABLE A_FeederPlan ADD CONSTRAINT FK_A_FeederPlan_FeederPlanBaseId FOREIGN KEY (FeederPlanBaseId) REFERENCES A_FeederPlanBase(FeederPlanBaseId);
GO
ALTER TABLE A_FeederPlan ADD CONSTRAINT FK_A_FeederPlan_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE CIOMapFunctions ADD CONSTRAINT FK_CIOMapFunctions_CIOFunctionId FOREIGN KEY (CIOFunctionId) REFERENCES CIOFunction(CIOFunctionId);
GO
ALTER TABLE CIOMapFunctions ADD CONSTRAINT FK_CIOMapFunctions_CIOMessageMapId FOREIGN KEY (CIOMessageMapId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE RegulatoryReport ADD CONSTRAINT FK_RegulatoryReport_RegulatoryAgencyId FOREIGN KEY (RegulatoryAgencyId) REFERENCES RegulatoryAgency(RegulatoryAgencyId);
GO
ALTER TABLE RegulatoryReport ADD CONSTRAINT FK_RegulatoryReport_RegulatoryReportTypeId FOREIGN KEY (RegulatoryReportTypeId) REFERENCES RegulatoryReportType(RegulatoryReportTypeId);
GO
ALTER TABLE DBColumns ADD CONSTRAINT FK_DBColumns_SQLTypeValue FOREIGN KEY (SQLTypeValue) REFERENCES SQLDataTypes(SQLTypeValue);
GO
ALTER TABLE UserQueryGroupDefaultForObject ADD CONSTRAINT FK_UserQueryGroupDefaultForObject_UserQueryGroupId FOREIGN KEY (UserQueryGroupId) REFERENCES UserQueryGroup(UserQueryGroupId);
GO
ALTER TABLE CompletionHistory ADD CONSTRAINT FK_CompletionHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE CompletionHistory ADD CONSTRAINT FK_CompletionHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isManageMaterialQueueHistoryHi ADD CONSTRAINT FK_isManageMaterialQueueHistoryHi_isManageMaterialQueueHistoryId FOREIGN KEY (isManageMaterialQueueHistoryId) REFERENCES isManageMaterialQueueHistory(isManageMaterialQueueHistoryId);
GO
ALTER TABLE IssueHistoryDetail ADD CONSTRAINT FK_IssueHistoryDetail_ComponentIssueHistoryId FOREIGN KEY (ComponentIssueHistoryId) REFERENCES ComponentIssueHistory(ComponentIssueHistoryId);
GO
ALTER TABLE IssueHistoryDetail ADD CONSTRAINT FK_IssueHistoryDetail_IssueDifferenceReasonId FOREIGN KEY (IssueDifferenceReasonId) REFERENCES IssueDifferenceReason(IssueDifferenceReasonId);
GO
ALTER TABLE IssueHistoryDetail ADD CONSTRAINT FK_IssueHistoryDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE IssueHistoryDetail ADD CONSTRAINT FK_IssueHistoryDetail_ProductMaterialListItemId FOREIGN KEY (ProductMaterialListItemId) REFERENCES ProductMaterialListItem(ProductMaterialListItemId);
GO
ALTER TABLE IssueHistoryDetail ADD CONSTRAINT FK_IssueHistoryDetail_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE ChgAttrHistory ADD CONSTRAINT FK_ChgAttrHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ES_BoardToTestId ADD CONSTRAINT FK_ES_BoardToTestId_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE AttachedDocs ADD CONSTRAINT FK_AttachedDocs_DocAttachmentsId FOREIGN KEY (DocAttachmentsId) REFERENCES DocAttachments(DocAttachmentsId);
GO
ALTER TABLE AttachedDocs ADD CONSTRAINT FK_AttachedDocs_Version FOREIGN KEY (Version) REFERENCES LocalControl(Version);
GO
ALTER TABLE AttachedDocs ADD CONSTRAINT FK_AttachedDocs_Version FOREIGN KEY (Version) REFERENCES VersionInfo(Version);
GO
ALTER TABLE A_YieldLimitsDetail ADD CONSTRAINT FK_A_YieldLimitsDetail_YieldLimitsId FOREIGN KEY (YieldLimitsId) REFERENCES A_YieldLimits(YieldLimitsId);
GO
ALTER TABLE CIOMapSource ADD CONSTRAINT FK_CIOMapSource_CIOMessageMapId FOREIGN KEY (CIOMessageMapId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE RegulatoryReportHistoryDetail ADD CONSTRAINT FK_RegulatoryReportHistoryDetail_RegulatoryAgencyId FOREIGN KEY (RegulatoryAgencyId) REFERENCES RegulatoryAgency(RegulatoryAgencyId);
GO
ALTER TABLE RegulatoryReportHistoryDetail ADD CONSTRAINT FK_RegulatoryReportHistoryDetail_RegulatoryReportTypeId FOREIGN KEY (RegulatoryReportTypeId) REFERENCES RegulatoryReportType(RegulatoryReportTypeId);
GO
ALTER TABLE PathSelector ADD CONSTRAINT FK_PathSelector_PathId FOREIGN KEY (PathId) REFERENCES Path(PathId);
GO
ALTER TABLE UserQueryGroupEntries ADD CONSTRAINT FK_UserQueryGroupEntries_UserQueryGroupId FOREIGN KEY (UserQueryGroupId) REFERENCES UserQueryGroup(UserQueryGroupId);
GO
ALTER TABLE ComponentDefectHistoryDetail ADD CONSTRAINT FK_ComponentDefectHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ComponentDefectHistoryDetail ADD CONSTRAINT FK_ComponentDefectHistoryDetail_DefectHistoryId FOREIGN KEY (DefectHistoryId) REFERENCES DefectHistory(DefectHistoryId);
GO
ALTER TABLE ComponentDefectHistoryDetail ADD CONSTRAINT FK_ComponentDefectHistoryDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE SecurityAuditTrail ADD CONSTRAINT FK_SecurityAuditTrail_SecurityAuditTrailHeaderId FOREIGN KEY (SecurityAuditTrailHeaderId) REFERENCES SecurityAuditTrailHeader(SecurityAuditTrailHeaderId);
GO
ALTER TABLE FailureActionTypeGroupDefaultF ADD CONSTRAINT FK_FailureActionTypeGroupDefaultF_FailureActionTypeGroupId FOREIGN KEY (FailureActionTypeGroupId) REFERENCES FailureActionTypeGroup(FailureActionTypeGroupId);
GO
ALTER TABLE ChgAttrHistoryDetails ADD CONSTRAINT FK_ChgAttrHistoryDetails_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetails ADD CONSTRAINT FK_ChgAttrHistoryDetails_ChgAttrHistoryId FOREIGN KEY (ChgAttrHistoryId) REFERENCES ChgAttrHistory(ChgAttrHistoryId);
GO
ALTER TABLE ES_BoardToTestIdHistory ADD CONSTRAINT FK_ES_BoardToTestIdHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE BillOfProcess ADD CONSTRAINT FK_BillOfProcess_BillOfProcessBaseId FOREIGN KEY (BillOfProcessBaseId) REFERENCES BillOfProcessBase(BillOfProcessBaseId);
GO
ALTER TABLE BillOfProcess ADD CONSTRAINT FK_BillOfProcess_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE DBDataSourceNames ADD CONSTRAINT FK_DBDataSourceNames_DBDataSourceUsageId FOREIGN KEY (DBDataSourceUsageId) REFERENCES DBDataSourceUsage(DBDataSourceUsageId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_MfgLineId FOREIGN KEY (MfgLineId) REFERENCES A_MfgLine(MfgLineId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE A_YieldLimitsTxn ADD CONSTRAINT FK_A_YieldLimitsTxn_YieldLimitsId FOREIGN KEY (YieldLimitsId) REFERENCES A_YieldLimits(YieldLimitsId);
GO
ALTER TABLE ModelingInstanceLock ADD CONSTRAINT FK_ModelingInstanceLock_ChangePackageId FOREIGN KEY (ChangePackageId) REFERENCES ChangePackage(ChangePackageId);
GO
ALTER TABLE TextVariable ADD CONSTRAINT FK_TextVariable_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE A_FeederPlanDetails ADD CONSTRAINT FK_A_FeederPlanDetails_FeederPlanId FOREIGN KEY (FeederPlanId) REFERENCES A_FeederPlan(FeederPlanId);
GO
ALTER TABLE A_FeederPlanDetails ADD CONSTRAINT FK_A_FeederPlanDetails_ProductBaseId FOREIGN KEY (ProductBaseId) REFERENCES ProductBase(ProductBaseId);
GO
ALTER TABLE A_FeederPlanDetails ADD CONSTRAINT FK_A_FeederPlanDetails_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_ComponentRemoveHistoryId FOREIGN KEY (ComponentRemoveHistoryId) REFERENCES ComponentRemoveHistory(ComponentRemoveHistoryId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_IssueActualsHistoryId FOREIGN KEY (IssueActualsHistoryId) REFERENCES IssueActualsHistory(IssueActualsHistoryId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_RemovalReasonId FOREIGN KEY (RemovalReasonId) REFERENCES RemovalReason(RemovalReasonId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_RemoveDifferenceReasonId FOREIGN KEY (RemoveDifferenceReasonId) REFERENCES RemoveDifferenceReason(RemoveDifferenceReasonId);
GO
ALTER TABLE RemoveHistoryDetail ADD CONSTRAINT FK_RemoveHistoryDetail_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE RegulatoryReportMap ADD CONSTRAINT FK_RegulatoryReportMap_RegulatoryReportTypeId FOREIGN KEY (RegulatoryReportTypeId) REFERENCES RegulatoryReportType(RegulatoryReportTypeId);
GO
ALTER TABLE RegulatoryReportMap ADD CONSTRAINT FK_RegulatoryReportMap_ReportMappingConfigId FOREIGN KEY (ReportMappingConfigId) REFERENCES ReportMappingConfig(ReportMappingConfigId);
GO
ALTER TABLE CDODefinition ADD CONSTRAINT FK_CDODefinition_CDODefID FOREIGN KEY (CDODefID) REFERENCES InstanceIDCount(CDODefID);
GO
ALTER TABLE CDODefinition ADD CONSTRAINT FK_CDODefinition_UIDetailsId FOREIGN KEY (UIDetailsId) REFERENCES UIDetails(UIDetailsId);
GO
ALTER TABLE PermissionDefinition ADD CONSTRAINT FK_PermissionDefinition_UIActionId FOREIGN KEY (UIActionId) REFERENCES UIAction(UIActionId);
GO
ALTER TABLE UserQueryGroupGroups ADD CONSTRAINT FK_UserQueryGroupGroups_UserQueryGroupId FOREIGN KEY (UserQueryGroupId) REFERENCES UserQueryGroup(UserQueryGroupId);
GO
ALTER TABLE SecurityAuditTrailHeader ADD CONSTRAINT FK_SecurityAuditTrailHeader_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE FailureActionTypeGroupEntries ADD CONSTRAINT FK_FailureActionTypeGroupEntries_FailureActionTypeGroupId FOREIGN KEY (FailureActionTypeGroupId) REFERENCES FailureActionTypeGroup(FailureActionTypeGroupId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewBooLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewBooLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewBooLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewBooLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ES_CADLayers ADD CONSTRAINT FK_ES_CADLayers_ES_CADLayersBaseId FOREIGN KEY (ES_CADLayersBaseId) REFERENCES ES_CADLayersBase(ES_CADLayersBaseId);
GO
ALTER TABLE ES_CADLayers ADD CONSTRAINT FK_ES_CADLayers_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE BillOfProcessBase ADD CONSTRAINT FK_BillOfProcessBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE A_YieldLimitsTxnDetail ADD CONSTRAINT FK_A_YieldLimitsTxnDetail_YieldLimitsTxnId FOREIGN KEY (YieldLimitsTxnId) REFERENCES A_YieldLimitsTxn(YieldLimitsTxnId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_OwnerId FOREIGN KEY (OwnerId) REFERENCES Owner(OwnerId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE ThruputHistory ADD CONSTRAINT FK_ThruputHistory_UOMId FOREIGN KEY (UOMId) REFERENCES UOM(UOMId);
GO
ALTER TABLE ComponentReplaceHistory ADD CONSTRAINT FK_ComponentReplaceHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE UserQueryParameter ADD CONSTRAINT FK_UserQueryParameter_UserQueryId FOREIGN KEY (UserQueryId) REFERENCES UserQuery(UserQueryId);
GO
ALTER TABLE ComponentDistributeHistory ADD CONSTRAINT FK_ComponentDistributeHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isMaterialQueueDetails ADD CONSTRAINT FK_isMaterialQueueDetails_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE isMaterialQueueDetails ADD CONSTRAINT FK_isMaterialQueueDetails_isMaterialQueueId FOREIGN KEY (isMaterialQueueId) REFERENCES isMaterialQueue(isMaterialQueueId);
GO
ALTER TABLE CIOMessageChannel ADD CONSTRAINT FK_CIOMessageChannel_CIODispatchRuleId FOREIGN KEY (CIODispatchRuleId) REFERENCES CIODispatchRule(CIODispatchRuleId);
GO
ALTER TABLE FailureActionTypeGroupGroups ADD CONSTRAINT FK_FailureActionTypeGroupGroups_FailureActionTypeGroupId FOREIGN KEY (FailureActionTypeGroupId) REFERENCES FailureActionTypeGroup(FailureActionTypeGroupId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewDurLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewDurLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewDurLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewDurLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ES_CADLayersBase ADD CONSTRAINT FK_ES_CADLayersBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ES_CADLayers(ES_CADLayersId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_BillOfProcessId FOREIGN KEY (BillOfProcessId) REFERENCES BillOfProcess(BillOfProcessId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_ElectronicProcedureBaseId FOREIGN KEY (ElectronicProcedureBaseId) REFERENCES ElectronicProcedureBase(ElectronicProcedureBaseId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_ElectronicProcedureId FOREIGN KEY (ElectronicProcedureId) REFERENCES ElectronicProcedure(ElectronicProcedureId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_ResourceGroupId FOREIGN KEY (ResourceGroupId) REFERENCES ResourceGroup(ResourceGroupId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_SetupBaseId FOREIGN KEY (SetupBaseId) REFERENCES SetupBase(SetupBaseId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_SetupId FOREIGN KEY (SetupId) REFERENCES Setup(SetupId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE BillOfProcessOverride ADD CONSTRAINT FK_BillOfProcessOverride_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE Phase ADD CONSTRAINT FK_Phase_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE Phase ADD CONSTRAINT FK_Phase_DataPointCollectionId FOREIGN KEY (DataPointCollectionId) REFERENCES DataPointCollection(DataPointCollectionId);
GO
ALTER TABLE Phase ADD CONSTRAINT FK_Phase_DocumentSetId FOREIGN KEY (DocumentSetId) REFERENCES DocumentSet(DocumentSetId);
GO
ALTER TABLE ModifyProcessObjectHistory ADD CONSTRAINT FK_ModifyProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ModifyProcessObjectHistory ADD CONSTRAINT FK_ModifyProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ThruputHistoryDetail ADD CONSTRAINT FK_ThruputHistoryDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE ThruputHistoryDetail ADD CONSTRAINT FK_ThruputHistoryDetail_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE ThruputHistoryDetail ADD CONSTRAINT FK_ThruputHistoryDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE ThruputHistoryDetail ADD CONSTRAINT FK_ThruputHistoryDetail_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE ThruputHistoryDetail ADD CONSTRAINT FK_ThruputHistoryDetail_ThruputHistoryId FOREIGN KEY (ThruputHistoryId) REFERENCES ThruputHistory(ThruputHistoryId);
GO
ALTER TABLE A_HistoryMainlineChildDetails ADD CONSTRAINT FK_A_HistoryMainlineChildDetails_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ComponentIssueHistory ADD CONSTRAINT FK_ComponentIssueHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ComponentIssueHistory ADD CONSTRAINT FK_ComponentIssueHistory_MasterRecipeId FOREIGN KEY (MasterRecipeId) REFERENCES MasterRecipe(MasterRecipeId);
GO
ALTER TABLE ComponentIssueHistory ADD CONSTRAINT FK_ComponentIssueHistory_RecipeListId FOREIGN KEY (RecipeListId) REFERENCES RecipeList(RecipeListId);
GO
ALTER TABLE CLFEventMap ADD CONSTRAINT FK_CLFEventMap_CDODefID FOREIGN KEY (CDODefID) REFERENCES InstanceIDCount(CDODefID);
GO
ALTER TABLE CLFEventMap ADD CONSTRAINT FK_CLFEventMap_CLFEventID FOREIGN KEY (CLFEventID) REFERENCES CLFEvents(CLFEventID);
GO
ALTER TABLE UserQueryUserQueryParameters ADD CONSTRAINT FK_UserQueryUserQueryParameters_UserQueryId FOREIGN KEY (UserQueryId) REFERENCES UserQuery(UserQueryId);
GO
ALTER TABLE ComponentReplaceHistoryHistory ADD CONSTRAINT FK_ComponentReplaceHistoryHistory_ComponentReplaceHistoryId FOREIGN KEY (ComponentReplaceHistoryId) REFERENCES ComponentReplaceHistory(ComponentReplaceHistoryId);
GO
ALTER TABLE isMaterialRequestStatus ADD CONSTRAINT FK_isMaterialRequestStatus_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE isMaterialRequestStatus ADD CONSTRAINT FK_isMaterialRequestStatus_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE isMaterialRequestStatus ADD CONSTRAINT FK_isMaterialRequestStatus_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIOMessageChannelCIOMessageTyp ADD CONSTRAINT FK_CIOMessageChannelCIOMessageTyp_CIOMessageChannelId FOREIGN KEY (CIOMessageChannelId) REFERENCES CIOMessageChannel(CIOMessageChannelId);
GO
ALTER TABLE SecurityDescriptor ADD CONSTRAINT FK_SecurityDescriptor_ObjectID FOREIGN KEY (ObjectID) REFERENCES CMS_InfoObjects7(ObjectID);
GO
ALTER TABLE FailureCauseData ADD CONSTRAINT FK_FailureCauseData_FailureDataId FOREIGN KEY (FailureDataId) REFERENCES FailureData(FailureDataId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewFixLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewFixLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewFixLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewFixLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ES_CADPrimary ADD CONSTRAINT FK_ES_CADPrimary_ES_CADPrimaryBaseId FOREIGN KEY (ES_CADPrimaryBaseId) REFERENCES ES_CADPrimaryBase(ES_CADPrimaryBaseId);
GO
ALTER TABLE ES_CADPrimary ADD CONSTRAINT FK_ES_CADPrimary_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE BillOfProcessOverrideTxnMap ADD CONSTRAINT FK_BillOfProcessOverrideTxnMap_BillOfProcessOverrideId FOREIGN KEY (BillOfProcessOverrideId) REFERENCES BillOfProcessOverride(BillOfProcessOverrideId);
GO
ALTER TABLE BillOfProcessOverrideTxnMap ADD CONSTRAINT FK_BillOfProcessOverrideTxnMap_TxnMapId FOREIGN KEY (TxnMapId) REFERENCES TxnMap(TxnMapId);
GO
ALTER TABLE PhaseESigHistoryDetails ADD CONSTRAINT FK_PhaseESigHistoryDetails_PhaseId FOREIGN KEY (PhaseId) REFERENCES Phase(PhaseId);
GO
ALTER TABLE ActionDef ADD CONSTRAINT FK_ActionDef_UIActionId FOREIGN KEY (UIActionId) REFERENCES UIAction(UIActionId);
GO
ALTER TABLE Timer ADD CONSTRAINT FK_Timer_ProcessTimerId FOREIGN KEY (ProcessTimerId) REFERENCES ProcessTimer(ProcessTimerId);
GO
ALTER TABLE A_HistoryMainlineObjects ADD CONSTRAINT FK_A_HistoryMainlineObjects_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ComponentReplaceHistoryDetail ADD CONSTRAINT FK_ComponentReplaceHistoryDetail_ReplaceReasonId FOREIGN KEY (ReplaceReasonId) REFERENCES ReplaceReason(ReplaceReasonId);
GO
ALTER TABLE ComponentReplaceHistoryDetail ADD CONSTRAINT FK_ComponentReplaceHistoryDetail_SubstitutionReasonId FOREIGN KEY (SubstitutionReasonId) REFERENCES SubstitutionReason(SubstitutionReasonId);
GO
ALTER TABLE isMaterialRequestStatusDetails ADD CONSTRAINT FK_isMaterialRequestStatusDetails_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE isMaterialRequestStatusDetails ADD CONSTRAINT FK_isMaterialRequestStatusDetails_isMaterialRequestStatusId FOREIGN KEY (isMaterialRequestStatusId) REFERENCES isMaterialRequestStatus(isMaterialRequestStatusId);
GO
ALTER TABLE isMaterialRequestStatusDetails ADD CONSTRAINT FK_isMaterialRequestStatusDetails_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CIOMessageMap ADD CONSTRAINT FK_CIOMessageMap_CIOMapSourceId FOREIGN KEY (CIOMapSourceId) REFERENCES CIOMapSource(CIOMapSourceId);
GO
ALTER TABLE CIOMessageMap ADD CONSTRAINT FK_CIOMessageMap_CIOMessageMapBaseId FOREIGN KEY (CIOMessageMapBaseId) REFERENCES CIOMessageMapBase(CIOMessageMapBaseId);
GO
ALTER TABLE CIOMessageMap ADD CONSTRAINT FK_CIOMessageMap_WIPMsgDefMgrId FOREIGN KEY (WIPMsgDefMgrId) REFERENCES WIPMsgDefMgr(WIPMsgDefMgrId);
GO
ALTER TABLE FailureData ADD CONSTRAINT FK_FailureData_FailureModeId FOREIGN KEY (FailureModeId) REFERENCES FailureMode(FailureModeId);
GO
ALTER TABLE FailureData ADD CONSTRAINT FK_FailureData_FailureSeverityId FOREIGN KEY (FailureSeverityId) REFERENCES FailureSeverity(FailureSeverityId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewFltLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewFltLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewFltLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewFltLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE fujTmpHistoryManhour ADD CONSTRAINT FK_fujTmpHistoryManhour_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE fujTmpHistoryManhour ADD CONSTRAINT FK_fujTmpHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcess(WorkCenterName);
GO
ALTER TABLE fujTmpHistoryManhour ADD CONSTRAINT FK_fujTmpHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitProcessCurrentStatus(WorkCenterName);
GO
ALTER TABLE fujTmpHistoryManhour ADD CONSTRAINT FK_fujTmpHistoryManhour_WorkCenterName FOREIGN KEY (WorkCenterName) REFERENCES andonForUnitRefreshCount(WorkCenterName);
GO
ALTER TABLE ES_CADPrimaryBase ADD CONSTRAINT FK_ES_CADPrimaryBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES ES_CADPrimary(ES_CADPrimaryId);
GO
ALTER TABLE PhaseEventLots ADD CONSTRAINT FK_PhaseEventLots_PhaseId FOREIGN KEY (PhaseId) REFERENCES Phase(PhaseId);
GO
ALTER TABLE DBIdentifierHistory ADD CONSTRAINT FK_DBIdentifierHistory_SiteName FOREIGN KEY (SiteName) REFERENCES DBIdentifier(SiteName);
GO
ALTER TABLE ActionDefActionRules ADD CONSTRAINT FK_ActionDefActionRules_ActionId FOREIGN KEY (ActionId) REFERENCES ActionDef(ActionId);
GO
ALTER TABLE A_Job ADD CONSTRAINT FK_A_Job_JobModelId FOREIGN KEY (JobModelId) REFERENCES A_JobModel(JobModelId);
GO
ALTER TABLE A_Job ADD CONSTRAINT FK_A_Job_JobOrderId FOREIGN KEY (JobOrderId) REFERENCES A_JobOrder(JobOrderId);
GO
ALTER TABLE A_Job ADD CONSTRAINT FK_A_Job_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE VendorItem ADD CONSTRAINT FK_VendorItem_VendorId FOREIGN KEY (VendorId) REFERENCES Vendor(VendorId);
GO
ALTER TABLE ComputationHistory ADD CONSTRAINT FK_ComputationHistory_ComputationId FOREIGN KEY (ComputationId) REFERENCES Computation(ComputationId);
GO
ALTER TABLE ComputationHistory ADD CONSTRAINT FK_ComputationHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isMaterialRequestTxnHistDetail ADD CONSTRAINT FK_isMaterialRequestTxnHistDetail_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE isMaterialRequestTxnHistDetail ADD CONSTRAINT FK_isMaterialRequestTxnHistDetail_isMaterialRequestTxnHistoryId FOREIGN KEY (isMaterialRequestTxnHistoryId) REFERENCES isMaterialRequestTxnHistory(isMaterialRequestTxnHistoryId);
GO
ALTER TABLE isMaterialRequestTxnHistDetail ADD CONSTRAINT FK_isMaterialRequestTxnHistDetail_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE CIOMessageMapBase ADD CONSTRAINT FK_CIOMessageMapBase_RevOfRcdId FOREIGN KEY (RevOfRcdId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE SecurityMaskDetail ADD CONSTRAINT FK_SecurityMaskDetail_SecurityMaskId FOREIGN KEY (SecurityMaskId) REFERENCES SecurityMaskDefinition(SecurityMaskId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewIntLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewIntLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewIntLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewIntLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE csiTbl_Yield ADD CONSTRAINT FK_csiTbl_Yield_ProductId FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE Bin ADD CONSTRAINT FK_Bin_PathId FOREIGN KEY (PathId) REFERENCES Path(PathId);
GO
ALTER TABLE Bin ADD CONSTRAINT FK_Bin_TxnDetailsId FOREIGN KEY (TxnDetailsId) REFERENCES TxnDetails(TxnDetailsId);
GO
ALTER TABLE PhaseonCompleteRules ADD CONSTRAINT FK_PhaseonCompleteRules_PhaseId FOREIGN KEY (PhaseId) REFERENCES Phase(PhaseId);
GO
ALTER TABLE ActionDefinition ADD CONSTRAINT FK_ActionDefinition_ChangeStatusId FOREIGN KEY (ChangeStatusId) REFERENCES ChangeStatus(ChangeStatusId);
GO
ALTER TABLE NamedObjectGroupEntries ADD CONSTRAINT FK_NamedObjectGroupEntries_NamedObjectGroupId FOREIGN KEY (NamedObjectGroupId) REFERENCES NamedObjectGroup(NamedObjectGroupId);
GO
ALTER TABLE isDefectReason ADD CONSTRAINT FK_isDefectReason_isRepairActionGroupId FOREIGN KEY (isRepairActionGroupId) REFERENCES isRepairActionGroup(isRepairActionGroupId);
GO
ALTER TABLE VersionInfo ADD CONSTRAINT FK_VersionInfo_Version FOREIGN KEY (Version) REFERENCES LocalControl(Version);
GO
ALTER TABLE ComputationParamHistory ADD CONSTRAINT FK_ComputationParamHistory_ComputationHistoryId FOREIGN KEY (ComputationHistoryId) REFERENCES ComputationHistory(ComputationHistoryId);
GO
ALTER TABLE TrackableObjectCurrentStatus ADD CONSTRAINT FK_TrackableObjectCurrentStatus_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE TrackableObjectCurrentStatus ADD CONSTRAINT FK_TrackableObjectCurrentStatus_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE TrackableObjectCurrentStatus ADD CONSTRAINT FK_TrackableObjectCurrentStatus_WorkflowStepId FOREIGN KEY (WorkflowStepId) REFERENCES WorkflowStep(WorkflowStepId);
GO
ALTER TABLE isMaterialRequestTxnHistory ADD CONSTRAINT FK_isMaterialRequestTxnHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE isMaterialRequestTxnHistory ADD CONSTRAINT FK_isMaterialRequestTxnHistory_isInventoryLocationId FOREIGN KEY (isInventoryLocationId) REFERENCES isInventoryLocation(isInventoryLocationId);
GO
ALTER TABLE isMaterialRequestTxnHistory ADD CONSTRAINT FK_isMaterialRequestTxnHistory_isMaterialRequestStatusId FOREIGN KEY (isMaterialRequestStatusId) REFERENCES isMaterialRequestStatus(isMaterialRequestStatusId);
GO
ALTER TABLE isMaterialRequestTxnHistory ADD CONSTRAINT FK_isMaterialRequestTxnHistory_OperationId FOREIGN KEY (OperationId) REFERENCES Operation(OperationId);
GO
ALTER TABLE isMaterialRequestTxnHistory ADD CONSTRAINT FK_isMaterialRequestTxnHistory_ResourceId FOREIGN KEY (ResourceId) REFERENCES ResourceDef(ResourceId);
GO
ALTER TABLE CIOMessageType ADD CONSTRAINT FK_CIOMessageType_CIODispatchRuleId FOREIGN KEY (CIODispatchRuleId) REFERENCES CIODispatchRule(CIODispatchRuleId);
GO
ALTER TABLE CIOMessageType ADD CONSTRAINT FK_CIOMessageType_CIOMessageMapBaseId FOREIGN KEY (CIOMessageMapBaseId) REFERENCES CIOMessageMapBase(CIOMessageMapBaseId);
GO
ALTER TABLE CIOMessageType ADD CONSTRAINT FK_CIOMessageType_CIOMessageMapId FOREIGN KEY (CIOMessageMapId) REFERENCES CIOMessageMap(CIOMessageMapId);
GO
ALTER TABLE CIOMessageType ADD CONSTRAINT FK_CIOMessageType_CIOWorkflowBaseId FOREIGN KEY (CIOWorkflowBaseId) REFERENCES CIOWorkflowBase(CIOWorkflowBaseId);
GO
ALTER TABLE CIOMessageType ADD CONSTRAINT FK_CIOMessageType_CIOWorkflowId FOREIGN KEY (CIOWorkflowId) REFERENCES CIOWorkflow(CIOWorkflowId);
GO
ALTER TABLE FailureModeGroupEntries ADD CONSTRAINT FK_FailureModeGroupEntries_FailureModeGroupId FOREIGN KEY (FailureModeGroupId) REFERENCES FailureModeGroup(FailureModeGroupId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewStrLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewStrLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgAttrHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE ChgAttrHistoryDetailsNewStrLst ADD CONSTRAINT FK_ChgAttrHistoryDetailsNewStrLst_ChgAttrHistoryDetailsId FOREIGN KEY (ChgAttrHistoryDetailsId) REFERENCES ChgObjectListHistoryDetails(ChgAttrHistoryDetailsId);
GO
ALTER TABLE WorkflowStep ADD CONSTRAINT FK_WorkflowStep_RouteStepId FOREIGN KEY (RouteStepId) REFERENCES RouteStep(RouteStepId);
GO
ALTER TABLE WorkflowStep ADD CONSTRAINT FK_WorkflowStep_SpecBaseId FOREIGN KEY (SpecBaseId) REFERENCES SpecBase(SpecBaseId);
GO
ALTER TABLE WorkflowStep ADD CONSTRAINT FK_WorkflowStep_SpecId FOREIGN KEY (SpecId) REFERENCES Spec(SpecId);
GO
ALTER TABLE WorkflowStep ADD CONSTRAINT FK_WorkflowStep_WorkflowId FOREIGN KEY (WorkflowId) REFERENCES Workflow(WorkflowId);
GO
ALTER TABLE ES_JOB_Documents ADD CONSTRAINT FK_ES_JOB_Documents_ES_NPIJobId FOREIGN KEY (ES_NPIJobId) REFERENCES ES_NPIJob(ES_NPIJobId);
GO
ALTER TABLE BizRuleHandlerParameter ADD CONSTRAINT FK_BizRuleHandlerParameter_BusinessRuleHandlerDataId FOREIGN KEY (BusinessRuleHandlerDataId) REFERENCES BusinessRuleHandlerData(BusinessRuleHandlerDataId);
GO
ALTER TABLE PhaseonStartRules ADD CONSTRAINT FK_PhaseonStartRules_PhaseId FOREIGN KEY (PhaseId) REFERENCES Phase(PhaseId);
GO
ALTER TABLE DBTableDefinition ADD CONSTRAINT FK_DBTableDefinition_DBCategoryID FOREIGN KEY (DBCategoryID) REFERENCES DBCategories(DBCategoryID);
GO
ALTER TABLE NamedObjectGroupGroups ADD CONSTRAINT FK_NamedObjectGroupGroups_NamedObjectGroupId FOREIGN KEY (NamedObjectGroupId) REFERENCES NamedObjectGroup(NamedObjectGroupId);
GO
ALTER TABLE A_JobChecklist ADD CONSTRAINT FK_A_JobChecklist_ChecklistId FOREIGN KEY (ChecklistId) REFERENCES Checklist(ChecklistId);
GO
ALTER TABLE A_JobChecklist ADD CONSTRAINT FK_A_JobChecklist_JobId FOREIGN KEY (JobId) REFERENCES A_Job(JobId);
GO
ALTER TABLE isCurrentDefects ADD CONSTRAINT FK_isCurrentDefects_ContainerId FOREIGN KEY (ContainerId) REFERENCES Container(ContainerId);
GO
ALTER TABLE isCurrentDefects ADD CONSTRAINT FK_isCurrentDefects_isDefectHistoryDetailId FOREIGN KEY (isDefectHistoryDetailId) REFERENCES isDefectHistoryDetail(isDefectHistoryDetailId);
GO
ALTER TABLE isCurrentDefects ADD CONSTRAINT FK_isCurrentDefects_isDefectReasonId FOREIGN KEY (isDefectReasonId) REFERENCES isDefectReason(isDefectReasonId);
GO
ALTER TABLE ReorderProcessObjectHistory ADD CONSTRAINT FK_ReorderProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE ReorderProcessObjectHistory ADD CONSTRAINT FK_ReorderProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE VoidProcessObjectHistory ADD CONSTRAINT FK_VoidProcessObjectHistory_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);
GO
ALTER TABLE VoidProcessObjectHistory ADD CONSTRAINT FK_VoidProcessObjectHistory_HistoryMainlineId FOREIGN KEY (HistoryMainlineId) REFERENCES HistoryMainline(HistoryMainlineId);
GO
ALTER TABLE ComputationParamMap ADD CONSTRAINT FK_ComputationParamMap_DataPointId FOREIGN KEY (DataPointId) REFERENCES DataPoint(DataPointId);
GO
ALTER TABLE TrackObjCurrentStatusWFStack ADD CONSTRAINT FK_TrackObjCurrentStatusWFStack_TrackableObjectCurrentStatusId FOREIGN KEY (TrackableObjectCurrentStatusId) REFERENCES TrackableObjectCurrentStatus(TrackableObjectCurrentStatusId);
GO
ALTER TABLE CIOOutboundAdapterFilters ADD CONSTRAINT FK_CIOOutboundAdapterFilters_CIOChannelAdapterId FOREIGN KEY (CIOChannelAdapterId) REFERENCES CIOChannelAdapter(CIOChannelAdapterId);
GO
ALTER TABLE CIOOutboundAdapterFilters ADD CONSTRAINT FK_CIOOutboundAdapterFilters_CIOFilterId FOREIGN KEY (CIOFilterId) REFERENCES CIOFilter(CIOFilterId);
GO
ALTER TABLE FailureModeGroupGroups ADD CONSTRAINT FK_FailureModeGroupGroups_FailureModeGroupId FOREIGN KEY (FailureModeGroupId) REFERENCES FailureModeGroup(FailureModeGroupId);
GO