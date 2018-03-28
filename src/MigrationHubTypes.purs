
module AWS.MigrationHub.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>You do not have sufficient access to perform this action.</p>
newtype AccessDeniedException = AccessDeniedException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where decode = genericDecode options
instance encodeAccessDeniedException :: Encode AccessDeniedException where encode = genericEncode options

-- | Constructs AccessDeniedException from required parameters
newAccessDeniedException :: AccessDeniedException
newAccessDeniedException  = AccessDeniedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> AccessDeniedException
newAccessDeniedException'  customize = (AccessDeniedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ApplicationId = ApplicationId String
derive instance newtypeApplicationId :: Newtype ApplicationId _
derive instance repGenericApplicationId :: Generic ApplicationId _
instance showApplicationId :: Show ApplicationId where show = genericShow
instance decodeApplicationId :: Decode ApplicationId where decode = genericDecode options
instance encodeApplicationId :: Encode ApplicationId where encode = genericEncode options



newtype ApplicationStatus = ApplicationStatus String
derive instance newtypeApplicationStatus :: Newtype ApplicationStatus _
derive instance repGenericApplicationStatus :: Generic ApplicationStatus _
instance showApplicationStatus :: Show ApplicationStatus where show = genericShow
instance decodeApplicationStatus :: Decode ApplicationStatus where decode = genericDecode options
instance encodeApplicationStatus :: Encode ApplicationStatus where encode = genericEncode options



newtype AssociateCreatedArtifactRequest = AssociateCreatedArtifactRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "CreatedArtifact" :: (CreatedArtifact)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeAssociateCreatedArtifactRequest :: Newtype AssociateCreatedArtifactRequest _
derive instance repGenericAssociateCreatedArtifactRequest :: Generic AssociateCreatedArtifactRequest _
instance showAssociateCreatedArtifactRequest :: Show AssociateCreatedArtifactRequest where show = genericShow
instance decodeAssociateCreatedArtifactRequest :: Decode AssociateCreatedArtifactRequest where decode = genericDecode options
instance encodeAssociateCreatedArtifactRequest :: Encode AssociateCreatedArtifactRequest where encode = genericEncode options

-- | Constructs AssociateCreatedArtifactRequest from required parameters
newAssociateCreatedArtifactRequest :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> AssociateCreatedArtifactRequest
newAssociateCreatedArtifactRequest _CreatedArtifact _MigrationTaskName _ProgressUpdateStream = AssociateCreatedArtifactRequest { "CreatedArtifact": _CreatedArtifact, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs AssociateCreatedArtifactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateCreatedArtifactRequest' :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifact" :: (CreatedArtifact) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifact" :: (CreatedArtifact) , "DryRun" :: NullOrUndefined (DryRun) } ) -> AssociateCreatedArtifactRequest
newAssociateCreatedArtifactRequest' _CreatedArtifact _MigrationTaskName _ProgressUpdateStream customize = (AssociateCreatedArtifactRequest <<< customize) { "CreatedArtifact": _CreatedArtifact, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype AssociateCreatedArtifactResult = AssociateCreatedArtifactResult Types.NoArguments
derive instance newtypeAssociateCreatedArtifactResult :: Newtype AssociateCreatedArtifactResult _
derive instance repGenericAssociateCreatedArtifactResult :: Generic AssociateCreatedArtifactResult _
instance showAssociateCreatedArtifactResult :: Show AssociateCreatedArtifactResult where show = genericShow
instance decodeAssociateCreatedArtifactResult :: Decode AssociateCreatedArtifactResult where decode = genericDecode options
instance encodeAssociateCreatedArtifactResult :: Encode AssociateCreatedArtifactResult where encode = genericEncode options



newtype AssociateDiscoveredResourceRequest = AssociateDiscoveredResourceRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "DiscoveredResource" :: (DiscoveredResource)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeAssociateDiscoveredResourceRequest :: Newtype AssociateDiscoveredResourceRequest _
derive instance repGenericAssociateDiscoveredResourceRequest :: Generic AssociateDiscoveredResourceRequest _
instance showAssociateDiscoveredResourceRequest :: Show AssociateDiscoveredResourceRequest where show = genericShow
instance decodeAssociateDiscoveredResourceRequest :: Decode AssociateDiscoveredResourceRequest where decode = genericDecode options
instance encodeAssociateDiscoveredResourceRequest :: Encode AssociateDiscoveredResourceRequest where encode = genericEncode options

-- | Constructs AssociateDiscoveredResourceRequest from required parameters
newAssociateDiscoveredResourceRequest :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> AssociateDiscoveredResourceRequest
newAssociateDiscoveredResourceRequest _DiscoveredResource _MigrationTaskName _ProgressUpdateStream = AssociateDiscoveredResourceRequest { "DiscoveredResource": _DiscoveredResource, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs AssociateDiscoveredResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateDiscoveredResourceRequest' :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DiscoveredResource" :: (DiscoveredResource) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DiscoveredResource" :: (DiscoveredResource) , "DryRun" :: NullOrUndefined (DryRun) } ) -> AssociateDiscoveredResourceRequest
newAssociateDiscoveredResourceRequest' _DiscoveredResource _MigrationTaskName _ProgressUpdateStream customize = (AssociateDiscoveredResourceRequest <<< customize) { "DiscoveredResource": _DiscoveredResource, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype AssociateDiscoveredResourceResult = AssociateDiscoveredResourceResult Types.NoArguments
derive instance newtypeAssociateDiscoveredResourceResult :: Newtype AssociateDiscoveredResourceResult _
derive instance repGenericAssociateDiscoveredResourceResult :: Generic AssociateDiscoveredResourceResult _
instance showAssociateDiscoveredResourceResult :: Show AssociateDiscoveredResourceResult where show = genericShow
instance decodeAssociateDiscoveredResourceResult :: Decode AssociateDiscoveredResourceResult where decode = genericDecode options
instance encodeAssociateDiscoveredResourceResult :: Encode AssociateDiscoveredResourceResult where encode = genericEncode options



newtype ConfigurationId = ConfigurationId String
derive instance newtypeConfigurationId :: Newtype ConfigurationId _
derive instance repGenericConfigurationId :: Generic ConfigurationId _
instance showConfigurationId :: Show ConfigurationId where show = genericShow
instance decodeConfigurationId :: Decode ConfigurationId where decode = genericDecode options
instance encodeConfigurationId :: Encode ConfigurationId where encode = genericEncode options



newtype CreateProgressUpdateStreamRequest = CreateProgressUpdateStreamRequest 
  { "ProgressUpdateStreamName" :: (ProgressUpdateStream)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeCreateProgressUpdateStreamRequest :: Newtype CreateProgressUpdateStreamRequest _
derive instance repGenericCreateProgressUpdateStreamRequest :: Generic CreateProgressUpdateStreamRequest _
instance showCreateProgressUpdateStreamRequest :: Show CreateProgressUpdateStreamRequest where show = genericShow
instance decodeCreateProgressUpdateStreamRequest :: Decode CreateProgressUpdateStreamRequest where decode = genericDecode options
instance encodeCreateProgressUpdateStreamRequest :: Encode CreateProgressUpdateStreamRequest where encode = genericEncode options

-- | Constructs CreateProgressUpdateStreamRequest from required parameters
newCreateProgressUpdateStreamRequest :: ProgressUpdateStream -> CreateProgressUpdateStreamRequest
newCreateProgressUpdateStreamRequest _ProgressUpdateStreamName = CreateProgressUpdateStreamRequest { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs CreateProgressUpdateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProgressUpdateStreamRequest' :: ProgressUpdateStream -> ( { "ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined (DryRun) } ) -> CreateProgressUpdateStreamRequest
newCreateProgressUpdateStreamRequest' _ProgressUpdateStreamName customize = (CreateProgressUpdateStreamRequest <<< customize) { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }



newtype CreateProgressUpdateStreamResult = CreateProgressUpdateStreamResult Types.NoArguments
derive instance newtypeCreateProgressUpdateStreamResult :: Newtype CreateProgressUpdateStreamResult _
derive instance repGenericCreateProgressUpdateStreamResult :: Generic CreateProgressUpdateStreamResult _
instance showCreateProgressUpdateStreamResult :: Show CreateProgressUpdateStreamResult where show = genericShow
instance decodeCreateProgressUpdateStreamResult :: Decode CreateProgressUpdateStreamResult where decode = genericDecode options
instance encodeCreateProgressUpdateStreamResult :: Encode CreateProgressUpdateStreamResult where encode = genericEncode options



-- | <p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2 instance, RDS instance, etc.).</p>
newtype CreatedArtifact = CreatedArtifact 
  { "Name" :: (CreatedArtifactName)
  , "Description" :: NullOrUndefined (CreatedArtifactDescription)
  }
derive instance newtypeCreatedArtifact :: Newtype CreatedArtifact _
derive instance repGenericCreatedArtifact :: Generic CreatedArtifact _
instance showCreatedArtifact :: Show CreatedArtifact where show = genericShow
instance decodeCreatedArtifact :: Decode CreatedArtifact where decode = genericDecode options
instance encodeCreatedArtifact :: Encode CreatedArtifact where encode = genericEncode options

-- | Constructs CreatedArtifact from required parameters
newCreatedArtifact :: CreatedArtifactName -> CreatedArtifact
newCreatedArtifact _Name = CreatedArtifact { "Name": _Name, "Description": (NullOrUndefined Nothing) }

-- | Constructs CreatedArtifact's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatedArtifact' :: CreatedArtifactName -> ( { "Name" :: (CreatedArtifactName) , "Description" :: NullOrUndefined (CreatedArtifactDescription) } -> {"Name" :: (CreatedArtifactName) , "Description" :: NullOrUndefined (CreatedArtifactDescription) } ) -> CreatedArtifact
newCreatedArtifact' _Name customize = (CreatedArtifact <<< customize) { "Name": _Name, "Description": (NullOrUndefined Nothing) }



newtype CreatedArtifactDescription = CreatedArtifactDescription String
derive instance newtypeCreatedArtifactDescription :: Newtype CreatedArtifactDescription _
derive instance repGenericCreatedArtifactDescription :: Generic CreatedArtifactDescription _
instance showCreatedArtifactDescription :: Show CreatedArtifactDescription where show = genericShow
instance decodeCreatedArtifactDescription :: Decode CreatedArtifactDescription where decode = genericDecode options
instance encodeCreatedArtifactDescription :: Encode CreatedArtifactDescription where encode = genericEncode options



newtype CreatedArtifactList = CreatedArtifactList (Array CreatedArtifact)
derive instance newtypeCreatedArtifactList :: Newtype CreatedArtifactList _
derive instance repGenericCreatedArtifactList :: Generic CreatedArtifactList _
instance showCreatedArtifactList :: Show CreatedArtifactList where show = genericShow
instance decodeCreatedArtifactList :: Decode CreatedArtifactList where decode = genericDecode options
instance encodeCreatedArtifactList :: Encode CreatedArtifactList where encode = genericEncode options



newtype CreatedArtifactName = CreatedArtifactName String
derive instance newtypeCreatedArtifactName :: Newtype CreatedArtifactName _
derive instance repGenericCreatedArtifactName :: Generic CreatedArtifactName _
instance showCreatedArtifactName :: Show CreatedArtifactName where show = genericShow
instance decodeCreatedArtifactName :: Decode CreatedArtifactName where decode = genericDecode options
instance encodeCreatedArtifactName :: Encode CreatedArtifactName where encode = genericEncode options



newtype DeleteProgressUpdateStreamRequest = DeleteProgressUpdateStreamRequest 
  { "ProgressUpdateStreamName" :: (ProgressUpdateStream)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeDeleteProgressUpdateStreamRequest :: Newtype DeleteProgressUpdateStreamRequest _
derive instance repGenericDeleteProgressUpdateStreamRequest :: Generic DeleteProgressUpdateStreamRequest _
instance showDeleteProgressUpdateStreamRequest :: Show DeleteProgressUpdateStreamRequest where show = genericShow
instance decodeDeleteProgressUpdateStreamRequest :: Decode DeleteProgressUpdateStreamRequest where decode = genericDecode options
instance encodeDeleteProgressUpdateStreamRequest :: Encode DeleteProgressUpdateStreamRequest where encode = genericEncode options

-- | Constructs DeleteProgressUpdateStreamRequest from required parameters
newDeleteProgressUpdateStreamRequest :: ProgressUpdateStream -> DeleteProgressUpdateStreamRequest
newDeleteProgressUpdateStreamRequest _ProgressUpdateStreamName = DeleteProgressUpdateStreamRequest { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DeleteProgressUpdateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProgressUpdateStreamRequest' :: ProgressUpdateStream -> ( { "ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined (DryRun) } ) -> DeleteProgressUpdateStreamRequest
newDeleteProgressUpdateStreamRequest' _ProgressUpdateStreamName customize = (DeleteProgressUpdateStreamRequest <<< customize) { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }



newtype DeleteProgressUpdateStreamResult = DeleteProgressUpdateStreamResult Types.NoArguments
derive instance newtypeDeleteProgressUpdateStreamResult :: Newtype DeleteProgressUpdateStreamResult _
derive instance repGenericDeleteProgressUpdateStreamResult :: Generic DeleteProgressUpdateStreamResult _
instance showDeleteProgressUpdateStreamResult :: Show DeleteProgressUpdateStreamResult where show = genericShow
instance decodeDeleteProgressUpdateStreamResult :: Decode DeleteProgressUpdateStreamResult where decode = genericDecode options
instance encodeDeleteProgressUpdateStreamResult :: Encode DeleteProgressUpdateStreamResult where encode = genericEncode options



newtype DescribeApplicationStateRequest = DescribeApplicationStateRequest 
  { "ApplicationId" :: (ApplicationId)
  }
derive instance newtypeDescribeApplicationStateRequest :: Newtype DescribeApplicationStateRequest _
derive instance repGenericDescribeApplicationStateRequest :: Generic DescribeApplicationStateRequest _
instance showDescribeApplicationStateRequest :: Show DescribeApplicationStateRequest where show = genericShow
instance decodeDescribeApplicationStateRequest :: Decode DescribeApplicationStateRequest where decode = genericDecode options
instance encodeDescribeApplicationStateRequest :: Encode DescribeApplicationStateRequest where encode = genericEncode options

-- | Constructs DescribeApplicationStateRequest from required parameters
newDescribeApplicationStateRequest :: ApplicationId -> DescribeApplicationStateRequest
newDescribeApplicationStateRequest _ApplicationId = DescribeApplicationStateRequest { "ApplicationId": _ApplicationId }

-- | Constructs DescribeApplicationStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationStateRequest' :: ApplicationId -> ( { "ApplicationId" :: (ApplicationId) } -> {"ApplicationId" :: (ApplicationId) } ) -> DescribeApplicationStateRequest
newDescribeApplicationStateRequest' _ApplicationId customize = (DescribeApplicationStateRequest <<< customize) { "ApplicationId": _ApplicationId }



newtype DescribeApplicationStateResult = DescribeApplicationStateResult 
  { "ApplicationStatus" :: NullOrUndefined (ApplicationStatus)
  , "LastUpdatedTime" :: NullOrUndefined (UpdateDateTime)
  }
derive instance newtypeDescribeApplicationStateResult :: Newtype DescribeApplicationStateResult _
derive instance repGenericDescribeApplicationStateResult :: Generic DescribeApplicationStateResult _
instance showDescribeApplicationStateResult :: Show DescribeApplicationStateResult where show = genericShow
instance decodeDescribeApplicationStateResult :: Decode DescribeApplicationStateResult where decode = genericDecode options
instance encodeDescribeApplicationStateResult :: Encode DescribeApplicationStateResult where encode = genericEncode options

-- | Constructs DescribeApplicationStateResult from required parameters
newDescribeApplicationStateResult :: DescribeApplicationStateResult
newDescribeApplicationStateResult  = DescribeApplicationStateResult { "ApplicationStatus": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing) }

-- | Constructs DescribeApplicationStateResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationStateResult' :: ( { "ApplicationStatus" :: NullOrUndefined (ApplicationStatus) , "LastUpdatedTime" :: NullOrUndefined (UpdateDateTime) } -> {"ApplicationStatus" :: NullOrUndefined (ApplicationStatus) , "LastUpdatedTime" :: NullOrUndefined (UpdateDateTime) } ) -> DescribeApplicationStateResult
newDescribeApplicationStateResult'  customize = (DescribeApplicationStateResult <<< customize) { "ApplicationStatus": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing) }



newtype DescribeMigrationTaskRequest = DescribeMigrationTaskRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  }
derive instance newtypeDescribeMigrationTaskRequest :: Newtype DescribeMigrationTaskRequest _
derive instance repGenericDescribeMigrationTaskRequest :: Generic DescribeMigrationTaskRequest _
instance showDescribeMigrationTaskRequest :: Show DescribeMigrationTaskRequest where show = genericShow
instance decodeDescribeMigrationTaskRequest :: Decode DescribeMigrationTaskRequest where decode = genericDecode options
instance encodeDescribeMigrationTaskRequest :: Encode DescribeMigrationTaskRequest where encode = genericEncode options

-- | Constructs DescribeMigrationTaskRequest from required parameters
newDescribeMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> DescribeMigrationTaskRequest
newDescribeMigrationTaskRequest _MigrationTaskName _ProgressUpdateStream = DescribeMigrationTaskRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream }

-- | Constructs DescribeMigrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) } ) -> DescribeMigrationTaskRequest
newDescribeMigrationTaskRequest' _MigrationTaskName _ProgressUpdateStream customize = (DescribeMigrationTaskRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream }



newtype DescribeMigrationTaskResult = DescribeMigrationTaskResult 
  { "MigrationTask" :: NullOrUndefined (MigrationTask)
  }
derive instance newtypeDescribeMigrationTaskResult :: Newtype DescribeMigrationTaskResult _
derive instance repGenericDescribeMigrationTaskResult :: Generic DescribeMigrationTaskResult _
instance showDescribeMigrationTaskResult :: Show DescribeMigrationTaskResult where show = genericShow
instance decodeDescribeMigrationTaskResult :: Decode DescribeMigrationTaskResult where decode = genericDecode options
instance encodeDescribeMigrationTaskResult :: Encode DescribeMigrationTaskResult where encode = genericEncode options

-- | Constructs DescribeMigrationTaskResult from required parameters
newDescribeMigrationTaskResult :: DescribeMigrationTaskResult
newDescribeMigrationTaskResult  = DescribeMigrationTaskResult { "MigrationTask": (NullOrUndefined Nothing) }

-- | Constructs DescribeMigrationTaskResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMigrationTaskResult' :: ( { "MigrationTask" :: NullOrUndefined (MigrationTask) } -> {"MigrationTask" :: NullOrUndefined (MigrationTask) } ) -> DescribeMigrationTaskResult
newDescribeMigrationTaskResult'  customize = (DescribeMigrationTaskResult <<< customize) { "MigrationTask": (NullOrUndefined Nothing) }



newtype DisassociateCreatedArtifactRequest = DisassociateCreatedArtifactRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "CreatedArtifactName" :: (CreatedArtifactName)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeDisassociateCreatedArtifactRequest :: Newtype DisassociateCreatedArtifactRequest _
derive instance repGenericDisassociateCreatedArtifactRequest :: Generic DisassociateCreatedArtifactRequest _
instance showDisassociateCreatedArtifactRequest :: Show DisassociateCreatedArtifactRequest where show = genericShow
instance decodeDisassociateCreatedArtifactRequest :: Decode DisassociateCreatedArtifactRequest where decode = genericDecode options
instance encodeDisassociateCreatedArtifactRequest :: Encode DisassociateCreatedArtifactRequest where encode = genericEncode options

-- | Constructs DisassociateCreatedArtifactRequest from required parameters
newDisassociateCreatedArtifactRequest :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> DisassociateCreatedArtifactRequest
newDisassociateCreatedArtifactRequest _CreatedArtifactName _MigrationTaskName _ProgressUpdateStream = DisassociateCreatedArtifactRequest { "CreatedArtifactName": _CreatedArtifactName, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DisassociateCreatedArtifactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateCreatedArtifactRequest' :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifactName" :: (CreatedArtifactName) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifactName" :: (CreatedArtifactName) , "DryRun" :: NullOrUndefined (DryRun) } ) -> DisassociateCreatedArtifactRequest
newDisassociateCreatedArtifactRequest' _CreatedArtifactName _MigrationTaskName _ProgressUpdateStream customize = (DisassociateCreatedArtifactRequest <<< customize) { "CreatedArtifactName": _CreatedArtifactName, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype DisassociateCreatedArtifactResult = DisassociateCreatedArtifactResult Types.NoArguments
derive instance newtypeDisassociateCreatedArtifactResult :: Newtype DisassociateCreatedArtifactResult _
derive instance repGenericDisassociateCreatedArtifactResult :: Generic DisassociateCreatedArtifactResult _
instance showDisassociateCreatedArtifactResult :: Show DisassociateCreatedArtifactResult where show = genericShow
instance decodeDisassociateCreatedArtifactResult :: Decode DisassociateCreatedArtifactResult where decode = genericDecode options
instance encodeDisassociateCreatedArtifactResult :: Encode DisassociateCreatedArtifactResult where encode = genericEncode options



newtype DisassociateDiscoveredResourceRequest = DisassociateDiscoveredResourceRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "ConfigurationId" :: (ConfigurationId)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeDisassociateDiscoveredResourceRequest :: Newtype DisassociateDiscoveredResourceRequest _
derive instance repGenericDisassociateDiscoveredResourceRequest :: Generic DisassociateDiscoveredResourceRequest _
instance showDisassociateDiscoveredResourceRequest :: Show DisassociateDiscoveredResourceRequest where show = genericShow
instance decodeDisassociateDiscoveredResourceRequest :: Decode DisassociateDiscoveredResourceRequest where decode = genericDecode options
instance encodeDisassociateDiscoveredResourceRequest :: Encode DisassociateDiscoveredResourceRequest where encode = genericEncode options

-- | Constructs DisassociateDiscoveredResourceRequest from required parameters
newDisassociateDiscoveredResourceRequest :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> DisassociateDiscoveredResourceRequest
newDisassociateDiscoveredResourceRequest _ConfigurationId _MigrationTaskName _ProgressUpdateStream = DisassociateDiscoveredResourceRequest { "ConfigurationId": _ConfigurationId, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DisassociateDiscoveredResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateDiscoveredResourceRequest' :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ConfigurationId" :: (ConfigurationId) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ConfigurationId" :: (ConfigurationId) , "DryRun" :: NullOrUndefined (DryRun) } ) -> DisassociateDiscoveredResourceRequest
newDisassociateDiscoveredResourceRequest' _ConfigurationId _MigrationTaskName _ProgressUpdateStream customize = (DisassociateDiscoveredResourceRequest <<< customize) { "ConfigurationId": _ConfigurationId, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype DisassociateDiscoveredResourceResult = DisassociateDiscoveredResourceResult Types.NoArguments
derive instance newtypeDisassociateDiscoveredResourceResult :: Newtype DisassociateDiscoveredResourceResult _
derive instance repGenericDisassociateDiscoveredResourceResult :: Generic DisassociateDiscoveredResourceResult _
instance showDisassociateDiscoveredResourceResult :: Show DisassociateDiscoveredResourceResult where show = genericShow
instance decodeDisassociateDiscoveredResourceResult :: Decode DisassociateDiscoveredResourceResult where decode = genericDecode options
instance encodeDisassociateDiscoveredResourceResult :: Encode DisassociateDiscoveredResourceResult where encode = genericEncode options



-- | <p>Object representing the on-premises resource being migrated.</p>
newtype DiscoveredResource = DiscoveredResource 
  { "ConfigurationId" :: (ConfigurationId)
  , "Description" :: NullOrUndefined (DiscoveredResourceDescription)
  }
derive instance newtypeDiscoveredResource :: Newtype DiscoveredResource _
derive instance repGenericDiscoveredResource :: Generic DiscoveredResource _
instance showDiscoveredResource :: Show DiscoveredResource where show = genericShow
instance decodeDiscoveredResource :: Decode DiscoveredResource where decode = genericDecode options
instance encodeDiscoveredResource :: Encode DiscoveredResource where encode = genericEncode options

-- | Constructs DiscoveredResource from required parameters
newDiscoveredResource :: ConfigurationId -> DiscoveredResource
newDiscoveredResource _ConfigurationId = DiscoveredResource { "ConfigurationId": _ConfigurationId, "Description": (NullOrUndefined Nothing) }

-- | Constructs DiscoveredResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoveredResource' :: ConfigurationId -> ( { "ConfigurationId" :: (ConfigurationId) , "Description" :: NullOrUndefined (DiscoveredResourceDescription) } -> {"ConfigurationId" :: (ConfigurationId) , "Description" :: NullOrUndefined (DiscoveredResourceDescription) } ) -> DiscoveredResource
newDiscoveredResource' _ConfigurationId customize = (DiscoveredResource <<< customize) { "ConfigurationId": _ConfigurationId, "Description": (NullOrUndefined Nothing) }



newtype DiscoveredResourceDescription = DiscoveredResourceDescription String
derive instance newtypeDiscoveredResourceDescription :: Newtype DiscoveredResourceDescription _
derive instance repGenericDiscoveredResourceDescription :: Generic DiscoveredResourceDescription _
instance showDiscoveredResourceDescription :: Show DiscoveredResourceDescription where show = genericShow
instance decodeDiscoveredResourceDescription :: Decode DiscoveredResourceDescription where decode = genericDecode options
instance encodeDiscoveredResourceDescription :: Encode DiscoveredResourceDescription where encode = genericEncode options



newtype DiscoveredResourceList = DiscoveredResourceList (Array DiscoveredResource)
derive instance newtypeDiscoveredResourceList :: Newtype DiscoveredResourceList _
derive instance repGenericDiscoveredResourceList :: Generic DiscoveredResourceList _
instance showDiscoveredResourceList :: Show DiscoveredResourceList where show = genericShow
instance decodeDiscoveredResourceList :: Decode DiscoveredResourceList where decode = genericDecode options
instance encodeDiscoveredResourceList :: Encode DiscoveredResourceList where encode = genericEncode options



newtype DryRun = DryRun Boolean
derive instance newtypeDryRun :: Newtype DryRun _
derive instance repGenericDryRun :: Generic DryRun _
instance showDryRun :: Show DryRun where show = genericShow
instance decodeDryRun :: Decode DryRun where decode = genericDecode options
instance encodeDryRun :: Encode DryRun where encode = genericEncode options



-- | <p>Exception raised to indicate a successfully authorized action when the <code>DryRun</code> flag is set to "true".</p>
newtype DryRunOperation = DryRunOperation 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDryRunOperation :: Newtype DryRunOperation _
derive instance repGenericDryRunOperation :: Generic DryRunOperation _
instance showDryRunOperation :: Show DryRunOperation where show = genericShow
instance decodeDryRunOperation :: Decode DryRunOperation where decode = genericDecode options
instance encodeDryRunOperation :: Encode DryRunOperation where encode = genericEncode options

-- | Constructs DryRunOperation from required parameters
newDryRunOperation :: DryRunOperation
newDryRunOperation  = DryRunOperation { "Message": (NullOrUndefined Nothing) }

-- | Constructs DryRunOperation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDryRunOperation' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> DryRunOperation
newDryRunOperation'  customize = (DryRunOperation <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype ImportMigrationTaskRequest = ImportMigrationTaskRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeImportMigrationTaskRequest :: Newtype ImportMigrationTaskRequest _
derive instance repGenericImportMigrationTaskRequest :: Generic ImportMigrationTaskRequest _
instance showImportMigrationTaskRequest :: Show ImportMigrationTaskRequest where show = genericShow
instance decodeImportMigrationTaskRequest :: Decode ImportMigrationTaskRequest where decode = genericDecode options
instance encodeImportMigrationTaskRequest :: Encode ImportMigrationTaskRequest where encode = genericEncode options

-- | Constructs ImportMigrationTaskRequest from required parameters
newImportMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> ImportMigrationTaskRequest
newImportMigrationTaskRequest _MigrationTaskName _ProgressUpdateStream = ImportMigrationTaskRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs ImportMigrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImportMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DryRun" :: NullOrUndefined (DryRun) } ) -> ImportMigrationTaskRequest
newImportMigrationTaskRequest' _MigrationTaskName _ProgressUpdateStream customize = (ImportMigrationTaskRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype ImportMigrationTaskResult = ImportMigrationTaskResult Types.NoArguments
derive instance newtypeImportMigrationTaskResult :: Newtype ImportMigrationTaskResult _
derive instance repGenericImportMigrationTaskResult :: Generic ImportMigrationTaskResult _
instance showImportMigrationTaskResult :: Show ImportMigrationTaskResult where show = genericShow
instance decodeImportMigrationTaskResult :: Decode ImportMigrationTaskResult where decode = genericDecode options
instance encodeImportMigrationTaskResult :: Encode ImportMigrationTaskResult where encode = genericEncode options



-- | <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
newtype InternalServerError = InternalServerError 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.</p>
newtype InvalidInputException = InvalidInputException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where decode = genericDecode options
instance encodeInvalidInputException :: Encode InvalidInputException where encode = genericEncode options

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype LatestResourceAttributeList = LatestResourceAttributeList (Array ResourceAttribute)
derive instance newtypeLatestResourceAttributeList :: Newtype LatestResourceAttributeList _
derive instance repGenericLatestResourceAttributeList :: Generic LatestResourceAttributeList _
instance showLatestResourceAttributeList :: Show LatestResourceAttributeList where show = genericShow
instance decodeLatestResourceAttributeList :: Decode LatestResourceAttributeList where decode = genericDecode options
instance encodeLatestResourceAttributeList :: Encode LatestResourceAttributeList where encode = genericEncode options



newtype ListCreatedArtifactsRequest = ListCreatedArtifactsRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "NextToken" :: NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined (MaxResultsCreatedArtifacts)
  }
derive instance newtypeListCreatedArtifactsRequest :: Newtype ListCreatedArtifactsRequest _
derive instance repGenericListCreatedArtifactsRequest :: Generic ListCreatedArtifactsRequest _
instance showListCreatedArtifactsRequest :: Show ListCreatedArtifactsRequest where show = genericShow
instance decodeListCreatedArtifactsRequest :: Decode ListCreatedArtifactsRequest where decode = genericDecode options
instance encodeListCreatedArtifactsRequest :: Encode ListCreatedArtifactsRequest where encode = genericEncode options

-- | Constructs ListCreatedArtifactsRequest from required parameters
newListCreatedArtifactsRequest :: MigrationTaskName -> ProgressUpdateStream -> ListCreatedArtifactsRequest
newListCreatedArtifactsRequest _MigrationTaskName _ProgressUpdateStream = ListCreatedArtifactsRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCreatedArtifactsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreatedArtifactsRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResultsCreatedArtifacts) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResultsCreatedArtifacts) } ) -> ListCreatedArtifactsRequest
newListCreatedArtifactsRequest' _MigrationTaskName _ProgressUpdateStream customize = (ListCreatedArtifactsRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListCreatedArtifactsResult = ListCreatedArtifactsResult 
  { "NextToken" :: NullOrUndefined (Token)
  , "CreatedArtifactList" :: NullOrUndefined (CreatedArtifactList)
  }
derive instance newtypeListCreatedArtifactsResult :: Newtype ListCreatedArtifactsResult _
derive instance repGenericListCreatedArtifactsResult :: Generic ListCreatedArtifactsResult _
instance showListCreatedArtifactsResult :: Show ListCreatedArtifactsResult where show = genericShow
instance decodeListCreatedArtifactsResult :: Decode ListCreatedArtifactsResult where decode = genericDecode options
instance encodeListCreatedArtifactsResult :: Encode ListCreatedArtifactsResult where encode = genericEncode options

-- | Constructs ListCreatedArtifactsResult from required parameters
newListCreatedArtifactsResult :: ListCreatedArtifactsResult
newListCreatedArtifactsResult  = ListCreatedArtifactsResult { "CreatedArtifactList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCreatedArtifactsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreatedArtifactsResult' :: ( { "NextToken" :: NullOrUndefined (Token) , "CreatedArtifactList" :: NullOrUndefined (CreatedArtifactList) } -> {"NextToken" :: NullOrUndefined (Token) , "CreatedArtifactList" :: NullOrUndefined (CreatedArtifactList) } ) -> ListCreatedArtifactsResult
newListCreatedArtifactsResult'  customize = (ListCreatedArtifactsResult <<< customize) { "CreatedArtifactList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListDiscoveredResourcesRequest = ListDiscoveredResourcesRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "NextToken" :: NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined (MaxResultsResources)
  }
derive instance newtypeListDiscoveredResourcesRequest :: Newtype ListDiscoveredResourcesRequest _
derive instance repGenericListDiscoveredResourcesRequest :: Generic ListDiscoveredResourcesRequest _
instance showListDiscoveredResourcesRequest :: Show ListDiscoveredResourcesRequest where show = genericShow
instance decodeListDiscoveredResourcesRequest :: Decode ListDiscoveredResourcesRequest where decode = genericDecode options
instance encodeListDiscoveredResourcesRequest :: Encode ListDiscoveredResourcesRequest where encode = genericEncode options

-- | Constructs ListDiscoveredResourcesRequest from required parameters
newListDiscoveredResourcesRequest :: MigrationTaskName -> ProgressUpdateStream -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest _MigrationTaskName _ProgressUpdateStream = ListDiscoveredResourcesRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResultsResources) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResultsResources) } ) -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest' _MigrationTaskName _ProgressUpdateStream customize = (ListDiscoveredResourcesRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListDiscoveredResourcesResult = ListDiscoveredResourcesResult 
  { "NextToken" :: NullOrUndefined (Token)
  , "DiscoveredResourceList" :: NullOrUndefined (DiscoveredResourceList)
  }
derive instance newtypeListDiscoveredResourcesResult :: Newtype ListDiscoveredResourcesResult _
derive instance repGenericListDiscoveredResourcesResult :: Generic ListDiscoveredResourcesResult _
instance showListDiscoveredResourcesResult :: Show ListDiscoveredResourcesResult where show = genericShow
instance decodeListDiscoveredResourcesResult :: Decode ListDiscoveredResourcesResult where decode = genericDecode options
instance encodeListDiscoveredResourcesResult :: Encode ListDiscoveredResourcesResult where encode = genericEncode options

-- | Constructs ListDiscoveredResourcesResult from required parameters
newListDiscoveredResourcesResult :: ListDiscoveredResourcesResult
newListDiscoveredResourcesResult  = ListDiscoveredResourcesResult { "DiscoveredResourceList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesResult' :: ( { "NextToken" :: NullOrUndefined (Token) , "DiscoveredResourceList" :: NullOrUndefined (DiscoveredResourceList) } -> {"NextToken" :: NullOrUndefined (Token) , "DiscoveredResourceList" :: NullOrUndefined (DiscoveredResourceList) } ) -> ListDiscoveredResourcesResult
newListDiscoveredResourcesResult'  customize = (ListDiscoveredResourcesResult <<< customize) { "DiscoveredResourceList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListMigrationTasksRequest = ListMigrationTasksRequest 
  { "NextToken" :: NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "ResourceName" :: NullOrUndefined (ResourceName)
  }
derive instance newtypeListMigrationTasksRequest :: Newtype ListMigrationTasksRequest _
derive instance repGenericListMigrationTasksRequest :: Generic ListMigrationTasksRequest _
instance showListMigrationTasksRequest :: Show ListMigrationTasksRequest where show = genericShow
instance decodeListMigrationTasksRequest :: Decode ListMigrationTasksRequest where decode = genericDecode options
instance encodeListMigrationTasksRequest :: Encode ListMigrationTasksRequest where encode = genericEncode options

-- | Constructs ListMigrationTasksRequest from required parameters
newListMigrationTasksRequest :: ListMigrationTasksRequest
newListMigrationTasksRequest  = ListMigrationTasksRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }

-- | Constructs ListMigrationTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMigrationTasksRequest' :: ( { "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResults) , "ResourceName" :: NullOrUndefined (ResourceName) } -> {"NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResults) , "ResourceName" :: NullOrUndefined (ResourceName) } ) -> ListMigrationTasksRequest
newListMigrationTasksRequest'  customize = (ListMigrationTasksRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }



newtype ListMigrationTasksResult = ListMigrationTasksResult 
  { "NextToken" :: NullOrUndefined (Token)
  , "MigrationTaskSummaryList" :: NullOrUndefined (MigrationTaskSummaryList)
  }
derive instance newtypeListMigrationTasksResult :: Newtype ListMigrationTasksResult _
derive instance repGenericListMigrationTasksResult :: Generic ListMigrationTasksResult _
instance showListMigrationTasksResult :: Show ListMigrationTasksResult where show = genericShow
instance decodeListMigrationTasksResult :: Decode ListMigrationTasksResult where decode = genericDecode options
instance encodeListMigrationTasksResult :: Encode ListMigrationTasksResult where encode = genericEncode options

-- | Constructs ListMigrationTasksResult from required parameters
newListMigrationTasksResult :: ListMigrationTasksResult
newListMigrationTasksResult  = ListMigrationTasksResult { "MigrationTaskSummaryList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListMigrationTasksResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMigrationTasksResult' :: ( { "NextToken" :: NullOrUndefined (Token) , "MigrationTaskSummaryList" :: NullOrUndefined (MigrationTaskSummaryList) } -> {"NextToken" :: NullOrUndefined (Token) , "MigrationTaskSummaryList" :: NullOrUndefined (MigrationTaskSummaryList) } ) -> ListMigrationTasksResult
newListMigrationTasksResult'  customize = (ListMigrationTasksResult <<< customize) { "MigrationTaskSummaryList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProgressUpdateStreamsRequest = ListProgressUpdateStreamsRequest 
  { "NextToken" :: NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }
derive instance newtypeListProgressUpdateStreamsRequest :: Newtype ListProgressUpdateStreamsRequest _
derive instance repGenericListProgressUpdateStreamsRequest :: Generic ListProgressUpdateStreamsRequest _
instance showListProgressUpdateStreamsRequest :: Show ListProgressUpdateStreamsRequest where show = genericShow
instance decodeListProgressUpdateStreamsRequest :: Decode ListProgressUpdateStreamsRequest where decode = genericDecode options
instance encodeListProgressUpdateStreamsRequest :: Encode ListProgressUpdateStreamsRequest where encode = genericEncode options

-- | Constructs ListProgressUpdateStreamsRequest from required parameters
newListProgressUpdateStreamsRequest :: ListProgressUpdateStreamsRequest
newListProgressUpdateStreamsRequest  = ListProgressUpdateStreamsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListProgressUpdateStreamsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProgressUpdateStreamsRequest' :: ( { "NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined (MaxResults) } ) -> ListProgressUpdateStreamsRequest
newListProgressUpdateStreamsRequest'  customize = (ListProgressUpdateStreamsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProgressUpdateStreamsResult = ListProgressUpdateStreamsResult 
  { "ProgressUpdateStreamSummaryList" :: NullOrUndefined (ProgressUpdateStreamSummaryList)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeListProgressUpdateStreamsResult :: Newtype ListProgressUpdateStreamsResult _
derive instance repGenericListProgressUpdateStreamsResult :: Generic ListProgressUpdateStreamsResult _
instance showListProgressUpdateStreamsResult :: Show ListProgressUpdateStreamsResult where show = genericShow
instance decodeListProgressUpdateStreamsResult :: Decode ListProgressUpdateStreamsResult where decode = genericDecode options
instance encodeListProgressUpdateStreamsResult :: Encode ListProgressUpdateStreamsResult where encode = genericEncode options

-- | Constructs ListProgressUpdateStreamsResult from required parameters
newListProgressUpdateStreamsResult :: ListProgressUpdateStreamsResult
newListProgressUpdateStreamsResult  = ListProgressUpdateStreamsResult { "NextToken": (NullOrUndefined Nothing), "ProgressUpdateStreamSummaryList": (NullOrUndefined Nothing) }

-- | Constructs ListProgressUpdateStreamsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProgressUpdateStreamsResult' :: ( { "ProgressUpdateStreamSummaryList" :: NullOrUndefined (ProgressUpdateStreamSummaryList) , "NextToken" :: NullOrUndefined (Token) } -> {"ProgressUpdateStreamSummaryList" :: NullOrUndefined (ProgressUpdateStreamSummaryList) , "NextToken" :: NullOrUndefined (Token) } ) -> ListProgressUpdateStreamsResult
newListProgressUpdateStreamsResult'  customize = (ListProgressUpdateStreamsResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "ProgressUpdateStreamSummaryList": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MaxResultsCreatedArtifacts = MaxResultsCreatedArtifacts Int
derive instance newtypeMaxResultsCreatedArtifacts :: Newtype MaxResultsCreatedArtifacts _
derive instance repGenericMaxResultsCreatedArtifacts :: Generic MaxResultsCreatedArtifacts _
instance showMaxResultsCreatedArtifacts :: Show MaxResultsCreatedArtifacts where show = genericShow
instance decodeMaxResultsCreatedArtifacts :: Decode MaxResultsCreatedArtifacts where decode = genericDecode options
instance encodeMaxResultsCreatedArtifacts :: Encode MaxResultsCreatedArtifacts where encode = genericEncode options



newtype MaxResultsResources = MaxResultsResources Int
derive instance newtypeMaxResultsResources :: Newtype MaxResultsResources _
derive instance repGenericMaxResultsResources :: Generic MaxResultsResources _
instance showMaxResultsResources :: Show MaxResultsResources where show = genericShow
instance decodeMaxResultsResources :: Decode MaxResultsResources where decode = genericDecode options
instance encodeMaxResultsResources :: Encode MaxResultsResources where encode = genericEncode options



-- | <p>Represents a migration task in a migration tool.</p>
newtype MigrationTask = MigrationTask 
  { "ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream)
  , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName)
  , "Task" :: NullOrUndefined (Task)
  , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime)
  , "ResourceAttributeList" :: NullOrUndefined (LatestResourceAttributeList)
  }
derive instance newtypeMigrationTask :: Newtype MigrationTask _
derive instance repGenericMigrationTask :: Generic MigrationTask _
instance showMigrationTask :: Show MigrationTask where show = genericShow
instance decodeMigrationTask :: Decode MigrationTask where decode = genericDecode options
instance encodeMigrationTask :: Encode MigrationTask where encode = genericEncode options

-- | Constructs MigrationTask from required parameters
newMigrationTask :: MigrationTask
newMigrationTask  = MigrationTask { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "ResourceAttributeList": (NullOrUndefined Nothing), "Task": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }

-- | Constructs MigrationTask's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMigrationTask' :: ( { "ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName) , "Task" :: NullOrUndefined (Task) , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime) , "ResourceAttributeList" :: NullOrUndefined (LatestResourceAttributeList) } -> {"ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName) , "Task" :: NullOrUndefined (Task) , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime) , "ResourceAttributeList" :: NullOrUndefined (LatestResourceAttributeList) } ) -> MigrationTask
newMigrationTask'  customize = (MigrationTask <<< customize) { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "ResourceAttributeList": (NullOrUndefined Nothing), "Task": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }



newtype MigrationTaskName = MigrationTaskName String
derive instance newtypeMigrationTaskName :: Newtype MigrationTaskName _
derive instance repGenericMigrationTaskName :: Generic MigrationTaskName _
instance showMigrationTaskName :: Show MigrationTaskName where show = genericShow
instance decodeMigrationTaskName :: Decode MigrationTaskName where decode = genericDecode options
instance encodeMigrationTaskName :: Encode MigrationTaskName where encode = genericEncode options



-- | <p>MigrationTaskSummary includes <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and <code>UpdateDateTime</code> for each task.</p>
newtype MigrationTaskSummary = MigrationTaskSummary 
  { "ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream)
  , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName)
  , "Status" :: NullOrUndefined (Status)
  , "ProgressPercent" :: NullOrUndefined (ProgressPercent)
  , "StatusDetail" :: NullOrUndefined (StatusDetail)
  , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime)
  }
derive instance newtypeMigrationTaskSummary :: Newtype MigrationTaskSummary _
derive instance repGenericMigrationTaskSummary :: Generic MigrationTaskSummary _
instance showMigrationTaskSummary :: Show MigrationTaskSummary where show = genericShow
instance decodeMigrationTaskSummary :: Decode MigrationTaskSummary where decode = genericDecode options
instance encodeMigrationTaskSummary :: Encode MigrationTaskSummary where encode = genericEncode options

-- | Constructs MigrationTaskSummary from required parameters
newMigrationTaskSummary :: MigrationTaskSummary
newMigrationTaskSummary  = MigrationTaskSummary { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressPercent": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }

-- | Constructs MigrationTaskSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMigrationTaskSummary' :: ( { "ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName) , "Status" :: NullOrUndefined (Status) , "ProgressPercent" :: NullOrUndefined (ProgressPercent) , "StatusDetail" :: NullOrUndefined (StatusDetail) , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime) } -> {"ProgressUpdateStream" :: NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined (MigrationTaskName) , "Status" :: NullOrUndefined (Status) , "ProgressPercent" :: NullOrUndefined (ProgressPercent) , "StatusDetail" :: NullOrUndefined (StatusDetail) , "UpdateDateTime" :: NullOrUndefined (UpdateDateTime) } ) -> MigrationTaskSummary
newMigrationTaskSummary'  customize = (MigrationTaskSummary <<< customize) { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressPercent": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }



newtype MigrationTaskSummaryList = MigrationTaskSummaryList (Array MigrationTaskSummary)
derive instance newtypeMigrationTaskSummaryList :: Newtype MigrationTaskSummaryList _
derive instance repGenericMigrationTaskSummaryList :: Generic MigrationTaskSummaryList _
instance showMigrationTaskSummaryList :: Show MigrationTaskSummaryList where show = genericShow
instance decodeMigrationTaskSummaryList :: Decode MigrationTaskSummaryList where decode = genericDecode options
instance encodeMigrationTaskSummaryList :: Encode MigrationTaskSummaryList where encode = genericEncode options



newtype NextUpdateSeconds = NextUpdateSeconds Int
derive instance newtypeNextUpdateSeconds :: Newtype NextUpdateSeconds _
derive instance repGenericNextUpdateSeconds :: Generic NextUpdateSeconds _
instance showNextUpdateSeconds :: Show NextUpdateSeconds where show = genericShow
instance decodeNextUpdateSeconds :: Decode NextUpdateSeconds where decode = genericDecode options
instance encodeNextUpdateSeconds :: Encode NextUpdateSeconds where encode = genericEncode options



newtype NotifyApplicationStateRequest = NotifyApplicationStateRequest 
  { "ApplicationId" :: (ApplicationId)
  , "Status" :: (ApplicationStatus)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeNotifyApplicationStateRequest :: Newtype NotifyApplicationStateRequest _
derive instance repGenericNotifyApplicationStateRequest :: Generic NotifyApplicationStateRequest _
instance showNotifyApplicationStateRequest :: Show NotifyApplicationStateRequest where show = genericShow
instance decodeNotifyApplicationStateRequest :: Decode NotifyApplicationStateRequest where decode = genericDecode options
instance encodeNotifyApplicationStateRequest :: Encode NotifyApplicationStateRequest where encode = genericEncode options

-- | Constructs NotifyApplicationStateRequest from required parameters
newNotifyApplicationStateRequest :: ApplicationId -> ApplicationStatus -> NotifyApplicationStateRequest
newNotifyApplicationStateRequest _ApplicationId _Status = NotifyApplicationStateRequest { "ApplicationId": _ApplicationId, "Status": _Status, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs NotifyApplicationStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyApplicationStateRequest' :: ApplicationId -> ApplicationStatus -> ( { "ApplicationId" :: (ApplicationId) , "Status" :: (ApplicationStatus) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ApplicationId" :: (ApplicationId) , "Status" :: (ApplicationStatus) , "DryRun" :: NullOrUndefined (DryRun) } ) -> NotifyApplicationStateRequest
newNotifyApplicationStateRequest' _ApplicationId _Status customize = (NotifyApplicationStateRequest <<< customize) { "ApplicationId": _ApplicationId, "Status": _Status, "DryRun": (NullOrUndefined Nothing) }



newtype NotifyApplicationStateResult = NotifyApplicationStateResult Types.NoArguments
derive instance newtypeNotifyApplicationStateResult :: Newtype NotifyApplicationStateResult _
derive instance repGenericNotifyApplicationStateResult :: Generic NotifyApplicationStateResult _
instance showNotifyApplicationStateResult :: Show NotifyApplicationStateResult where show = genericShow
instance decodeNotifyApplicationStateResult :: Decode NotifyApplicationStateResult where decode = genericDecode options
instance encodeNotifyApplicationStateResult :: Encode NotifyApplicationStateResult where encode = genericEncode options



newtype NotifyMigrationTaskStateRequest = NotifyMigrationTaskStateRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "Task" :: (Task)
  , "UpdateDateTime" :: (UpdateDateTime)
  , "NextUpdateSeconds" :: (NextUpdateSeconds)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypeNotifyMigrationTaskStateRequest :: Newtype NotifyMigrationTaskStateRequest _
derive instance repGenericNotifyMigrationTaskStateRequest :: Generic NotifyMigrationTaskStateRequest _
instance showNotifyMigrationTaskStateRequest :: Show NotifyMigrationTaskStateRequest where show = genericShow
instance decodeNotifyMigrationTaskStateRequest :: Decode NotifyMigrationTaskStateRequest where decode = genericDecode options
instance encodeNotifyMigrationTaskStateRequest :: Encode NotifyMigrationTaskStateRequest where encode = genericEncode options

-- | Constructs NotifyMigrationTaskStateRequest from required parameters
newNotifyMigrationTaskStateRequest :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> NotifyMigrationTaskStateRequest
newNotifyMigrationTaskStateRequest _MigrationTaskName _NextUpdateSeconds _ProgressUpdateStream _Task _UpdateDateTime = NotifyMigrationTaskStateRequest { "MigrationTaskName": _MigrationTaskName, "NextUpdateSeconds": _NextUpdateSeconds, "ProgressUpdateStream": _ProgressUpdateStream, "Task": _Task, "UpdateDateTime": _UpdateDateTime, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs NotifyMigrationTaskStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyMigrationTaskStateRequest' :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "Task" :: (Task) , "UpdateDateTime" :: (UpdateDateTime) , "NextUpdateSeconds" :: (NextUpdateSeconds) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "Task" :: (Task) , "UpdateDateTime" :: (UpdateDateTime) , "NextUpdateSeconds" :: (NextUpdateSeconds) , "DryRun" :: NullOrUndefined (DryRun) } ) -> NotifyMigrationTaskStateRequest
newNotifyMigrationTaskStateRequest' _MigrationTaskName _NextUpdateSeconds _ProgressUpdateStream _Task _UpdateDateTime customize = (NotifyMigrationTaskStateRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "NextUpdateSeconds": _NextUpdateSeconds, "ProgressUpdateStream": _ProgressUpdateStream, "Task": _Task, "UpdateDateTime": _UpdateDateTime, "DryRun": (NullOrUndefined Nothing) }



newtype NotifyMigrationTaskStateResult = NotifyMigrationTaskStateResult Types.NoArguments
derive instance newtypeNotifyMigrationTaskStateResult :: Newtype NotifyMigrationTaskStateResult _
derive instance repGenericNotifyMigrationTaskStateResult :: Generic NotifyMigrationTaskStateResult _
instance showNotifyMigrationTaskStateResult :: Show NotifyMigrationTaskStateResult where show = genericShow
instance decodeNotifyMigrationTaskStateResult :: Decode NotifyMigrationTaskStateResult where decode = genericDecode options
instance encodeNotifyMigrationTaskStateResult :: Encode NotifyMigrationTaskStateResult where encode = genericEncode options



-- | <p>Exception raised when there are problems accessing ADS (Application Discovery Service); most likely due to a misconfigured policy or the <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>
newtype PolicyErrorException = PolicyErrorException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypePolicyErrorException :: Newtype PolicyErrorException _
derive instance repGenericPolicyErrorException :: Generic PolicyErrorException _
instance showPolicyErrorException :: Show PolicyErrorException where show = genericShow
instance decodePolicyErrorException :: Decode PolicyErrorException where decode = genericDecode options
instance encodePolicyErrorException :: Encode PolicyErrorException where encode = genericEncode options

-- | Constructs PolicyErrorException from required parameters
newPolicyErrorException :: PolicyErrorException
newPolicyErrorException  = PolicyErrorException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyErrorException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> PolicyErrorException
newPolicyErrorException'  customize = (PolicyErrorException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ProgressPercent = ProgressPercent Int
derive instance newtypeProgressPercent :: Newtype ProgressPercent _
derive instance repGenericProgressPercent :: Generic ProgressPercent _
instance showProgressPercent :: Show ProgressPercent where show = genericShow
instance decodeProgressPercent :: Decode ProgressPercent where decode = genericDecode options
instance encodeProgressPercent :: Encode ProgressPercent where encode = genericEncode options



newtype ProgressUpdateStream = ProgressUpdateStream String
derive instance newtypeProgressUpdateStream :: Newtype ProgressUpdateStream _
derive instance repGenericProgressUpdateStream :: Generic ProgressUpdateStream _
instance showProgressUpdateStream :: Show ProgressUpdateStream where show = genericShow
instance decodeProgressUpdateStream :: Decode ProgressUpdateStream where decode = genericDecode options
instance encodeProgressUpdateStream :: Encode ProgressUpdateStream where encode = genericEncode options



-- | <p>Summary of the AWS resource used for access control that is implicitly linked to your AWS account.</p>
newtype ProgressUpdateStreamSummary = ProgressUpdateStreamSummary 
  { "ProgressUpdateStreamName" :: NullOrUndefined (ProgressUpdateStream)
  }
derive instance newtypeProgressUpdateStreamSummary :: Newtype ProgressUpdateStreamSummary _
derive instance repGenericProgressUpdateStreamSummary :: Generic ProgressUpdateStreamSummary _
instance showProgressUpdateStreamSummary :: Show ProgressUpdateStreamSummary where show = genericShow
instance decodeProgressUpdateStreamSummary :: Decode ProgressUpdateStreamSummary where decode = genericDecode options
instance encodeProgressUpdateStreamSummary :: Encode ProgressUpdateStreamSummary where encode = genericEncode options

-- | Constructs ProgressUpdateStreamSummary from required parameters
newProgressUpdateStreamSummary :: ProgressUpdateStreamSummary
newProgressUpdateStreamSummary  = ProgressUpdateStreamSummary { "ProgressUpdateStreamName": (NullOrUndefined Nothing) }

-- | Constructs ProgressUpdateStreamSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProgressUpdateStreamSummary' :: ( { "ProgressUpdateStreamName" :: NullOrUndefined (ProgressUpdateStream) } -> {"ProgressUpdateStreamName" :: NullOrUndefined (ProgressUpdateStream) } ) -> ProgressUpdateStreamSummary
newProgressUpdateStreamSummary'  customize = (ProgressUpdateStreamSummary <<< customize) { "ProgressUpdateStreamName": (NullOrUndefined Nothing) }



newtype ProgressUpdateStreamSummaryList = ProgressUpdateStreamSummaryList (Array ProgressUpdateStreamSummary)
derive instance newtypeProgressUpdateStreamSummaryList :: Newtype ProgressUpdateStreamSummaryList _
derive instance repGenericProgressUpdateStreamSummaryList :: Generic ProgressUpdateStreamSummaryList _
instance showProgressUpdateStreamSummaryList :: Show ProgressUpdateStreamSummaryList where show = genericShow
instance decodeProgressUpdateStreamSummaryList :: Decode ProgressUpdateStreamSummaryList where decode = genericDecode options
instance encodeProgressUpdateStreamSummaryList :: Encode ProgressUpdateStreamSummaryList where encode = genericEncode options



newtype PutResourceAttributesRequest = PutResourceAttributesRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "ResourceAttributeList" :: (ResourceAttributeList)
  , "DryRun" :: NullOrUndefined (DryRun)
  }
derive instance newtypePutResourceAttributesRequest :: Newtype PutResourceAttributesRequest _
derive instance repGenericPutResourceAttributesRequest :: Generic PutResourceAttributesRequest _
instance showPutResourceAttributesRequest :: Show PutResourceAttributesRequest where show = genericShow
instance decodePutResourceAttributesRequest :: Decode PutResourceAttributesRequest where decode = genericDecode options
instance encodePutResourceAttributesRequest :: Encode PutResourceAttributesRequest where encode = genericEncode options

-- | Constructs PutResourceAttributesRequest from required parameters
newPutResourceAttributesRequest :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> PutResourceAttributesRequest
newPutResourceAttributesRequest _MigrationTaskName _ProgressUpdateStream _ResourceAttributeList = PutResourceAttributesRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "ResourceAttributeList": _ResourceAttributeList, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs PutResourceAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutResourceAttributesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ResourceAttributeList" :: (ResourceAttributeList) , "DryRun" :: NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ResourceAttributeList" :: (ResourceAttributeList) , "DryRun" :: NullOrUndefined (DryRun) } ) -> PutResourceAttributesRequest
newPutResourceAttributesRequest' _MigrationTaskName _ProgressUpdateStream _ResourceAttributeList customize = (PutResourceAttributesRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "ResourceAttributeList": _ResourceAttributeList, "DryRun": (NullOrUndefined Nothing) }



newtype PutResourceAttributesResult = PutResourceAttributesResult Types.NoArguments
derive instance newtypePutResourceAttributesResult :: Newtype PutResourceAttributesResult _
derive instance repGenericPutResourceAttributesResult :: Generic PutResourceAttributesResult _
instance showPutResourceAttributesResult :: Show PutResourceAttributesResult where show = genericShow
instance decodePutResourceAttributesResult :: Decode PutResourceAttributesResult where decode = genericDecode options
instance encodePutResourceAttributesResult :: Encode PutResourceAttributesResult where encode = genericEncode options



-- | <p>Attribute associated with a resource.</p> <p>Note the corresponding format required per type listed below:</p> <dl> <dt>IPV4</dt> <dd> <p> <code>x.x.x.x</code> </p> <p> <i>where x is an integer in the range [0,255]</i> </p> </dd> <dt>IPV6</dt> <dd> <p> <code>y : y : y : y : y : y : y : y</code> </p> <p> <i>where y is a hexadecimal between 0 and FFFF. [0, FFFF]</i> </p> </dd> <dt>MAC_ADDRESS</dt> <dd> <p> <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code> </p> </dd> <dt>FQDN</dt> <dd> <p> <code>^[^&lt;&gt;{}\\\\/?,=\\p{Cntrl}]{1,256}$</code> </p> </dd> </dl>
newtype ResourceAttribute = ResourceAttribute 
  { "Type" :: (ResourceAttributeType)
  , "Value" :: (ResourceAttributeValue)
  }
derive instance newtypeResourceAttribute :: Newtype ResourceAttribute _
derive instance repGenericResourceAttribute :: Generic ResourceAttribute _
instance showResourceAttribute :: Show ResourceAttribute where show = genericShow
instance decodeResourceAttribute :: Decode ResourceAttribute where decode = genericDecode options
instance encodeResourceAttribute :: Encode ResourceAttribute where encode = genericEncode options

-- | Constructs ResourceAttribute from required parameters
newResourceAttribute :: ResourceAttributeType -> ResourceAttributeValue -> ResourceAttribute
newResourceAttribute _Type _Value = ResourceAttribute { "Type": _Type, "Value": _Value }

-- | Constructs ResourceAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAttribute' :: ResourceAttributeType -> ResourceAttributeValue -> ( { "Type" :: (ResourceAttributeType) , "Value" :: (ResourceAttributeValue) } -> {"Type" :: (ResourceAttributeType) , "Value" :: (ResourceAttributeValue) } ) -> ResourceAttribute
newResourceAttribute' _Type _Value customize = (ResourceAttribute <<< customize) { "Type": _Type, "Value": _Value }



newtype ResourceAttributeList = ResourceAttributeList (Array ResourceAttribute)
derive instance newtypeResourceAttributeList :: Newtype ResourceAttributeList _
derive instance repGenericResourceAttributeList :: Generic ResourceAttributeList _
instance showResourceAttributeList :: Show ResourceAttributeList where show = genericShow
instance decodeResourceAttributeList :: Decode ResourceAttributeList where decode = genericDecode options
instance encodeResourceAttributeList :: Encode ResourceAttributeList where encode = genericEncode options



newtype ResourceAttributeType = ResourceAttributeType String
derive instance newtypeResourceAttributeType :: Newtype ResourceAttributeType _
derive instance repGenericResourceAttributeType :: Generic ResourceAttributeType _
instance showResourceAttributeType :: Show ResourceAttributeType where show = genericShow
instance decodeResourceAttributeType :: Decode ResourceAttributeType where decode = genericDecode options
instance encodeResourceAttributeType :: Encode ResourceAttributeType where encode = genericEncode options



newtype ResourceAttributeValue = ResourceAttributeValue String
derive instance newtypeResourceAttributeValue :: Newtype ResourceAttributeValue _
derive instance repGenericResourceAttributeValue :: Generic ResourceAttributeValue _
instance showResourceAttributeValue :: Show ResourceAttributeValue where show = genericShow
instance decodeResourceAttributeValue :: Decode ResourceAttributeValue where decode = genericDecode options
instance encodeResourceAttributeValue :: Encode ResourceAttributeValue where encode = genericEncode options



newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where show = genericShow
instance decodeResourceName :: Decode ResourceName where decode = genericDecode options
instance encodeResourceName :: Encode ResourceName where encode = genericEncode options



-- | <p>Exception raised when the request references a resource (ADS configuration, update stream, migration task, etc.) that does not exist in ADS (Application Discovery Service) or in Migration Hub's repository.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Status = Status String
derive instance newtypeStatus :: Newtype Status _
derive instance repGenericStatus :: Generic Status _
instance showStatus :: Show Status where show = genericShow
instance decodeStatus :: Decode Status where decode = genericDecode options
instance encodeStatus :: Encode Status where encode = genericEncode options



newtype StatusDetail = StatusDetail String
derive instance newtypeStatusDetail :: Newtype StatusDetail _
derive instance repGenericStatusDetail :: Generic StatusDetail _
instance showStatusDetail :: Show StatusDetail where show = genericShow
instance decodeStatusDetail :: Decode StatusDetail where decode = genericDecode options
instance encodeStatusDetail :: Encode StatusDetail where encode = genericEncode options



-- | <p>Task object encapsulating task information.</p>
newtype Task = Task 
  { "Status" :: (Status)
  , "StatusDetail" :: NullOrUndefined (StatusDetail)
  , "ProgressPercent" :: NullOrUndefined (ProgressPercent)
  }
derive instance newtypeTask :: Newtype Task _
derive instance repGenericTask :: Generic Task _
instance showTask :: Show Task where show = genericShow
instance decodeTask :: Decode Task where decode = genericDecode options
instance encodeTask :: Encode Task where encode = genericEncode options

-- | Constructs Task from required parameters
newTask :: Status -> Task
newTask _Status = Task { "Status": _Status, "ProgressPercent": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing) }

-- | Constructs Task's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTask' :: Status -> ( { "Status" :: (Status) , "StatusDetail" :: NullOrUndefined (StatusDetail) , "ProgressPercent" :: NullOrUndefined (ProgressPercent) } -> {"Status" :: (Status) , "StatusDetail" :: NullOrUndefined (StatusDetail) , "ProgressPercent" :: NullOrUndefined (ProgressPercent) } ) -> Task
newTask' _Status customize = (Task <<< customize) { "Status": _Status, "ProgressPercent": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing) }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where show = genericShow
instance decodeToken :: Decode Token where decode = genericDecode options
instance encodeToken :: Encode Token where encode = genericEncode options



-- | <p>Exception raised to indicate a request was not authorized when the <code>DryRun</code> flag is set to "true".</p>
newtype UnauthorizedOperation = UnauthorizedOperation 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnauthorizedOperation :: Newtype UnauthorizedOperation _
derive instance repGenericUnauthorizedOperation :: Generic UnauthorizedOperation _
instance showUnauthorizedOperation :: Show UnauthorizedOperation where show = genericShow
instance decodeUnauthorizedOperation :: Decode UnauthorizedOperation where decode = genericDecode options
instance encodeUnauthorizedOperation :: Encode UnauthorizedOperation where encode = genericEncode options

-- | Constructs UnauthorizedOperation from required parameters
newUnauthorizedOperation :: UnauthorizedOperation
newUnauthorizedOperation  = UnauthorizedOperation { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedOperation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedOperation' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> UnauthorizedOperation
newUnauthorizedOperation'  customize = (UnauthorizedOperation <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype UpdateDateTime = UpdateDateTime Types.Timestamp
derive instance newtypeUpdateDateTime :: Newtype UpdateDateTime _
derive instance repGenericUpdateDateTime :: Generic UpdateDateTime _
instance showUpdateDateTime :: Show UpdateDateTime where show = genericShow
instance decodeUpdateDateTime :: Decode UpdateDateTime where decode = genericDecode options
instance encodeUpdateDateTime :: Encode UpdateDateTime where encode = genericEncode options

