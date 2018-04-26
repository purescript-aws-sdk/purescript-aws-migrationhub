## Module AWS.MigrationHub.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException { "Message" :: Maybe (ErrorMessage) }
```

<p>You do not have sufficient access to perform this action.</p>

##### Instances
``` purescript
Newtype AccessDeniedException _
Generic AccessDeniedException _
Show AccessDeniedException
Decode AccessDeniedException
Encode AccessDeniedException
```

#### `newAccessDeniedException`

``` purescript
newAccessDeniedException :: AccessDeniedException
```

Constructs AccessDeniedException from required parameters

#### `newAccessDeniedException'`

``` purescript
newAccessDeniedException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> AccessDeniedException
```

Constructs AccessDeniedException's fields from required parameters

#### `ApplicationId`

``` purescript
newtype ApplicationId
  = ApplicationId String
```

##### Instances
``` purescript
Newtype ApplicationId _
Generic ApplicationId _
Show ApplicationId
Decode ApplicationId
Encode ApplicationId
```

#### `ApplicationStatus`

``` purescript
newtype ApplicationStatus
  = ApplicationStatus String
```

##### Instances
``` purescript
Newtype ApplicationStatus _
Generic ApplicationStatus _
Show ApplicationStatus
Decode ApplicationStatus
Encode ApplicationStatus
```

#### `AssociateCreatedArtifactRequest`

``` purescript
newtype AssociateCreatedArtifactRequest
  = AssociateCreatedArtifactRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifact" :: CreatedArtifact, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype AssociateCreatedArtifactRequest _
Generic AssociateCreatedArtifactRequest _
Show AssociateCreatedArtifactRequest
Decode AssociateCreatedArtifactRequest
Encode AssociateCreatedArtifactRequest
```

#### `newAssociateCreatedArtifactRequest`

``` purescript
newAssociateCreatedArtifactRequest :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> AssociateCreatedArtifactRequest
```

Constructs AssociateCreatedArtifactRequest from required parameters

#### `newAssociateCreatedArtifactRequest'`

``` purescript
newAssociateCreatedArtifactRequest' :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifact" :: CreatedArtifact, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifact" :: CreatedArtifact, "DryRun" :: Maybe (DryRun) }) -> AssociateCreatedArtifactRequest
```

Constructs AssociateCreatedArtifactRequest's fields from required parameters

#### `AssociateCreatedArtifactResult`

``` purescript
newtype AssociateCreatedArtifactResult
  = AssociateCreatedArtifactResult NoArguments
```

##### Instances
``` purescript
Newtype AssociateCreatedArtifactResult _
Generic AssociateCreatedArtifactResult _
Show AssociateCreatedArtifactResult
Decode AssociateCreatedArtifactResult
Encode AssociateCreatedArtifactResult
```

#### `AssociateDiscoveredResourceRequest`

``` purescript
newtype AssociateDiscoveredResourceRequest
  = AssociateDiscoveredResourceRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DiscoveredResource" :: DiscoveredResource, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype AssociateDiscoveredResourceRequest _
Generic AssociateDiscoveredResourceRequest _
Show AssociateDiscoveredResourceRequest
Decode AssociateDiscoveredResourceRequest
Encode AssociateDiscoveredResourceRequest
```

#### `newAssociateDiscoveredResourceRequest`

``` purescript
newAssociateDiscoveredResourceRequest :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> AssociateDiscoveredResourceRequest
```

Constructs AssociateDiscoveredResourceRequest from required parameters

#### `newAssociateDiscoveredResourceRequest'`

``` purescript
newAssociateDiscoveredResourceRequest' :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DiscoveredResource" :: DiscoveredResource, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DiscoveredResource" :: DiscoveredResource, "DryRun" :: Maybe (DryRun) }) -> AssociateDiscoveredResourceRequest
```

Constructs AssociateDiscoveredResourceRequest's fields from required parameters

#### `AssociateDiscoveredResourceResult`

``` purescript
newtype AssociateDiscoveredResourceResult
  = AssociateDiscoveredResourceResult NoArguments
```

##### Instances
``` purescript
Newtype AssociateDiscoveredResourceResult _
Generic AssociateDiscoveredResourceResult _
Show AssociateDiscoveredResourceResult
Decode AssociateDiscoveredResourceResult
Encode AssociateDiscoveredResourceResult
```

#### `ConfigurationId`

``` purescript
newtype ConfigurationId
  = ConfigurationId String
```

##### Instances
``` purescript
Newtype ConfigurationId _
Generic ConfigurationId _
Show ConfigurationId
Decode ConfigurationId
Encode ConfigurationId
```

#### `CreateProgressUpdateStreamRequest`

``` purescript
newtype CreateProgressUpdateStreamRequest
  = CreateProgressUpdateStreamRequest { "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype CreateProgressUpdateStreamRequest _
Generic CreateProgressUpdateStreamRequest _
Show CreateProgressUpdateStreamRequest
Decode CreateProgressUpdateStreamRequest
Encode CreateProgressUpdateStreamRequest
```

#### `newCreateProgressUpdateStreamRequest`

``` purescript
newCreateProgressUpdateStreamRequest :: ProgressUpdateStream -> CreateProgressUpdateStreamRequest
```

Constructs CreateProgressUpdateStreamRequest from required parameters

#### `newCreateProgressUpdateStreamRequest'`

``` purescript
newCreateProgressUpdateStreamRequest' :: ProgressUpdateStream -> ({ "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) }) -> CreateProgressUpdateStreamRequest
```

Constructs CreateProgressUpdateStreamRequest's fields from required parameters

#### `CreateProgressUpdateStreamResult`

``` purescript
newtype CreateProgressUpdateStreamResult
  = CreateProgressUpdateStreamResult NoArguments
```

##### Instances
``` purescript
Newtype CreateProgressUpdateStreamResult _
Generic CreateProgressUpdateStreamResult _
Show CreateProgressUpdateStreamResult
Decode CreateProgressUpdateStreamResult
Encode CreateProgressUpdateStreamResult
```

#### `CreatedArtifact`

``` purescript
newtype CreatedArtifact
  = CreatedArtifact { "Name" :: CreatedArtifactName, "Description" :: Maybe (CreatedArtifactDescription) }
```

<p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2 instance, RDS instance, etc.).</p>

##### Instances
``` purescript
Newtype CreatedArtifact _
Generic CreatedArtifact _
Show CreatedArtifact
Decode CreatedArtifact
Encode CreatedArtifact
```

#### `newCreatedArtifact`

``` purescript
newCreatedArtifact :: CreatedArtifactName -> CreatedArtifact
```

Constructs CreatedArtifact from required parameters

#### `newCreatedArtifact'`

``` purescript
newCreatedArtifact' :: CreatedArtifactName -> ({ "Name" :: CreatedArtifactName, "Description" :: Maybe (CreatedArtifactDescription) } -> { "Name" :: CreatedArtifactName, "Description" :: Maybe (CreatedArtifactDescription) }) -> CreatedArtifact
```

Constructs CreatedArtifact's fields from required parameters

#### `CreatedArtifactDescription`

``` purescript
newtype CreatedArtifactDescription
  = CreatedArtifactDescription String
```

##### Instances
``` purescript
Newtype CreatedArtifactDescription _
Generic CreatedArtifactDescription _
Show CreatedArtifactDescription
Decode CreatedArtifactDescription
Encode CreatedArtifactDescription
```

#### `CreatedArtifactList`

``` purescript
newtype CreatedArtifactList
  = CreatedArtifactList (Array CreatedArtifact)
```

##### Instances
``` purescript
Newtype CreatedArtifactList _
Generic CreatedArtifactList _
Show CreatedArtifactList
Decode CreatedArtifactList
Encode CreatedArtifactList
```

#### `CreatedArtifactName`

``` purescript
newtype CreatedArtifactName
  = CreatedArtifactName String
```

##### Instances
``` purescript
Newtype CreatedArtifactName _
Generic CreatedArtifactName _
Show CreatedArtifactName
Decode CreatedArtifactName
Encode CreatedArtifactName
```

#### `DeleteProgressUpdateStreamRequest`

``` purescript
newtype DeleteProgressUpdateStreamRequest
  = DeleteProgressUpdateStreamRequest { "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype DeleteProgressUpdateStreamRequest _
Generic DeleteProgressUpdateStreamRequest _
Show DeleteProgressUpdateStreamRequest
Decode DeleteProgressUpdateStreamRequest
Encode DeleteProgressUpdateStreamRequest
```

#### `newDeleteProgressUpdateStreamRequest`

``` purescript
newDeleteProgressUpdateStreamRequest :: ProgressUpdateStream -> DeleteProgressUpdateStreamRequest
```

Constructs DeleteProgressUpdateStreamRequest from required parameters

#### `newDeleteProgressUpdateStreamRequest'`

``` purescript
newDeleteProgressUpdateStreamRequest' :: ProgressUpdateStream -> ({ "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStreamName" :: ProgressUpdateStream, "DryRun" :: Maybe (DryRun) }) -> DeleteProgressUpdateStreamRequest
```

Constructs DeleteProgressUpdateStreamRequest's fields from required parameters

#### `DeleteProgressUpdateStreamResult`

``` purescript
newtype DeleteProgressUpdateStreamResult
  = DeleteProgressUpdateStreamResult NoArguments
```

##### Instances
``` purescript
Newtype DeleteProgressUpdateStreamResult _
Generic DeleteProgressUpdateStreamResult _
Show DeleteProgressUpdateStreamResult
Decode DeleteProgressUpdateStreamResult
Encode DeleteProgressUpdateStreamResult
```

#### `DescribeApplicationStateRequest`

``` purescript
newtype DescribeApplicationStateRequest
  = DescribeApplicationStateRequest { "ApplicationId" :: ApplicationId }
```

##### Instances
``` purescript
Newtype DescribeApplicationStateRequest _
Generic DescribeApplicationStateRequest _
Show DescribeApplicationStateRequest
Decode DescribeApplicationStateRequest
Encode DescribeApplicationStateRequest
```

#### `newDescribeApplicationStateRequest`

``` purescript
newDescribeApplicationStateRequest :: ApplicationId -> DescribeApplicationStateRequest
```

Constructs DescribeApplicationStateRequest from required parameters

#### `newDescribeApplicationStateRequest'`

``` purescript
newDescribeApplicationStateRequest' :: ApplicationId -> ({ "ApplicationId" :: ApplicationId } -> { "ApplicationId" :: ApplicationId }) -> DescribeApplicationStateRequest
```

Constructs DescribeApplicationStateRequest's fields from required parameters

#### `DescribeApplicationStateResult`

``` purescript
newtype DescribeApplicationStateResult
  = DescribeApplicationStateResult { "ApplicationStatus" :: Maybe (ApplicationStatus), "LastUpdatedTime" :: Maybe (UpdateDateTime) }
```

##### Instances
``` purescript
Newtype DescribeApplicationStateResult _
Generic DescribeApplicationStateResult _
Show DescribeApplicationStateResult
Decode DescribeApplicationStateResult
Encode DescribeApplicationStateResult
```

#### `newDescribeApplicationStateResult`

``` purescript
newDescribeApplicationStateResult :: DescribeApplicationStateResult
```

Constructs DescribeApplicationStateResult from required parameters

#### `newDescribeApplicationStateResult'`

``` purescript
newDescribeApplicationStateResult' :: ({ "ApplicationStatus" :: Maybe (ApplicationStatus), "LastUpdatedTime" :: Maybe (UpdateDateTime) } -> { "ApplicationStatus" :: Maybe (ApplicationStatus), "LastUpdatedTime" :: Maybe (UpdateDateTime) }) -> DescribeApplicationStateResult
```

Constructs DescribeApplicationStateResult's fields from required parameters

#### `DescribeMigrationTaskRequest`

``` purescript
newtype DescribeMigrationTaskRequest
  = DescribeMigrationTaskRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName }
```

##### Instances
``` purescript
Newtype DescribeMigrationTaskRequest _
Generic DescribeMigrationTaskRequest _
Show DescribeMigrationTaskRequest
Decode DescribeMigrationTaskRequest
Encode DescribeMigrationTaskRequest
```

#### `newDescribeMigrationTaskRequest`

``` purescript
newDescribeMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> DescribeMigrationTaskRequest
```

Constructs DescribeMigrationTaskRequest from required parameters

#### `newDescribeMigrationTaskRequest'`

``` purescript
newDescribeMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName }) -> DescribeMigrationTaskRequest
```

Constructs DescribeMigrationTaskRequest's fields from required parameters

#### `DescribeMigrationTaskResult`

``` purescript
newtype DescribeMigrationTaskResult
  = DescribeMigrationTaskResult { "MigrationTask" :: Maybe (MigrationTask) }
```

##### Instances
``` purescript
Newtype DescribeMigrationTaskResult _
Generic DescribeMigrationTaskResult _
Show DescribeMigrationTaskResult
Decode DescribeMigrationTaskResult
Encode DescribeMigrationTaskResult
```

#### `newDescribeMigrationTaskResult`

``` purescript
newDescribeMigrationTaskResult :: DescribeMigrationTaskResult
```

Constructs DescribeMigrationTaskResult from required parameters

#### `newDescribeMigrationTaskResult'`

``` purescript
newDescribeMigrationTaskResult' :: ({ "MigrationTask" :: Maybe (MigrationTask) } -> { "MigrationTask" :: Maybe (MigrationTask) }) -> DescribeMigrationTaskResult
```

Constructs DescribeMigrationTaskResult's fields from required parameters

#### `DisassociateCreatedArtifactRequest`

``` purescript
newtype DisassociateCreatedArtifactRequest
  = DisassociateCreatedArtifactRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifactName" :: CreatedArtifactName, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype DisassociateCreatedArtifactRequest _
Generic DisassociateCreatedArtifactRequest _
Show DisassociateCreatedArtifactRequest
Decode DisassociateCreatedArtifactRequest
Encode DisassociateCreatedArtifactRequest
```

#### `newDisassociateCreatedArtifactRequest`

``` purescript
newDisassociateCreatedArtifactRequest :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> DisassociateCreatedArtifactRequest
```

Constructs DisassociateCreatedArtifactRequest from required parameters

#### `newDisassociateCreatedArtifactRequest'`

``` purescript
newDisassociateCreatedArtifactRequest' :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifactName" :: CreatedArtifactName, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "CreatedArtifactName" :: CreatedArtifactName, "DryRun" :: Maybe (DryRun) }) -> DisassociateCreatedArtifactRequest
```

Constructs DisassociateCreatedArtifactRequest's fields from required parameters

#### `DisassociateCreatedArtifactResult`

``` purescript
newtype DisassociateCreatedArtifactResult
  = DisassociateCreatedArtifactResult NoArguments
```

##### Instances
``` purescript
Newtype DisassociateCreatedArtifactResult _
Generic DisassociateCreatedArtifactResult _
Show DisassociateCreatedArtifactResult
Decode DisassociateCreatedArtifactResult
Encode DisassociateCreatedArtifactResult
```

#### `DisassociateDiscoveredResourceRequest`

``` purescript
newtype DisassociateDiscoveredResourceRequest
  = DisassociateDiscoveredResourceRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ConfigurationId" :: ConfigurationId, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype DisassociateDiscoveredResourceRequest _
Generic DisassociateDiscoveredResourceRequest _
Show DisassociateDiscoveredResourceRequest
Decode DisassociateDiscoveredResourceRequest
Encode DisassociateDiscoveredResourceRequest
```

#### `newDisassociateDiscoveredResourceRequest`

``` purescript
newDisassociateDiscoveredResourceRequest :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> DisassociateDiscoveredResourceRequest
```

Constructs DisassociateDiscoveredResourceRequest from required parameters

#### `newDisassociateDiscoveredResourceRequest'`

``` purescript
newDisassociateDiscoveredResourceRequest' :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ConfigurationId" :: ConfigurationId, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ConfigurationId" :: ConfigurationId, "DryRun" :: Maybe (DryRun) }) -> DisassociateDiscoveredResourceRequest
```

Constructs DisassociateDiscoveredResourceRequest's fields from required parameters

#### `DisassociateDiscoveredResourceResult`

``` purescript
newtype DisassociateDiscoveredResourceResult
  = DisassociateDiscoveredResourceResult NoArguments
```

##### Instances
``` purescript
Newtype DisassociateDiscoveredResourceResult _
Generic DisassociateDiscoveredResourceResult _
Show DisassociateDiscoveredResourceResult
Decode DisassociateDiscoveredResourceResult
Encode DisassociateDiscoveredResourceResult
```

#### `DiscoveredResource`

``` purescript
newtype DiscoveredResource
  = DiscoveredResource { "ConfigurationId" :: ConfigurationId, "Description" :: Maybe (DiscoveredResourceDescription) }
```

<p>Object representing the on-premises resource being migrated.</p>

##### Instances
``` purescript
Newtype DiscoveredResource _
Generic DiscoveredResource _
Show DiscoveredResource
Decode DiscoveredResource
Encode DiscoveredResource
```

#### `newDiscoveredResource`

``` purescript
newDiscoveredResource :: ConfigurationId -> DiscoveredResource
```

Constructs DiscoveredResource from required parameters

#### `newDiscoveredResource'`

``` purescript
newDiscoveredResource' :: ConfigurationId -> ({ "ConfigurationId" :: ConfigurationId, "Description" :: Maybe (DiscoveredResourceDescription) } -> { "ConfigurationId" :: ConfigurationId, "Description" :: Maybe (DiscoveredResourceDescription) }) -> DiscoveredResource
```

Constructs DiscoveredResource's fields from required parameters

#### `DiscoveredResourceDescription`

``` purescript
newtype DiscoveredResourceDescription
  = DiscoveredResourceDescription String
```

##### Instances
``` purescript
Newtype DiscoveredResourceDescription _
Generic DiscoveredResourceDescription _
Show DiscoveredResourceDescription
Decode DiscoveredResourceDescription
Encode DiscoveredResourceDescription
```

#### `DiscoveredResourceList`

``` purescript
newtype DiscoveredResourceList
  = DiscoveredResourceList (Array DiscoveredResource)
```

##### Instances
``` purescript
Newtype DiscoveredResourceList _
Generic DiscoveredResourceList _
Show DiscoveredResourceList
Decode DiscoveredResourceList
Encode DiscoveredResourceList
```

#### `DryRun`

``` purescript
newtype DryRun
  = DryRun Boolean
```

##### Instances
``` purescript
Newtype DryRun _
Generic DryRun _
Show DryRun
Decode DryRun
Encode DryRun
```

#### `DryRunOperation`

``` purescript
newtype DryRunOperation
  = DryRunOperation { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised to indicate a successfully authorized action when the <code>DryRun</code> flag is set to "true".</p>

##### Instances
``` purescript
Newtype DryRunOperation _
Generic DryRunOperation _
Show DryRunOperation
Decode DryRunOperation
Encode DryRunOperation
```

#### `newDryRunOperation`

``` purescript
newDryRunOperation :: DryRunOperation
```

Constructs DryRunOperation from required parameters

#### `newDryRunOperation'`

``` purescript
newDryRunOperation' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> DryRunOperation
```

Constructs DryRunOperation's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ImportMigrationTaskRequest`

``` purescript
newtype ImportMigrationTaskRequest
  = ImportMigrationTaskRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype ImportMigrationTaskRequest _
Generic ImportMigrationTaskRequest _
Show ImportMigrationTaskRequest
Decode ImportMigrationTaskRequest
Encode ImportMigrationTaskRequest
```

#### `newImportMigrationTaskRequest`

``` purescript
newImportMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> ImportMigrationTaskRequest
```

Constructs ImportMigrationTaskRequest from required parameters

#### `newImportMigrationTaskRequest'`

``` purescript
newImportMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "DryRun" :: Maybe (DryRun) }) -> ImportMigrationTaskRequest
```

Constructs ImportMigrationTaskRequest's fields from required parameters

#### `ImportMigrationTaskResult`

``` purescript
newtype ImportMigrationTaskResult
  = ImportMigrationTaskResult NoArguments
```

##### Instances
``` purescript
Newtype ImportMigrationTaskResult _
Generic ImportMigrationTaskResult _
Show ImportMigrationTaskResult
Decode ImportMigrationTaskResult
Encode ImportMigrationTaskResult
```

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.</p>

##### Instances
``` purescript
Newtype InvalidInputException _
Generic InvalidInputException _
Show InvalidInputException
Decode InvalidInputException
Encode InvalidInputException
```

#### `newInvalidInputException`

``` purescript
newInvalidInputException :: InvalidInputException
```

Constructs InvalidInputException from required parameters

#### `newInvalidInputException'`

``` purescript
newInvalidInputException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InvalidInputException
```

Constructs InvalidInputException's fields from required parameters

#### `LatestResourceAttributeList`

``` purescript
newtype LatestResourceAttributeList
  = LatestResourceAttributeList (Array ResourceAttribute)
```

##### Instances
``` purescript
Newtype LatestResourceAttributeList _
Generic LatestResourceAttributeList _
Show LatestResourceAttributeList
Decode LatestResourceAttributeList
Encode LatestResourceAttributeList
```

#### `ListCreatedArtifactsRequest`

``` purescript
newtype ListCreatedArtifactsRequest
  = ListCreatedArtifactsRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsCreatedArtifacts) }
```

##### Instances
``` purescript
Newtype ListCreatedArtifactsRequest _
Generic ListCreatedArtifactsRequest _
Show ListCreatedArtifactsRequest
Decode ListCreatedArtifactsRequest
Encode ListCreatedArtifactsRequest
```

#### `newListCreatedArtifactsRequest`

``` purescript
newListCreatedArtifactsRequest :: MigrationTaskName -> ProgressUpdateStream -> ListCreatedArtifactsRequest
```

Constructs ListCreatedArtifactsRequest from required parameters

#### `newListCreatedArtifactsRequest'`

``` purescript
newListCreatedArtifactsRequest' :: MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsCreatedArtifacts) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsCreatedArtifacts) }) -> ListCreatedArtifactsRequest
```

Constructs ListCreatedArtifactsRequest's fields from required parameters

#### `ListCreatedArtifactsResult`

``` purescript
newtype ListCreatedArtifactsResult
  = ListCreatedArtifactsResult { "NextToken" :: Maybe (Token), "CreatedArtifactList" :: Maybe (CreatedArtifactList) }
```

##### Instances
``` purescript
Newtype ListCreatedArtifactsResult _
Generic ListCreatedArtifactsResult _
Show ListCreatedArtifactsResult
Decode ListCreatedArtifactsResult
Encode ListCreatedArtifactsResult
```

#### `newListCreatedArtifactsResult`

``` purescript
newListCreatedArtifactsResult :: ListCreatedArtifactsResult
```

Constructs ListCreatedArtifactsResult from required parameters

#### `newListCreatedArtifactsResult'`

``` purescript
newListCreatedArtifactsResult' :: ({ "NextToken" :: Maybe (Token), "CreatedArtifactList" :: Maybe (CreatedArtifactList) } -> { "NextToken" :: Maybe (Token), "CreatedArtifactList" :: Maybe (CreatedArtifactList) }) -> ListCreatedArtifactsResult
```

Constructs ListCreatedArtifactsResult's fields from required parameters

#### `ListDiscoveredResourcesRequest`

``` purescript
newtype ListDiscoveredResourcesRequest
  = ListDiscoveredResourcesRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsResources) }
```

##### Instances
``` purescript
Newtype ListDiscoveredResourcesRequest _
Generic ListDiscoveredResourcesRequest _
Show ListDiscoveredResourcesRequest
Decode ListDiscoveredResourcesRequest
Encode ListDiscoveredResourcesRequest
```

#### `newListDiscoveredResourcesRequest`

``` purescript
newListDiscoveredResourcesRequest :: MigrationTaskName -> ProgressUpdateStream -> ListDiscoveredResourcesRequest
```

Constructs ListDiscoveredResourcesRequest from required parameters

#### `newListDiscoveredResourcesRequest'`

``` purescript
newListDiscoveredResourcesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsResources) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResultsResources) }) -> ListDiscoveredResourcesRequest
```

Constructs ListDiscoveredResourcesRequest's fields from required parameters

#### `ListDiscoveredResourcesResult`

``` purescript
newtype ListDiscoveredResourcesResult
  = ListDiscoveredResourcesResult { "NextToken" :: Maybe (Token), "DiscoveredResourceList" :: Maybe (DiscoveredResourceList) }
```

##### Instances
``` purescript
Newtype ListDiscoveredResourcesResult _
Generic ListDiscoveredResourcesResult _
Show ListDiscoveredResourcesResult
Decode ListDiscoveredResourcesResult
Encode ListDiscoveredResourcesResult
```

#### `newListDiscoveredResourcesResult`

``` purescript
newListDiscoveredResourcesResult :: ListDiscoveredResourcesResult
```

Constructs ListDiscoveredResourcesResult from required parameters

#### `newListDiscoveredResourcesResult'`

``` purescript
newListDiscoveredResourcesResult' :: ({ "NextToken" :: Maybe (Token), "DiscoveredResourceList" :: Maybe (DiscoveredResourceList) } -> { "NextToken" :: Maybe (Token), "DiscoveredResourceList" :: Maybe (DiscoveredResourceList) }) -> ListDiscoveredResourcesResult
```

Constructs ListDiscoveredResourcesResult's fields from required parameters

#### `ListMigrationTasksRequest`

``` purescript
newtype ListMigrationTasksRequest
  = ListMigrationTasksRequest { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults), "ResourceName" :: Maybe (ResourceName) }
```

##### Instances
``` purescript
Newtype ListMigrationTasksRequest _
Generic ListMigrationTasksRequest _
Show ListMigrationTasksRequest
Decode ListMigrationTasksRequest
Encode ListMigrationTasksRequest
```

#### `newListMigrationTasksRequest`

``` purescript
newListMigrationTasksRequest :: ListMigrationTasksRequest
```

Constructs ListMigrationTasksRequest from required parameters

#### `newListMigrationTasksRequest'`

``` purescript
newListMigrationTasksRequest' :: ({ "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults), "ResourceName" :: Maybe (ResourceName) } -> { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults), "ResourceName" :: Maybe (ResourceName) }) -> ListMigrationTasksRequest
```

Constructs ListMigrationTasksRequest's fields from required parameters

#### `ListMigrationTasksResult`

``` purescript
newtype ListMigrationTasksResult
  = ListMigrationTasksResult { "NextToken" :: Maybe (Token), "MigrationTaskSummaryList" :: Maybe (MigrationTaskSummaryList) }
```

##### Instances
``` purescript
Newtype ListMigrationTasksResult _
Generic ListMigrationTasksResult _
Show ListMigrationTasksResult
Decode ListMigrationTasksResult
Encode ListMigrationTasksResult
```

#### `newListMigrationTasksResult`

``` purescript
newListMigrationTasksResult :: ListMigrationTasksResult
```

Constructs ListMigrationTasksResult from required parameters

#### `newListMigrationTasksResult'`

``` purescript
newListMigrationTasksResult' :: ({ "NextToken" :: Maybe (Token), "MigrationTaskSummaryList" :: Maybe (MigrationTaskSummaryList) } -> { "NextToken" :: Maybe (Token), "MigrationTaskSummaryList" :: Maybe (MigrationTaskSummaryList) }) -> ListMigrationTasksResult
```

Constructs ListMigrationTasksResult's fields from required parameters

#### `ListProgressUpdateStreamsRequest`

``` purescript
newtype ListProgressUpdateStreamsRequest
  = ListProgressUpdateStreamsRequest { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListProgressUpdateStreamsRequest _
Generic ListProgressUpdateStreamsRequest _
Show ListProgressUpdateStreamsRequest
Decode ListProgressUpdateStreamsRequest
Encode ListProgressUpdateStreamsRequest
```

#### `newListProgressUpdateStreamsRequest`

``` purescript
newListProgressUpdateStreamsRequest :: ListProgressUpdateStreamsRequest
```

Constructs ListProgressUpdateStreamsRequest from required parameters

#### `newListProgressUpdateStreamsRequest'`

``` purescript
newListProgressUpdateStreamsRequest' :: ({ "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }) -> ListProgressUpdateStreamsRequest
```

Constructs ListProgressUpdateStreamsRequest's fields from required parameters

#### `ListProgressUpdateStreamsResult`

``` purescript
newtype ListProgressUpdateStreamsResult
  = ListProgressUpdateStreamsResult { "ProgressUpdateStreamSummaryList" :: Maybe (ProgressUpdateStreamSummaryList), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListProgressUpdateStreamsResult _
Generic ListProgressUpdateStreamsResult _
Show ListProgressUpdateStreamsResult
Decode ListProgressUpdateStreamsResult
Encode ListProgressUpdateStreamsResult
```

#### `newListProgressUpdateStreamsResult`

``` purescript
newListProgressUpdateStreamsResult :: ListProgressUpdateStreamsResult
```

Constructs ListProgressUpdateStreamsResult from required parameters

#### `newListProgressUpdateStreamsResult'`

``` purescript
newListProgressUpdateStreamsResult' :: ({ "ProgressUpdateStreamSummaryList" :: Maybe (ProgressUpdateStreamSummaryList), "NextToken" :: Maybe (Token) } -> { "ProgressUpdateStreamSummaryList" :: Maybe (ProgressUpdateStreamSummaryList), "NextToken" :: Maybe (Token) }) -> ListProgressUpdateStreamsResult
```

Constructs ListProgressUpdateStreamsResult's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MaxResultsCreatedArtifacts`

``` purescript
newtype MaxResultsCreatedArtifacts
  = MaxResultsCreatedArtifacts Int
```

##### Instances
``` purescript
Newtype MaxResultsCreatedArtifacts _
Generic MaxResultsCreatedArtifacts _
Show MaxResultsCreatedArtifacts
Decode MaxResultsCreatedArtifacts
Encode MaxResultsCreatedArtifacts
```

#### `MaxResultsResources`

``` purescript
newtype MaxResultsResources
  = MaxResultsResources Int
```

##### Instances
``` purescript
Newtype MaxResultsResources _
Generic MaxResultsResources _
Show MaxResultsResources
Decode MaxResultsResources
Encode MaxResultsResources
```

#### `MigrationTask`

``` purescript
newtype MigrationTask
  = MigrationTask { "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Task" :: Maybe (Task), "UpdateDateTime" :: Maybe (UpdateDateTime), "ResourceAttributeList" :: Maybe (LatestResourceAttributeList) }
```

<p>Represents a migration task in a migration tool.</p>

##### Instances
``` purescript
Newtype MigrationTask _
Generic MigrationTask _
Show MigrationTask
Decode MigrationTask
Encode MigrationTask
```

#### `newMigrationTask`

``` purescript
newMigrationTask :: MigrationTask
```

Constructs MigrationTask from required parameters

#### `newMigrationTask'`

``` purescript
newMigrationTask' :: ({ "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Task" :: Maybe (Task), "UpdateDateTime" :: Maybe (UpdateDateTime), "ResourceAttributeList" :: Maybe (LatestResourceAttributeList) } -> { "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Task" :: Maybe (Task), "UpdateDateTime" :: Maybe (UpdateDateTime), "ResourceAttributeList" :: Maybe (LatestResourceAttributeList) }) -> MigrationTask
```

Constructs MigrationTask's fields from required parameters

#### `MigrationTaskName`

``` purescript
newtype MigrationTaskName
  = MigrationTaskName String
```

##### Instances
``` purescript
Newtype MigrationTaskName _
Generic MigrationTaskName _
Show MigrationTaskName
Decode MigrationTaskName
Encode MigrationTaskName
```

#### `MigrationTaskSummary`

``` purescript
newtype MigrationTaskSummary
  = MigrationTaskSummary { "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Status" :: Maybe (Status), "ProgressPercent" :: Maybe (ProgressPercent), "StatusDetail" :: Maybe (StatusDetail), "UpdateDateTime" :: Maybe (UpdateDateTime) }
```

<p>MigrationTaskSummary includes <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and <code>UpdateDateTime</code> for each task.</p>

##### Instances
``` purescript
Newtype MigrationTaskSummary _
Generic MigrationTaskSummary _
Show MigrationTaskSummary
Decode MigrationTaskSummary
Encode MigrationTaskSummary
```

#### `newMigrationTaskSummary`

``` purescript
newMigrationTaskSummary :: MigrationTaskSummary
```

Constructs MigrationTaskSummary from required parameters

#### `newMigrationTaskSummary'`

``` purescript
newMigrationTaskSummary' :: ({ "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Status" :: Maybe (Status), "ProgressPercent" :: Maybe (ProgressPercent), "StatusDetail" :: Maybe (StatusDetail), "UpdateDateTime" :: Maybe (UpdateDateTime) } -> { "ProgressUpdateStream" :: Maybe (ProgressUpdateStream), "MigrationTaskName" :: Maybe (MigrationTaskName), "Status" :: Maybe (Status), "ProgressPercent" :: Maybe (ProgressPercent), "StatusDetail" :: Maybe (StatusDetail), "UpdateDateTime" :: Maybe (UpdateDateTime) }) -> MigrationTaskSummary
```

Constructs MigrationTaskSummary's fields from required parameters

#### `MigrationTaskSummaryList`

``` purescript
newtype MigrationTaskSummaryList
  = MigrationTaskSummaryList (Array MigrationTaskSummary)
```

##### Instances
``` purescript
Newtype MigrationTaskSummaryList _
Generic MigrationTaskSummaryList _
Show MigrationTaskSummaryList
Decode MigrationTaskSummaryList
Encode MigrationTaskSummaryList
```

#### `NextUpdateSeconds`

``` purescript
newtype NextUpdateSeconds
  = NextUpdateSeconds Int
```

##### Instances
``` purescript
Newtype NextUpdateSeconds _
Generic NextUpdateSeconds _
Show NextUpdateSeconds
Decode NextUpdateSeconds
Encode NextUpdateSeconds
```

#### `NotifyApplicationStateRequest`

``` purescript
newtype NotifyApplicationStateRequest
  = NotifyApplicationStateRequest { "ApplicationId" :: ApplicationId, "Status" :: ApplicationStatus, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype NotifyApplicationStateRequest _
Generic NotifyApplicationStateRequest _
Show NotifyApplicationStateRequest
Decode NotifyApplicationStateRequest
Encode NotifyApplicationStateRequest
```

#### `newNotifyApplicationStateRequest`

``` purescript
newNotifyApplicationStateRequest :: ApplicationId -> ApplicationStatus -> NotifyApplicationStateRequest
```

Constructs NotifyApplicationStateRequest from required parameters

#### `newNotifyApplicationStateRequest'`

``` purescript
newNotifyApplicationStateRequest' :: ApplicationId -> ApplicationStatus -> ({ "ApplicationId" :: ApplicationId, "Status" :: ApplicationStatus, "DryRun" :: Maybe (DryRun) } -> { "ApplicationId" :: ApplicationId, "Status" :: ApplicationStatus, "DryRun" :: Maybe (DryRun) }) -> NotifyApplicationStateRequest
```

Constructs NotifyApplicationStateRequest's fields from required parameters

#### `NotifyApplicationStateResult`

``` purescript
newtype NotifyApplicationStateResult
  = NotifyApplicationStateResult NoArguments
```

##### Instances
``` purescript
Newtype NotifyApplicationStateResult _
Generic NotifyApplicationStateResult _
Show NotifyApplicationStateResult
Decode NotifyApplicationStateResult
Encode NotifyApplicationStateResult
```

#### `NotifyMigrationTaskStateRequest`

``` purescript
newtype NotifyMigrationTaskStateRequest
  = NotifyMigrationTaskStateRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "Task" :: Task, "UpdateDateTime" :: UpdateDateTime, "NextUpdateSeconds" :: NextUpdateSeconds, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype NotifyMigrationTaskStateRequest _
Generic NotifyMigrationTaskStateRequest _
Show NotifyMigrationTaskStateRequest
Decode NotifyMigrationTaskStateRequest
Encode NotifyMigrationTaskStateRequest
```

#### `newNotifyMigrationTaskStateRequest`

``` purescript
newNotifyMigrationTaskStateRequest :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> NotifyMigrationTaskStateRequest
```

Constructs NotifyMigrationTaskStateRequest from required parameters

#### `newNotifyMigrationTaskStateRequest'`

``` purescript
newNotifyMigrationTaskStateRequest' :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "Task" :: Task, "UpdateDateTime" :: UpdateDateTime, "NextUpdateSeconds" :: NextUpdateSeconds, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "Task" :: Task, "UpdateDateTime" :: UpdateDateTime, "NextUpdateSeconds" :: NextUpdateSeconds, "DryRun" :: Maybe (DryRun) }) -> NotifyMigrationTaskStateRequest
```

Constructs NotifyMigrationTaskStateRequest's fields from required parameters

#### `NotifyMigrationTaskStateResult`

``` purescript
newtype NotifyMigrationTaskStateResult
  = NotifyMigrationTaskStateResult NoArguments
```

##### Instances
``` purescript
Newtype NotifyMigrationTaskStateResult _
Generic NotifyMigrationTaskStateResult _
Show NotifyMigrationTaskStateResult
Decode NotifyMigrationTaskStateResult
Encode NotifyMigrationTaskStateResult
```

#### `PolicyErrorException`

``` purescript
newtype PolicyErrorException
  = PolicyErrorException { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised when there are problems accessing ADS (Application Discovery Service); most likely due to a misconfigured policy or the <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>

##### Instances
``` purescript
Newtype PolicyErrorException _
Generic PolicyErrorException _
Show PolicyErrorException
Decode PolicyErrorException
Encode PolicyErrorException
```

#### `newPolicyErrorException`

``` purescript
newPolicyErrorException :: PolicyErrorException
```

Constructs PolicyErrorException from required parameters

#### `newPolicyErrorException'`

``` purescript
newPolicyErrorException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> PolicyErrorException
```

Constructs PolicyErrorException's fields from required parameters

#### `ProgressPercent`

``` purescript
newtype ProgressPercent
  = ProgressPercent Int
```

##### Instances
``` purescript
Newtype ProgressPercent _
Generic ProgressPercent _
Show ProgressPercent
Decode ProgressPercent
Encode ProgressPercent
```

#### `ProgressUpdateStream`

``` purescript
newtype ProgressUpdateStream
  = ProgressUpdateStream String
```

##### Instances
``` purescript
Newtype ProgressUpdateStream _
Generic ProgressUpdateStream _
Show ProgressUpdateStream
Decode ProgressUpdateStream
Encode ProgressUpdateStream
```

#### `ProgressUpdateStreamSummary`

``` purescript
newtype ProgressUpdateStreamSummary
  = ProgressUpdateStreamSummary { "ProgressUpdateStreamName" :: Maybe (ProgressUpdateStream) }
```

<p>Summary of the AWS resource used for access control that is implicitly linked to your AWS account.</p>

##### Instances
``` purescript
Newtype ProgressUpdateStreamSummary _
Generic ProgressUpdateStreamSummary _
Show ProgressUpdateStreamSummary
Decode ProgressUpdateStreamSummary
Encode ProgressUpdateStreamSummary
```

#### `newProgressUpdateStreamSummary`

``` purescript
newProgressUpdateStreamSummary :: ProgressUpdateStreamSummary
```

Constructs ProgressUpdateStreamSummary from required parameters

#### `newProgressUpdateStreamSummary'`

``` purescript
newProgressUpdateStreamSummary' :: ({ "ProgressUpdateStreamName" :: Maybe (ProgressUpdateStream) } -> { "ProgressUpdateStreamName" :: Maybe (ProgressUpdateStream) }) -> ProgressUpdateStreamSummary
```

Constructs ProgressUpdateStreamSummary's fields from required parameters

#### `ProgressUpdateStreamSummaryList`

``` purescript
newtype ProgressUpdateStreamSummaryList
  = ProgressUpdateStreamSummaryList (Array ProgressUpdateStreamSummary)
```

##### Instances
``` purescript
Newtype ProgressUpdateStreamSummaryList _
Generic ProgressUpdateStreamSummaryList _
Show ProgressUpdateStreamSummaryList
Decode ProgressUpdateStreamSummaryList
Encode ProgressUpdateStreamSummaryList
```

#### `PutResourceAttributesRequest`

``` purescript
newtype PutResourceAttributesRequest
  = PutResourceAttributesRequest { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ResourceAttributeList" :: ResourceAttributeList, "DryRun" :: Maybe (DryRun) }
```

##### Instances
``` purescript
Newtype PutResourceAttributesRequest _
Generic PutResourceAttributesRequest _
Show PutResourceAttributesRequest
Decode PutResourceAttributesRequest
Encode PutResourceAttributesRequest
```

#### `newPutResourceAttributesRequest`

``` purescript
newPutResourceAttributesRequest :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> PutResourceAttributesRequest
```

Constructs PutResourceAttributesRequest from required parameters

#### `newPutResourceAttributesRequest'`

``` purescript
newPutResourceAttributesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> ({ "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ResourceAttributeList" :: ResourceAttributeList, "DryRun" :: Maybe (DryRun) } -> { "ProgressUpdateStream" :: ProgressUpdateStream, "MigrationTaskName" :: MigrationTaskName, "ResourceAttributeList" :: ResourceAttributeList, "DryRun" :: Maybe (DryRun) }) -> PutResourceAttributesRequest
```

Constructs PutResourceAttributesRequest's fields from required parameters

#### `PutResourceAttributesResult`

``` purescript
newtype PutResourceAttributesResult
  = PutResourceAttributesResult NoArguments
```

##### Instances
``` purescript
Newtype PutResourceAttributesResult _
Generic PutResourceAttributesResult _
Show PutResourceAttributesResult
Decode PutResourceAttributesResult
Encode PutResourceAttributesResult
```

#### `ResourceAttribute`

``` purescript
newtype ResourceAttribute
  = ResourceAttribute { "Type" :: ResourceAttributeType, "Value" :: ResourceAttributeValue }
```

<p>Attribute associated with a resource.</p> <p>Note the corresponding format required per type listed below:</p> <dl> <dt>IPV4</dt> <dd> <p> <code>x.x.x.x</code> </p> <p> <i>where x is an integer in the range [0,255]</i> </p> </dd> <dt>IPV6</dt> <dd> <p> <code>y : y : y : y : y : y : y : y</code> </p> <p> <i>where y is a hexadecimal between 0 and FFFF. [0, FFFF]</i> </p> </dd> <dt>MAC_ADDRESS</dt> <dd> <p> <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code> </p> </dd> <dt>FQDN</dt> <dd> <p> <code>^[^&lt;&gt;{}\\\\/?,=\\p{Cntrl}]{1,256}$</code> </p> </dd> </dl>

##### Instances
``` purescript
Newtype ResourceAttribute _
Generic ResourceAttribute _
Show ResourceAttribute
Decode ResourceAttribute
Encode ResourceAttribute
```

#### `newResourceAttribute`

``` purescript
newResourceAttribute :: ResourceAttributeType -> ResourceAttributeValue -> ResourceAttribute
```

Constructs ResourceAttribute from required parameters

#### `newResourceAttribute'`

``` purescript
newResourceAttribute' :: ResourceAttributeType -> ResourceAttributeValue -> ({ "Type" :: ResourceAttributeType, "Value" :: ResourceAttributeValue } -> { "Type" :: ResourceAttributeType, "Value" :: ResourceAttributeValue }) -> ResourceAttribute
```

Constructs ResourceAttribute's fields from required parameters

#### `ResourceAttributeList`

``` purescript
newtype ResourceAttributeList
  = ResourceAttributeList (Array ResourceAttribute)
```

##### Instances
``` purescript
Newtype ResourceAttributeList _
Generic ResourceAttributeList _
Show ResourceAttributeList
Decode ResourceAttributeList
Encode ResourceAttributeList
```

#### `ResourceAttributeType`

``` purescript
newtype ResourceAttributeType
  = ResourceAttributeType String
```

##### Instances
``` purescript
Newtype ResourceAttributeType _
Generic ResourceAttributeType _
Show ResourceAttributeType
Decode ResourceAttributeType
Encode ResourceAttributeType
```

#### `ResourceAttributeValue`

``` purescript
newtype ResourceAttributeValue
  = ResourceAttributeValue String
```

##### Instances
``` purescript
Newtype ResourceAttributeValue _
Generic ResourceAttributeValue _
Show ResourceAttributeValue
Decode ResourceAttributeValue
Encode ResourceAttributeValue
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

##### Instances
``` purescript
Newtype ResourceName _
Generic ResourceName _
Show ResourceName
Decode ResourceName
Encode ResourceName
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised when the request references a resource (ADS configuration, update stream, migration task, etc.) that does not exist in ADS (Application Discovery Service) or in Migration Hub's repository.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `Status`

``` purescript
newtype Status
  = Status String
```

##### Instances
``` purescript
Newtype Status _
Generic Status _
Show Status
Decode Status
Encode Status
```

#### `StatusDetail`

``` purescript
newtype StatusDetail
  = StatusDetail String
```

##### Instances
``` purescript
Newtype StatusDetail _
Generic StatusDetail _
Show StatusDetail
Decode StatusDetail
Encode StatusDetail
```

#### `Task`

``` purescript
newtype Task
  = Task { "Status" :: Status, "StatusDetail" :: Maybe (StatusDetail), "ProgressPercent" :: Maybe (ProgressPercent) }
```

<p>Task object encapsulating task information.</p>

##### Instances
``` purescript
Newtype Task _
Generic Task _
Show Task
Decode Task
Encode Task
```

#### `newTask`

``` purescript
newTask :: Status -> Task
```

Constructs Task from required parameters

#### `newTask'`

``` purescript
newTask' :: Status -> ({ "Status" :: Status, "StatusDetail" :: Maybe (StatusDetail), "ProgressPercent" :: Maybe (ProgressPercent) } -> { "Status" :: Status, "StatusDetail" :: Maybe (StatusDetail), "ProgressPercent" :: Maybe (ProgressPercent) }) -> Task
```

Constructs Task's fields from required parameters

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `UnauthorizedOperation`

``` purescript
newtype UnauthorizedOperation
  = UnauthorizedOperation { "Message" :: Maybe (ErrorMessage) }
```

<p>Exception raised to indicate a request was not authorized when the <code>DryRun</code> flag is set to "true".</p>

##### Instances
``` purescript
Newtype UnauthorizedOperation _
Generic UnauthorizedOperation _
Show UnauthorizedOperation
Decode UnauthorizedOperation
Encode UnauthorizedOperation
```

#### `newUnauthorizedOperation`

``` purescript
newUnauthorizedOperation :: UnauthorizedOperation
```

Constructs UnauthorizedOperation from required parameters

#### `newUnauthorizedOperation'`

``` purescript
newUnauthorizedOperation' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> UnauthorizedOperation
```

Constructs UnauthorizedOperation's fields from required parameters

#### `UpdateDateTime`

``` purescript
newtype UpdateDateTime
  = UpdateDateTime Timestamp
```

##### Instances
``` purescript
Newtype UpdateDateTime _
Generic UpdateDateTime _
Show UpdateDateTime
Decode UpdateDateTime
Encode UpdateDateTime
```


