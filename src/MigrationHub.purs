

-- | <p>The AWS Migration Hub API methods help to obtain server and application migration status and integrate your resource-specific migration tool by providing a programmatic interface to Migration Hub. </p>
module AWS.MigrationHub where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:</p> <ul> <li> <p>Migration tools can call the <code>AssociateCreatedArtifact</code> operation to indicate which AWS artifact is associated with a migration task.</p> </li> <li> <p>The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p> </li> <li> <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.</p> </li> </ul>
associateCreatedArtifact :: forall eff. AssociateCreatedArtifactRequest -> Aff (exception :: EXCEPTION | eff) AssociateCreatedArtifactResult
associateCreatedArtifact = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "associateCreatedArtifact"


-- | <p>Associates a discovered resource ID from Application Discovery Service (ADS) with a migration task.</p>
associateDiscoveredResource :: forall eff. AssociateDiscoveredResourceRequest -> Aff (exception :: EXCEPTION | eff) AssociateDiscoveredResourceResult
associateDiscoveredResource = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "associateDiscoveredResource"


-- | <p>Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.</p>
createProgressUpdateStream :: forall eff. CreateProgressUpdateStreamRequest -> Aff (exception :: EXCEPTION | eff) CreateProgressUpdateStreamResult
createProgressUpdateStream = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "createProgressUpdateStream"


-- | <p>Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:</p> <ul> <li> <p>The only parameter needed for <code>DeleteProgressUpdateStream</code> is the stream name (same as a <code>CreateProgressUpdateStream</code> call).</p> </li> <li> <p>The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).</p> </li> <li> <p>If the stream takes time to be deleted, it might still show up on a <code>ListProgressUpdateStreams</code> call.</p> </li> <li> <p> <code>CreateProgressUpdateStream</code>, <code>ImportMigrationTask</code>, <code>NotifyMigrationTaskState</code>, and all Associate[*] APIs realted to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.</p> </li> <li> <p>Once the stream and all of its resources are deleted, <code>CreateProgressUpdateStream</code> for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).</p> </li> </ul>
deleteProgressUpdateStream :: forall eff. DeleteProgressUpdateStreamRequest -> Aff (exception :: EXCEPTION | eff) DeleteProgressUpdateStreamResult
deleteProgressUpdateStream = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "deleteProgressUpdateStream"


-- | <p>Gets the migration status of an application.</p>
describeApplicationState :: forall eff. DescribeApplicationStateRequest -> Aff (exception :: EXCEPTION | eff) DescribeApplicationStateResult
describeApplicationState = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "describeApplicationState"


-- | <p>Retrieves a list of all attributes associated with a specific migration task.</p>
describeMigrationTask :: forall eff. DescribeMigrationTaskRequest -> Aff (exception :: EXCEPTION | eff) DescribeMigrationTaskResult
describeMigrationTask = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "describeMigrationTask"


-- | <p>Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:</p> <ul> <li> <p>A migration user can call the <code>DisassociateCreatedArtifacts</code> operation to disassociate a created AWS Artifact from a migration task.</p> </li> <li> <p>The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p> </li> <li> <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.</p> </li> </ul>
disassociateCreatedArtifact :: forall eff. DisassociateCreatedArtifactRequest -> Aff (exception :: EXCEPTION | eff) DisassociateCreatedArtifactResult
disassociateCreatedArtifact = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "disassociateCreatedArtifact"


-- | <p>Disassociate an Application Discovery Service (ADS) discovered resource from a migration task.</p>
disassociateDiscoveredResource :: forall eff. DisassociateDiscoveredResourceRequest -> Aff (exception :: EXCEPTION | eff) DisassociateDiscoveredResourceResult
disassociateDiscoveredResource = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "disassociateDiscoveredResource"


-- | <p>Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool.</p> <p>This API is a prerequisite to calling the <code>NotifyMigrationTaskState</code> API as the migration tool must first register the migration task with Migration Hub.</p>
importMigrationTask :: forall eff. ImportMigrationTaskRequest -> Aff (exception :: EXCEPTION | eff) ImportMigrationTaskResult
importMigrationTask = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "importMigrationTask"


-- | <p>Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:</p> <ul> <li> <p>Gets the list of the created artifacts while migration is taking place.</p> </li> <li> <p>Shows the artifacts created by the migration tool that was associated by the <code>AssociateCreatedArtifact</code> API. </p> </li> <li> <p>Lists created artifacts in a paginated interface. </p> </li> </ul>
listCreatedArtifacts :: forall eff. ListCreatedArtifactsRequest -> Aff (exception :: EXCEPTION | eff) ListCreatedArtifactsResult
listCreatedArtifacts = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "listCreatedArtifacts"


-- | <p>Lists discovered resources associated with the given <code>MigrationTask</code>.</p>
listDiscoveredResources :: forall eff. ListDiscoveredResourcesRequest -> Aff (exception :: EXCEPTION | eff) ListDiscoveredResourcesResult
listDiscoveredResources = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "listDiscoveredResources"


-- | <p>Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:</p> <ul> <li> <p>Can show a summary list of the most recent migration tasks.</p> </li> <li> <p>Can show a summary list of migration tasks associated with a given discovered resource.</p> </li> <li> <p>Lists migration tasks in a paginated interface.</p> </li> </ul>
listMigrationTasks :: forall eff. ListMigrationTasksRequest -> Aff (exception :: EXCEPTION | eff) ListMigrationTasksResult
listMigrationTasks = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "listMigrationTasks"


-- | <p>Lists progress update streams associated with the user account making this call.</p>
listProgressUpdateStreams :: forall eff. ListProgressUpdateStreamsRequest -> Aff (exception :: EXCEPTION | eff) ListProgressUpdateStreamsResult
listProgressUpdateStreams = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "listProgressUpdateStreams"


-- | <p>Sets the migration state of an application. For a given application identified by the value passed to <code>ApplicationId</code>, its status is set or updated by passing one of three values to <code>Status</code>: <code>NOT_STARTED | IN_PROGRESS | COMPLETED</code>.</p>
notifyApplicationState :: forall eff. NotifyApplicationStateRequest -> Aff (exception :: EXCEPTION | eff) NotifyApplicationStateResult
notifyApplicationState = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "notifyApplicationState"


-- | <p>Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:</p> <ul> <li> <p>Migration tools will call the <code>NotifyMigrationTaskState</code> API to share the latest progress and status.</p> </li> <li> <p> <code>MigrationTaskName</code> is used for addressing updates to the correct target.</p> </li> <li> <p> <code>ProgressUpdateStream</code> is used for access control and to provide a namespace for each migration tool.</p> </li> </ul>
notifyMigrationTaskState :: forall eff. NotifyMigrationTaskStateRequest -> Aff (exception :: EXCEPTION | eff) NotifyMigrationTaskStateResult
notifyMigrationTaskState = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "notifyMigrationTaskState"


-- | <p>Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository. This association occurs asynchronously after <code>PutResourceAttributes</code> returns.</p> <important> <ul> <li> <p>Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to <i>add</i> an IP address, it will then be required to call it with <i>both</i> the IP and MAC addresses to prevent overiding the MAC address.</p> </li> <li> <p>Note the instructions regarding the special use case of the <code>ResourceAttributeList</code> parameter when specifying any "VM" related value.</p> </li> </ul> </important> <note> <p>Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call <code>ListDiscoveredResources</code>.</p> </note>
putResourceAttributes :: forall eff. PutResourceAttributesRequest -> Aff (exception :: EXCEPTION | eff) PutResourceAttributesResult
putResourceAttributes = Request.request service method  where
    service = Request.ServiceName "MigrationHub"
    method = Request.MethodName "putResourceAttributes"


-- | <p>You do not have sufficient access to perform this action.</p>
newtype AccessDeniedException = AccessDeniedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where
  show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessDeniedException :: Encode AccessDeniedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessDeniedException from required parameters
newAccessDeniedException :: AccessDeniedException
newAccessDeniedException  = AccessDeniedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> AccessDeniedException
newAccessDeniedException'  customize = (AccessDeniedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ApplicationId = ApplicationId String
derive instance newtypeApplicationId :: Newtype ApplicationId _
derive instance repGenericApplicationId :: Generic ApplicationId _
instance showApplicationId :: Show ApplicationId where
  show = genericShow
instance decodeApplicationId :: Decode ApplicationId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationId :: Encode ApplicationId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ApplicationStatus = ApplicationStatus String
derive instance newtypeApplicationStatus :: Newtype ApplicationStatus _
derive instance repGenericApplicationStatus :: Generic ApplicationStatus _
instance showApplicationStatus :: Show ApplicationStatus where
  show = genericShow
instance decodeApplicationStatus :: Decode ApplicationStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationStatus :: Encode ApplicationStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssociateCreatedArtifactRequest = AssociateCreatedArtifactRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "CreatedArtifact" :: (CreatedArtifact)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeAssociateCreatedArtifactRequest :: Newtype AssociateCreatedArtifactRequest _
derive instance repGenericAssociateCreatedArtifactRequest :: Generic AssociateCreatedArtifactRequest _
instance showAssociateCreatedArtifactRequest :: Show AssociateCreatedArtifactRequest where
  show = genericShow
instance decodeAssociateCreatedArtifactRequest :: Decode AssociateCreatedArtifactRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateCreatedArtifactRequest :: Encode AssociateCreatedArtifactRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssociateCreatedArtifactRequest from required parameters
newAssociateCreatedArtifactRequest :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> AssociateCreatedArtifactRequest
newAssociateCreatedArtifactRequest _CreatedArtifact _MigrationTaskName _ProgressUpdateStream = AssociateCreatedArtifactRequest { "CreatedArtifact": _CreatedArtifact, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs AssociateCreatedArtifactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateCreatedArtifactRequest' :: CreatedArtifact -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifact" :: (CreatedArtifact) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifact" :: (CreatedArtifact) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> AssociateCreatedArtifactRequest
newAssociateCreatedArtifactRequest' _CreatedArtifact _MigrationTaskName _ProgressUpdateStream customize = (AssociateCreatedArtifactRequest <<< customize) { "CreatedArtifact": _CreatedArtifact, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype AssociateCreatedArtifactResult = AssociateCreatedArtifactResult Types.NoArguments
derive instance newtypeAssociateCreatedArtifactResult :: Newtype AssociateCreatedArtifactResult _
derive instance repGenericAssociateCreatedArtifactResult :: Generic AssociateCreatedArtifactResult _
instance showAssociateCreatedArtifactResult :: Show AssociateCreatedArtifactResult where
  show = genericShow
instance decodeAssociateCreatedArtifactResult :: Decode AssociateCreatedArtifactResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateCreatedArtifactResult :: Encode AssociateCreatedArtifactResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssociateDiscoveredResourceRequest = AssociateDiscoveredResourceRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "DiscoveredResource" :: (DiscoveredResource)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeAssociateDiscoveredResourceRequest :: Newtype AssociateDiscoveredResourceRequest _
derive instance repGenericAssociateDiscoveredResourceRequest :: Generic AssociateDiscoveredResourceRequest _
instance showAssociateDiscoveredResourceRequest :: Show AssociateDiscoveredResourceRequest where
  show = genericShow
instance decodeAssociateDiscoveredResourceRequest :: Decode AssociateDiscoveredResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateDiscoveredResourceRequest :: Encode AssociateDiscoveredResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssociateDiscoveredResourceRequest from required parameters
newAssociateDiscoveredResourceRequest :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> AssociateDiscoveredResourceRequest
newAssociateDiscoveredResourceRequest _DiscoveredResource _MigrationTaskName _ProgressUpdateStream = AssociateDiscoveredResourceRequest { "DiscoveredResource": _DiscoveredResource, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs AssociateDiscoveredResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateDiscoveredResourceRequest' :: DiscoveredResource -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DiscoveredResource" :: (DiscoveredResource) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DiscoveredResource" :: (DiscoveredResource) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> AssociateDiscoveredResourceRequest
newAssociateDiscoveredResourceRequest' _DiscoveredResource _MigrationTaskName _ProgressUpdateStream customize = (AssociateDiscoveredResourceRequest <<< customize) { "DiscoveredResource": _DiscoveredResource, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype AssociateDiscoveredResourceResult = AssociateDiscoveredResourceResult Types.NoArguments
derive instance newtypeAssociateDiscoveredResourceResult :: Newtype AssociateDiscoveredResourceResult _
derive instance repGenericAssociateDiscoveredResourceResult :: Generic AssociateDiscoveredResourceResult _
instance showAssociateDiscoveredResourceResult :: Show AssociateDiscoveredResourceResult where
  show = genericShow
instance decodeAssociateDiscoveredResourceResult :: Decode AssociateDiscoveredResourceResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateDiscoveredResourceResult :: Encode AssociateDiscoveredResourceResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ConfigurationId = ConfigurationId String
derive instance newtypeConfigurationId :: Newtype ConfigurationId _
derive instance repGenericConfigurationId :: Generic ConfigurationId _
instance showConfigurationId :: Show ConfigurationId where
  show = genericShow
instance decodeConfigurationId :: Decode ConfigurationId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConfigurationId :: Encode ConfigurationId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateProgressUpdateStreamRequest = CreateProgressUpdateStreamRequest 
  { "ProgressUpdateStreamName" :: (ProgressUpdateStream)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeCreateProgressUpdateStreamRequest :: Newtype CreateProgressUpdateStreamRequest _
derive instance repGenericCreateProgressUpdateStreamRequest :: Generic CreateProgressUpdateStreamRequest _
instance showCreateProgressUpdateStreamRequest :: Show CreateProgressUpdateStreamRequest where
  show = genericShow
instance decodeCreateProgressUpdateStreamRequest :: Decode CreateProgressUpdateStreamRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProgressUpdateStreamRequest :: Encode CreateProgressUpdateStreamRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateProgressUpdateStreamRequest from required parameters
newCreateProgressUpdateStreamRequest :: ProgressUpdateStream -> CreateProgressUpdateStreamRequest
newCreateProgressUpdateStreamRequest _ProgressUpdateStreamName = CreateProgressUpdateStreamRequest { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs CreateProgressUpdateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProgressUpdateStreamRequest' :: ProgressUpdateStream -> ( { "ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> CreateProgressUpdateStreamRequest
newCreateProgressUpdateStreamRequest' _ProgressUpdateStreamName customize = (CreateProgressUpdateStreamRequest <<< customize) { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }



newtype CreateProgressUpdateStreamResult = CreateProgressUpdateStreamResult Types.NoArguments
derive instance newtypeCreateProgressUpdateStreamResult :: Newtype CreateProgressUpdateStreamResult _
derive instance repGenericCreateProgressUpdateStreamResult :: Generic CreateProgressUpdateStreamResult _
instance showCreateProgressUpdateStreamResult :: Show CreateProgressUpdateStreamResult where
  show = genericShow
instance decodeCreateProgressUpdateStreamResult :: Decode CreateProgressUpdateStreamResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProgressUpdateStreamResult :: Encode CreateProgressUpdateStreamResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2 instance, RDS instance, etc.).</p>
newtype CreatedArtifact = CreatedArtifact 
  { "Name" :: (CreatedArtifactName)
  , "Description" :: NullOrUndefined.NullOrUndefined (CreatedArtifactDescription)
  }
derive instance newtypeCreatedArtifact :: Newtype CreatedArtifact _
derive instance repGenericCreatedArtifact :: Generic CreatedArtifact _
instance showCreatedArtifact :: Show CreatedArtifact where
  show = genericShow
instance decodeCreatedArtifact :: Decode CreatedArtifact where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatedArtifact :: Encode CreatedArtifact where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatedArtifact from required parameters
newCreatedArtifact :: CreatedArtifactName -> CreatedArtifact
newCreatedArtifact _Name = CreatedArtifact { "Name": _Name, "Description": (NullOrUndefined Nothing) }

-- | Constructs CreatedArtifact's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatedArtifact' :: CreatedArtifactName -> ( { "Name" :: (CreatedArtifactName) , "Description" :: NullOrUndefined.NullOrUndefined (CreatedArtifactDescription) } -> {"Name" :: (CreatedArtifactName) , "Description" :: NullOrUndefined.NullOrUndefined (CreatedArtifactDescription) } ) -> CreatedArtifact
newCreatedArtifact' _Name customize = (CreatedArtifact <<< customize) { "Name": _Name, "Description": (NullOrUndefined Nothing) }



newtype CreatedArtifactDescription = CreatedArtifactDescription String
derive instance newtypeCreatedArtifactDescription :: Newtype CreatedArtifactDescription _
derive instance repGenericCreatedArtifactDescription :: Generic CreatedArtifactDescription _
instance showCreatedArtifactDescription :: Show CreatedArtifactDescription where
  show = genericShow
instance decodeCreatedArtifactDescription :: Decode CreatedArtifactDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatedArtifactDescription :: Encode CreatedArtifactDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreatedArtifactList = CreatedArtifactList (Array CreatedArtifact)
derive instance newtypeCreatedArtifactList :: Newtype CreatedArtifactList _
derive instance repGenericCreatedArtifactList :: Generic CreatedArtifactList _
instance showCreatedArtifactList :: Show CreatedArtifactList where
  show = genericShow
instance decodeCreatedArtifactList :: Decode CreatedArtifactList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatedArtifactList :: Encode CreatedArtifactList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreatedArtifactName = CreatedArtifactName String
derive instance newtypeCreatedArtifactName :: Newtype CreatedArtifactName _
derive instance repGenericCreatedArtifactName :: Generic CreatedArtifactName _
instance showCreatedArtifactName :: Show CreatedArtifactName where
  show = genericShow
instance decodeCreatedArtifactName :: Decode CreatedArtifactName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatedArtifactName :: Encode CreatedArtifactName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteProgressUpdateStreamRequest = DeleteProgressUpdateStreamRequest 
  { "ProgressUpdateStreamName" :: (ProgressUpdateStream)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeDeleteProgressUpdateStreamRequest :: Newtype DeleteProgressUpdateStreamRequest _
derive instance repGenericDeleteProgressUpdateStreamRequest :: Generic DeleteProgressUpdateStreamRequest _
instance showDeleteProgressUpdateStreamRequest :: Show DeleteProgressUpdateStreamRequest where
  show = genericShow
instance decodeDeleteProgressUpdateStreamRequest :: Decode DeleteProgressUpdateStreamRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProgressUpdateStreamRequest :: Encode DeleteProgressUpdateStreamRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteProgressUpdateStreamRequest from required parameters
newDeleteProgressUpdateStreamRequest :: ProgressUpdateStream -> DeleteProgressUpdateStreamRequest
newDeleteProgressUpdateStreamRequest _ProgressUpdateStreamName = DeleteProgressUpdateStreamRequest { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DeleteProgressUpdateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProgressUpdateStreamRequest' :: ProgressUpdateStream -> ( { "ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStreamName" :: (ProgressUpdateStream) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> DeleteProgressUpdateStreamRequest
newDeleteProgressUpdateStreamRequest' _ProgressUpdateStreamName customize = (DeleteProgressUpdateStreamRequest <<< customize) { "ProgressUpdateStreamName": _ProgressUpdateStreamName, "DryRun": (NullOrUndefined Nothing) }



newtype DeleteProgressUpdateStreamResult = DeleteProgressUpdateStreamResult Types.NoArguments
derive instance newtypeDeleteProgressUpdateStreamResult :: Newtype DeleteProgressUpdateStreamResult _
derive instance repGenericDeleteProgressUpdateStreamResult :: Generic DeleteProgressUpdateStreamResult _
instance showDeleteProgressUpdateStreamResult :: Show DeleteProgressUpdateStreamResult where
  show = genericShow
instance decodeDeleteProgressUpdateStreamResult :: Decode DeleteProgressUpdateStreamResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProgressUpdateStreamResult :: Encode DeleteProgressUpdateStreamResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeApplicationStateRequest = DescribeApplicationStateRequest 
  { "ApplicationId" :: (ApplicationId)
  }
derive instance newtypeDescribeApplicationStateRequest :: Newtype DescribeApplicationStateRequest _
derive instance repGenericDescribeApplicationStateRequest :: Generic DescribeApplicationStateRequest _
instance showDescribeApplicationStateRequest :: Show DescribeApplicationStateRequest where
  show = genericShow
instance decodeDescribeApplicationStateRequest :: Decode DescribeApplicationStateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeApplicationStateRequest :: Encode DescribeApplicationStateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeApplicationStateRequest from required parameters
newDescribeApplicationStateRequest :: ApplicationId -> DescribeApplicationStateRequest
newDescribeApplicationStateRequest _ApplicationId = DescribeApplicationStateRequest { "ApplicationId": _ApplicationId }

-- | Constructs DescribeApplicationStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationStateRequest' :: ApplicationId -> ( { "ApplicationId" :: (ApplicationId) } -> {"ApplicationId" :: (ApplicationId) } ) -> DescribeApplicationStateRequest
newDescribeApplicationStateRequest' _ApplicationId customize = (DescribeApplicationStateRequest <<< customize) { "ApplicationId": _ApplicationId }



newtype DescribeApplicationStateResult = DescribeApplicationStateResult 
  { "ApplicationStatus" :: NullOrUndefined.NullOrUndefined (ApplicationStatus)
  , "LastUpdatedTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime)
  }
derive instance newtypeDescribeApplicationStateResult :: Newtype DescribeApplicationStateResult _
derive instance repGenericDescribeApplicationStateResult :: Generic DescribeApplicationStateResult _
instance showDescribeApplicationStateResult :: Show DescribeApplicationStateResult where
  show = genericShow
instance decodeDescribeApplicationStateResult :: Decode DescribeApplicationStateResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeApplicationStateResult :: Encode DescribeApplicationStateResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeApplicationStateResult from required parameters
newDescribeApplicationStateResult :: DescribeApplicationStateResult
newDescribeApplicationStateResult  = DescribeApplicationStateResult { "ApplicationStatus": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing) }

-- | Constructs DescribeApplicationStateResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationStateResult' :: ( { "ApplicationStatus" :: NullOrUndefined.NullOrUndefined (ApplicationStatus) , "LastUpdatedTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) } -> {"ApplicationStatus" :: NullOrUndefined.NullOrUndefined (ApplicationStatus) , "LastUpdatedTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) } ) -> DescribeApplicationStateResult
newDescribeApplicationStateResult'  customize = (DescribeApplicationStateResult <<< customize) { "ApplicationStatus": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing) }



newtype DescribeMigrationTaskRequest = DescribeMigrationTaskRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  }
derive instance newtypeDescribeMigrationTaskRequest :: Newtype DescribeMigrationTaskRequest _
derive instance repGenericDescribeMigrationTaskRequest :: Generic DescribeMigrationTaskRequest _
instance showDescribeMigrationTaskRequest :: Show DescribeMigrationTaskRequest where
  show = genericShow
instance decodeDescribeMigrationTaskRequest :: Decode DescribeMigrationTaskRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeMigrationTaskRequest :: Encode DescribeMigrationTaskRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeMigrationTaskRequest from required parameters
newDescribeMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> DescribeMigrationTaskRequest
newDescribeMigrationTaskRequest _MigrationTaskName _ProgressUpdateStream = DescribeMigrationTaskRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream }

-- | Constructs DescribeMigrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) } ) -> DescribeMigrationTaskRequest
newDescribeMigrationTaskRequest' _MigrationTaskName _ProgressUpdateStream customize = (DescribeMigrationTaskRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream }



newtype DescribeMigrationTaskResult = DescribeMigrationTaskResult 
  { "MigrationTask" :: NullOrUndefined.NullOrUndefined (MigrationTask)
  }
derive instance newtypeDescribeMigrationTaskResult :: Newtype DescribeMigrationTaskResult _
derive instance repGenericDescribeMigrationTaskResult :: Generic DescribeMigrationTaskResult _
instance showDescribeMigrationTaskResult :: Show DescribeMigrationTaskResult where
  show = genericShow
instance decodeDescribeMigrationTaskResult :: Decode DescribeMigrationTaskResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeMigrationTaskResult :: Encode DescribeMigrationTaskResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeMigrationTaskResult from required parameters
newDescribeMigrationTaskResult :: DescribeMigrationTaskResult
newDescribeMigrationTaskResult  = DescribeMigrationTaskResult { "MigrationTask": (NullOrUndefined Nothing) }

-- | Constructs DescribeMigrationTaskResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMigrationTaskResult' :: ( { "MigrationTask" :: NullOrUndefined.NullOrUndefined (MigrationTask) } -> {"MigrationTask" :: NullOrUndefined.NullOrUndefined (MigrationTask) } ) -> DescribeMigrationTaskResult
newDescribeMigrationTaskResult'  customize = (DescribeMigrationTaskResult <<< customize) { "MigrationTask": (NullOrUndefined Nothing) }



newtype DisassociateCreatedArtifactRequest = DisassociateCreatedArtifactRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "CreatedArtifactName" :: (CreatedArtifactName)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeDisassociateCreatedArtifactRequest :: Newtype DisassociateCreatedArtifactRequest _
derive instance repGenericDisassociateCreatedArtifactRequest :: Generic DisassociateCreatedArtifactRequest _
instance showDisassociateCreatedArtifactRequest :: Show DisassociateCreatedArtifactRequest where
  show = genericShow
instance decodeDisassociateCreatedArtifactRequest :: Decode DisassociateCreatedArtifactRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateCreatedArtifactRequest :: Encode DisassociateCreatedArtifactRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisassociateCreatedArtifactRequest from required parameters
newDisassociateCreatedArtifactRequest :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> DisassociateCreatedArtifactRequest
newDisassociateCreatedArtifactRequest _CreatedArtifactName _MigrationTaskName _ProgressUpdateStream = DisassociateCreatedArtifactRequest { "CreatedArtifactName": _CreatedArtifactName, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DisassociateCreatedArtifactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateCreatedArtifactRequest' :: CreatedArtifactName -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifactName" :: (CreatedArtifactName) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "CreatedArtifactName" :: (CreatedArtifactName) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> DisassociateCreatedArtifactRequest
newDisassociateCreatedArtifactRequest' _CreatedArtifactName _MigrationTaskName _ProgressUpdateStream customize = (DisassociateCreatedArtifactRequest <<< customize) { "CreatedArtifactName": _CreatedArtifactName, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype DisassociateCreatedArtifactResult = DisassociateCreatedArtifactResult Types.NoArguments
derive instance newtypeDisassociateCreatedArtifactResult :: Newtype DisassociateCreatedArtifactResult _
derive instance repGenericDisassociateCreatedArtifactResult :: Generic DisassociateCreatedArtifactResult _
instance showDisassociateCreatedArtifactResult :: Show DisassociateCreatedArtifactResult where
  show = genericShow
instance decodeDisassociateCreatedArtifactResult :: Decode DisassociateCreatedArtifactResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateCreatedArtifactResult :: Encode DisassociateCreatedArtifactResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DisassociateDiscoveredResourceRequest = DisassociateDiscoveredResourceRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "ConfigurationId" :: (ConfigurationId)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeDisassociateDiscoveredResourceRequest :: Newtype DisassociateDiscoveredResourceRequest _
derive instance repGenericDisassociateDiscoveredResourceRequest :: Generic DisassociateDiscoveredResourceRequest _
instance showDisassociateDiscoveredResourceRequest :: Show DisassociateDiscoveredResourceRequest where
  show = genericShow
instance decodeDisassociateDiscoveredResourceRequest :: Decode DisassociateDiscoveredResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateDiscoveredResourceRequest :: Encode DisassociateDiscoveredResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisassociateDiscoveredResourceRequest from required parameters
newDisassociateDiscoveredResourceRequest :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> DisassociateDiscoveredResourceRequest
newDisassociateDiscoveredResourceRequest _ConfigurationId _MigrationTaskName _ProgressUpdateStream = DisassociateDiscoveredResourceRequest { "ConfigurationId": _ConfigurationId, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs DisassociateDiscoveredResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateDiscoveredResourceRequest' :: ConfigurationId -> MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ConfigurationId" :: (ConfigurationId) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ConfigurationId" :: (ConfigurationId) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> DisassociateDiscoveredResourceRequest
newDisassociateDiscoveredResourceRequest' _ConfigurationId _MigrationTaskName _ProgressUpdateStream customize = (DisassociateDiscoveredResourceRequest <<< customize) { "ConfigurationId": _ConfigurationId, "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype DisassociateDiscoveredResourceResult = DisassociateDiscoveredResourceResult Types.NoArguments
derive instance newtypeDisassociateDiscoveredResourceResult :: Newtype DisassociateDiscoveredResourceResult _
derive instance repGenericDisassociateDiscoveredResourceResult :: Generic DisassociateDiscoveredResourceResult _
instance showDisassociateDiscoveredResourceResult :: Show DisassociateDiscoveredResourceResult where
  show = genericShow
instance decodeDisassociateDiscoveredResourceResult :: Decode DisassociateDiscoveredResourceResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateDiscoveredResourceResult :: Encode DisassociateDiscoveredResourceResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Object representing the on-premises resource being migrated.</p>
newtype DiscoveredResource = DiscoveredResource 
  { "ConfigurationId" :: (ConfigurationId)
  , "Description" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceDescription)
  }
derive instance newtypeDiscoveredResource :: Newtype DiscoveredResource _
derive instance repGenericDiscoveredResource :: Generic DiscoveredResource _
instance showDiscoveredResource :: Show DiscoveredResource where
  show = genericShow
instance decodeDiscoveredResource :: Decode DiscoveredResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDiscoveredResource :: Encode DiscoveredResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DiscoveredResource from required parameters
newDiscoveredResource :: ConfigurationId -> DiscoveredResource
newDiscoveredResource _ConfigurationId = DiscoveredResource { "ConfigurationId": _ConfigurationId, "Description": (NullOrUndefined Nothing) }

-- | Constructs DiscoveredResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoveredResource' :: ConfigurationId -> ( { "ConfigurationId" :: (ConfigurationId) , "Description" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceDescription) } -> {"ConfigurationId" :: (ConfigurationId) , "Description" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceDescription) } ) -> DiscoveredResource
newDiscoveredResource' _ConfigurationId customize = (DiscoveredResource <<< customize) { "ConfigurationId": _ConfigurationId, "Description": (NullOrUndefined Nothing) }



newtype DiscoveredResourceDescription = DiscoveredResourceDescription String
derive instance newtypeDiscoveredResourceDescription :: Newtype DiscoveredResourceDescription _
derive instance repGenericDiscoveredResourceDescription :: Generic DiscoveredResourceDescription _
instance showDiscoveredResourceDescription :: Show DiscoveredResourceDescription where
  show = genericShow
instance decodeDiscoveredResourceDescription :: Decode DiscoveredResourceDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDiscoveredResourceDescription :: Encode DiscoveredResourceDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DiscoveredResourceList = DiscoveredResourceList (Array DiscoveredResource)
derive instance newtypeDiscoveredResourceList :: Newtype DiscoveredResourceList _
derive instance repGenericDiscoveredResourceList :: Generic DiscoveredResourceList _
instance showDiscoveredResourceList :: Show DiscoveredResourceList where
  show = genericShow
instance decodeDiscoveredResourceList :: Decode DiscoveredResourceList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDiscoveredResourceList :: Encode DiscoveredResourceList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DryRun = DryRun Boolean
derive instance newtypeDryRun :: Newtype DryRun _
derive instance repGenericDryRun :: Generic DryRun _
instance showDryRun :: Show DryRun where
  show = genericShow
instance decodeDryRun :: Decode DryRun where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDryRun :: Encode DryRun where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception raised to indicate a successfully authorized action when the <code>DryRun</code> flag is set to "true".</p>
newtype DryRunOperation = DryRunOperation 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDryRunOperation :: Newtype DryRunOperation _
derive instance repGenericDryRunOperation :: Generic DryRunOperation _
instance showDryRunOperation :: Show DryRunOperation where
  show = genericShow
instance decodeDryRunOperation :: Decode DryRunOperation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDryRunOperation :: Encode DryRunOperation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DryRunOperation from required parameters
newDryRunOperation :: DryRunOperation
newDryRunOperation  = DryRunOperation { "Message": (NullOrUndefined Nothing) }

-- | Constructs DryRunOperation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDryRunOperation' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> DryRunOperation
newDryRunOperation'  customize = (DryRunOperation <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImportMigrationTaskRequest = ImportMigrationTaskRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeImportMigrationTaskRequest :: Newtype ImportMigrationTaskRequest _
derive instance repGenericImportMigrationTaskRequest :: Generic ImportMigrationTaskRequest _
instance showImportMigrationTaskRequest :: Show ImportMigrationTaskRequest where
  show = genericShow
instance decodeImportMigrationTaskRequest :: Decode ImportMigrationTaskRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImportMigrationTaskRequest :: Encode ImportMigrationTaskRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImportMigrationTaskRequest from required parameters
newImportMigrationTaskRequest :: MigrationTaskName -> ProgressUpdateStream -> ImportMigrationTaskRequest
newImportMigrationTaskRequest _MigrationTaskName _ProgressUpdateStream = ImportMigrationTaskRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs ImportMigrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImportMigrationTaskRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> ImportMigrationTaskRequest
newImportMigrationTaskRequest' _MigrationTaskName _ProgressUpdateStream customize = (ImportMigrationTaskRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "DryRun": (NullOrUndefined Nothing) }



newtype ImportMigrationTaskResult = ImportMigrationTaskResult Types.NoArguments
derive instance newtypeImportMigrationTaskResult :: Newtype ImportMigrationTaskResult _
derive instance repGenericImportMigrationTaskResult :: Generic ImportMigrationTaskResult _
instance showImportMigrationTaskResult :: Show ImportMigrationTaskResult where
  show = genericShow
instance decodeImportMigrationTaskResult :: Decode ImportMigrationTaskResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImportMigrationTaskResult :: Encode ImportMigrationTaskResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
newtype InternalServerError = InternalServerError 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where
  show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerError :: Encode InternalServerError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.</p>
newtype InvalidInputException = InvalidInputException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where
  show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputException :: Encode InvalidInputException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype LatestResourceAttributeList = LatestResourceAttributeList (Array ResourceAttribute)
derive instance newtypeLatestResourceAttributeList :: Newtype LatestResourceAttributeList _
derive instance repGenericLatestResourceAttributeList :: Generic LatestResourceAttributeList _
instance showLatestResourceAttributeList :: Show LatestResourceAttributeList where
  show = genericShow
instance decodeLatestResourceAttributeList :: Decode LatestResourceAttributeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLatestResourceAttributeList :: Encode LatestResourceAttributeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListCreatedArtifactsRequest = ListCreatedArtifactsRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsCreatedArtifacts)
  }
derive instance newtypeListCreatedArtifactsRequest :: Newtype ListCreatedArtifactsRequest _
derive instance repGenericListCreatedArtifactsRequest :: Generic ListCreatedArtifactsRequest _
instance showListCreatedArtifactsRequest :: Show ListCreatedArtifactsRequest where
  show = genericShow
instance decodeListCreatedArtifactsRequest :: Decode ListCreatedArtifactsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListCreatedArtifactsRequest :: Encode ListCreatedArtifactsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListCreatedArtifactsRequest from required parameters
newListCreatedArtifactsRequest :: MigrationTaskName -> ProgressUpdateStream -> ListCreatedArtifactsRequest
newListCreatedArtifactsRequest _MigrationTaskName _ProgressUpdateStream = ListCreatedArtifactsRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCreatedArtifactsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreatedArtifactsRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsCreatedArtifacts) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsCreatedArtifacts) } ) -> ListCreatedArtifactsRequest
newListCreatedArtifactsRequest' _MigrationTaskName _ProgressUpdateStream customize = (ListCreatedArtifactsRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListCreatedArtifactsResult = ListCreatedArtifactsResult 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "CreatedArtifactList" :: NullOrUndefined.NullOrUndefined (CreatedArtifactList)
  }
derive instance newtypeListCreatedArtifactsResult :: Newtype ListCreatedArtifactsResult _
derive instance repGenericListCreatedArtifactsResult :: Generic ListCreatedArtifactsResult _
instance showListCreatedArtifactsResult :: Show ListCreatedArtifactsResult where
  show = genericShow
instance decodeListCreatedArtifactsResult :: Decode ListCreatedArtifactsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListCreatedArtifactsResult :: Encode ListCreatedArtifactsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListCreatedArtifactsResult from required parameters
newListCreatedArtifactsResult :: ListCreatedArtifactsResult
newListCreatedArtifactsResult  = ListCreatedArtifactsResult { "CreatedArtifactList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCreatedArtifactsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreatedArtifactsResult' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "CreatedArtifactList" :: NullOrUndefined.NullOrUndefined (CreatedArtifactList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "CreatedArtifactList" :: NullOrUndefined.NullOrUndefined (CreatedArtifactList) } ) -> ListCreatedArtifactsResult
newListCreatedArtifactsResult'  customize = (ListCreatedArtifactsResult <<< customize) { "CreatedArtifactList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListDiscoveredResourcesRequest = ListDiscoveredResourcesRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsResources)
  }
derive instance newtypeListDiscoveredResourcesRequest :: Newtype ListDiscoveredResourcesRequest _
derive instance repGenericListDiscoveredResourcesRequest :: Generic ListDiscoveredResourcesRequest _
instance showListDiscoveredResourcesRequest :: Show ListDiscoveredResourcesRequest where
  show = genericShow
instance decodeListDiscoveredResourcesRequest :: Decode ListDiscoveredResourcesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListDiscoveredResourcesRequest :: Encode ListDiscoveredResourcesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListDiscoveredResourcesRequest from required parameters
newListDiscoveredResourcesRequest :: MigrationTaskName -> ProgressUpdateStream -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest _MigrationTaskName _ProgressUpdateStream = ListDiscoveredResourcesRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsResources) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsResources) } ) -> ListDiscoveredResourcesRequest
newListDiscoveredResourcesRequest' _MigrationTaskName _ProgressUpdateStream customize = (ListDiscoveredResourcesRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListDiscoveredResourcesResult = ListDiscoveredResourcesResult 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "DiscoveredResourceList" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceList)
  }
derive instance newtypeListDiscoveredResourcesResult :: Newtype ListDiscoveredResourcesResult _
derive instance repGenericListDiscoveredResourcesResult :: Generic ListDiscoveredResourcesResult _
instance showListDiscoveredResourcesResult :: Show ListDiscoveredResourcesResult where
  show = genericShow
instance decodeListDiscoveredResourcesResult :: Decode ListDiscoveredResourcesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListDiscoveredResourcesResult :: Encode ListDiscoveredResourcesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListDiscoveredResourcesResult from required parameters
newListDiscoveredResourcesResult :: ListDiscoveredResourcesResult
newListDiscoveredResourcesResult  = ListDiscoveredResourcesResult { "DiscoveredResourceList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDiscoveredResourcesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDiscoveredResourcesResult' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "DiscoveredResourceList" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "DiscoveredResourceList" :: NullOrUndefined.NullOrUndefined (DiscoveredResourceList) } ) -> ListDiscoveredResourcesResult
newListDiscoveredResourcesResult'  customize = (ListDiscoveredResourcesResult <<< customize) { "DiscoveredResourceList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListMigrationTasksRequest = ListMigrationTasksRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "ResourceName" :: NullOrUndefined.NullOrUndefined (ResourceName)
  }
derive instance newtypeListMigrationTasksRequest :: Newtype ListMigrationTasksRequest _
derive instance repGenericListMigrationTasksRequest :: Generic ListMigrationTasksRequest _
instance showListMigrationTasksRequest :: Show ListMigrationTasksRequest where
  show = genericShow
instance decodeListMigrationTasksRequest :: Decode ListMigrationTasksRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListMigrationTasksRequest :: Encode ListMigrationTasksRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListMigrationTasksRequest from required parameters
newListMigrationTasksRequest :: ListMigrationTasksRequest
newListMigrationTasksRequest  = ListMigrationTasksRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }

-- | Constructs ListMigrationTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMigrationTasksRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "ResourceName" :: NullOrUndefined.NullOrUndefined (ResourceName) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "ResourceName" :: NullOrUndefined.NullOrUndefined (ResourceName) } ) -> ListMigrationTasksRequest
newListMigrationTasksRequest'  customize = (ListMigrationTasksRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }



newtype ListMigrationTasksResult = ListMigrationTasksResult 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MigrationTaskSummaryList" :: NullOrUndefined.NullOrUndefined (MigrationTaskSummaryList)
  }
derive instance newtypeListMigrationTasksResult :: Newtype ListMigrationTasksResult _
derive instance repGenericListMigrationTasksResult :: Generic ListMigrationTasksResult _
instance showListMigrationTasksResult :: Show ListMigrationTasksResult where
  show = genericShow
instance decodeListMigrationTasksResult :: Decode ListMigrationTasksResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListMigrationTasksResult :: Encode ListMigrationTasksResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListMigrationTasksResult from required parameters
newListMigrationTasksResult :: ListMigrationTasksResult
newListMigrationTasksResult  = ListMigrationTasksResult { "MigrationTaskSummaryList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListMigrationTasksResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMigrationTasksResult' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MigrationTaskSummaryList" :: NullOrUndefined.NullOrUndefined (MigrationTaskSummaryList) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MigrationTaskSummaryList" :: NullOrUndefined.NullOrUndefined (MigrationTaskSummaryList) } ) -> ListMigrationTasksResult
newListMigrationTasksResult'  customize = (ListMigrationTasksResult <<< customize) { "MigrationTaskSummaryList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProgressUpdateStreamsRequest = ListProgressUpdateStreamsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListProgressUpdateStreamsRequest :: Newtype ListProgressUpdateStreamsRequest _
derive instance repGenericListProgressUpdateStreamsRequest :: Generic ListProgressUpdateStreamsRequest _
instance showListProgressUpdateStreamsRequest :: Show ListProgressUpdateStreamsRequest where
  show = genericShow
instance decodeListProgressUpdateStreamsRequest :: Decode ListProgressUpdateStreamsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProgressUpdateStreamsRequest :: Encode ListProgressUpdateStreamsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProgressUpdateStreamsRequest from required parameters
newListProgressUpdateStreamsRequest :: ListProgressUpdateStreamsRequest
newListProgressUpdateStreamsRequest  = ListProgressUpdateStreamsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListProgressUpdateStreamsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProgressUpdateStreamsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListProgressUpdateStreamsRequest
newListProgressUpdateStreamsRequest'  customize = (ListProgressUpdateStreamsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProgressUpdateStreamsResult = ListProgressUpdateStreamsResult 
  { "ProgressUpdateStreamSummaryList" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStreamSummaryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeListProgressUpdateStreamsResult :: Newtype ListProgressUpdateStreamsResult _
derive instance repGenericListProgressUpdateStreamsResult :: Generic ListProgressUpdateStreamsResult _
instance showListProgressUpdateStreamsResult :: Show ListProgressUpdateStreamsResult where
  show = genericShow
instance decodeListProgressUpdateStreamsResult :: Decode ListProgressUpdateStreamsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProgressUpdateStreamsResult :: Encode ListProgressUpdateStreamsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProgressUpdateStreamsResult from required parameters
newListProgressUpdateStreamsResult :: ListProgressUpdateStreamsResult
newListProgressUpdateStreamsResult  = ListProgressUpdateStreamsResult { "NextToken": (NullOrUndefined Nothing), "ProgressUpdateStreamSummaryList": (NullOrUndefined Nothing) }

-- | Constructs ListProgressUpdateStreamsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProgressUpdateStreamsResult' :: ( { "ProgressUpdateStreamSummaryList" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStreamSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"ProgressUpdateStreamSummaryList" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStreamSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> ListProgressUpdateStreamsResult
newListProgressUpdateStreamsResult'  customize = (ListProgressUpdateStreamsResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "ProgressUpdateStreamSummaryList": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxResultsCreatedArtifacts = MaxResultsCreatedArtifacts Int
derive instance newtypeMaxResultsCreatedArtifacts :: Newtype MaxResultsCreatedArtifacts _
derive instance repGenericMaxResultsCreatedArtifacts :: Generic MaxResultsCreatedArtifacts _
instance showMaxResultsCreatedArtifacts :: Show MaxResultsCreatedArtifacts where
  show = genericShow
instance decodeMaxResultsCreatedArtifacts :: Decode MaxResultsCreatedArtifacts where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResultsCreatedArtifacts :: Encode MaxResultsCreatedArtifacts where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxResultsResources = MaxResultsResources Int
derive instance newtypeMaxResultsResources :: Newtype MaxResultsResources _
derive instance repGenericMaxResultsResources :: Generic MaxResultsResources _
instance showMaxResultsResources :: Show MaxResultsResources where
  show = genericShow
instance decodeMaxResultsResources :: Decode MaxResultsResources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResultsResources :: Encode MaxResultsResources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a migration task in a migration tool.</p>
newtype MigrationTask = MigrationTask 
  { "ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream)
  , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName)
  , "Task" :: NullOrUndefined.NullOrUndefined (Task)
  , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime)
  , "ResourceAttributeList" :: NullOrUndefined.NullOrUndefined (LatestResourceAttributeList)
  }
derive instance newtypeMigrationTask :: Newtype MigrationTask _
derive instance repGenericMigrationTask :: Generic MigrationTask _
instance showMigrationTask :: Show MigrationTask where
  show = genericShow
instance decodeMigrationTask :: Decode MigrationTask where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMigrationTask :: Encode MigrationTask where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MigrationTask from required parameters
newMigrationTask :: MigrationTask
newMigrationTask  = MigrationTask { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "ResourceAttributeList": (NullOrUndefined Nothing), "Task": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }

-- | Constructs MigrationTask's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMigrationTask' :: ( { "ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName) , "Task" :: NullOrUndefined.NullOrUndefined (Task) , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) , "ResourceAttributeList" :: NullOrUndefined.NullOrUndefined (LatestResourceAttributeList) } -> {"ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName) , "Task" :: NullOrUndefined.NullOrUndefined (Task) , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) , "ResourceAttributeList" :: NullOrUndefined.NullOrUndefined (LatestResourceAttributeList) } ) -> MigrationTask
newMigrationTask'  customize = (MigrationTask <<< customize) { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "ResourceAttributeList": (NullOrUndefined Nothing), "Task": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }



newtype MigrationTaskName = MigrationTaskName String
derive instance newtypeMigrationTaskName :: Newtype MigrationTaskName _
derive instance repGenericMigrationTaskName :: Generic MigrationTaskName _
instance showMigrationTaskName :: Show MigrationTaskName where
  show = genericShow
instance decodeMigrationTaskName :: Decode MigrationTaskName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMigrationTaskName :: Encode MigrationTaskName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>MigrationTaskSummary includes <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and <code>UpdateDateTime</code> for each task.</p>
newtype MigrationTaskSummary = MigrationTaskSummary 
  { "ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream)
  , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName)
  , "Status" :: NullOrUndefined.NullOrUndefined (Status)
  , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent)
  , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail)
  , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime)
  }
derive instance newtypeMigrationTaskSummary :: Newtype MigrationTaskSummary _
derive instance repGenericMigrationTaskSummary :: Generic MigrationTaskSummary _
instance showMigrationTaskSummary :: Show MigrationTaskSummary where
  show = genericShow
instance decodeMigrationTaskSummary :: Decode MigrationTaskSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMigrationTaskSummary :: Encode MigrationTaskSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MigrationTaskSummary from required parameters
newMigrationTaskSummary :: MigrationTaskSummary
newMigrationTaskSummary  = MigrationTaskSummary { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressPercent": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }

-- | Constructs MigrationTaskSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMigrationTaskSummary' :: ( { "ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName) , "Status" :: NullOrUndefined.NullOrUndefined (Status) , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent) , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail) , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) } -> {"ProgressUpdateStream" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) , "MigrationTaskName" :: NullOrUndefined.NullOrUndefined (MigrationTaskName) , "Status" :: NullOrUndefined.NullOrUndefined (Status) , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent) , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail) , "UpdateDateTime" :: NullOrUndefined.NullOrUndefined (UpdateDateTime) } ) -> MigrationTaskSummary
newMigrationTaskSummary'  customize = (MigrationTaskSummary <<< customize) { "MigrationTaskName": (NullOrUndefined Nothing), "ProgressPercent": (NullOrUndefined Nothing), "ProgressUpdateStream": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing), "UpdateDateTime": (NullOrUndefined Nothing) }



newtype MigrationTaskSummaryList = MigrationTaskSummaryList (Array MigrationTaskSummary)
derive instance newtypeMigrationTaskSummaryList :: Newtype MigrationTaskSummaryList _
derive instance repGenericMigrationTaskSummaryList :: Generic MigrationTaskSummaryList _
instance showMigrationTaskSummaryList :: Show MigrationTaskSummaryList where
  show = genericShow
instance decodeMigrationTaskSummaryList :: Decode MigrationTaskSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMigrationTaskSummaryList :: Encode MigrationTaskSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextUpdateSeconds = NextUpdateSeconds Int
derive instance newtypeNextUpdateSeconds :: Newtype NextUpdateSeconds _
derive instance repGenericNextUpdateSeconds :: Generic NextUpdateSeconds _
instance showNextUpdateSeconds :: Show NextUpdateSeconds where
  show = genericShow
instance decodeNextUpdateSeconds :: Decode NextUpdateSeconds where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextUpdateSeconds :: Encode NextUpdateSeconds where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NotifyApplicationStateRequest = NotifyApplicationStateRequest 
  { "ApplicationId" :: (ApplicationId)
  , "Status" :: (ApplicationStatus)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeNotifyApplicationStateRequest :: Newtype NotifyApplicationStateRequest _
derive instance repGenericNotifyApplicationStateRequest :: Generic NotifyApplicationStateRequest _
instance showNotifyApplicationStateRequest :: Show NotifyApplicationStateRequest where
  show = genericShow
instance decodeNotifyApplicationStateRequest :: Decode NotifyApplicationStateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyApplicationStateRequest :: Encode NotifyApplicationStateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotifyApplicationStateRequest from required parameters
newNotifyApplicationStateRequest :: ApplicationId -> ApplicationStatus -> NotifyApplicationStateRequest
newNotifyApplicationStateRequest _ApplicationId _Status = NotifyApplicationStateRequest { "ApplicationId": _ApplicationId, "Status": _Status, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs NotifyApplicationStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyApplicationStateRequest' :: ApplicationId -> ApplicationStatus -> ( { "ApplicationId" :: (ApplicationId) , "Status" :: (ApplicationStatus) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ApplicationId" :: (ApplicationId) , "Status" :: (ApplicationStatus) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> NotifyApplicationStateRequest
newNotifyApplicationStateRequest' _ApplicationId _Status customize = (NotifyApplicationStateRequest <<< customize) { "ApplicationId": _ApplicationId, "Status": _Status, "DryRun": (NullOrUndefined Nothing) }



newtype NotifyApplicationStateResult = NotifyApplicationStateResult Types.NoArguments
derive instance newtypeNotifyApplicationStateResult :: Newtype NotifyApplicationStateResult _
derive instance repGenericNotifyApplicationStateResult :: Generic NotifyApplicationStateResult _
instance showNotifyApplicationStateResult :: Show NotifyApplicationStateResult where
  show = genericShow
instance decodeNotifyApplicationStateResult :: Decode NotifyApplicationStateResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyApplicationStateResult :: Encode NotifyApplicationStateResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NotifyMigrationTaskStateRequest = NotifyMigrationTaskStateRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "Task" :: (Task)
  , "UpdateDateTime" :: (UpdateDateTime)
  , "NextUpdateSeconds" :: (NextUpdateSeconds)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypeNotifyMigrationTaskStateRequest :: Newtype NotifyMigrationTaskStateRequest _
derive instance repGenericNotifyMigrationTaskStateRequest :: Generic NotifyMigrationTaskStateRequest _
instance showNotifyMigrationTaskStateRequest :: Show NotifyMigrationTaskStateRequest where
  show = genericShow
instance decodeNotifyMigrationTaskStateRequest :: Decode NotifyMigrationTaskStateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyMigrationTaskStateRequest :: Encode NotifyMigrationTaskStateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotifyMigrationTaskStateRequest from required parameters
newNotifyMigrationTaskStateRequest :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> NotifyMigrationTaskStateRequest
newNotifyMigrationTaskStateRequest _MigrationTaskName _NextUpdateSeconds _ProgressUpdateStream _Task _UpdateDateTime = NotifyMigrationTaskStateRequest { "MigrationTaskName": _MigrationTaskName, "NextUpdateSeconds": _NextUpdateSeconds, "ProgressUpdateStream": _ProgressUpdateStream, "Task": _Task, "UpdateDateTime": _UpdateDateTime, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs NotifyMigrationTaskStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyMigrationTaskStateRequest' :: MigrationTaskName -> NextUpdateSeconds -> ProgressUpdateStream -> Task -> UpdateDateTime -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "Task" :: (Task) , "UpdateDateTime" :: (UpdateDateTime) , "NextUpdateSeconds" :: (NextUpdateSeconds) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "Task" :: (Task) , "UpdateDateTime" :: (UpdateDateTime) , "NextUpdateSeconds" :: (NextUpdateSeconds) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> NotifyMigrationTaskStateRequest
newNotifyMigrationTaskStateRequest' _MigrationTaskName _NextUpdateSeconds _ProgressUpdateStream _Task _UpdateDateTime customize = (NotifyMigrationTaskStateRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "NextUpdateSeconds": _NextUpdateSeconds, "ProgressUpdateStream": _ProgressUpdateStream, "Task": _Task, "UpdateDateTime": _UpdateDateTime, "DryRun": (NullOrUndefined Nothing) }



newtype NotifyMigrationTaskStateResult = NotifyMigrationTaskStateResult Types.NoArguments
derive instance newtypeNotifyMigrationTaskStateResult :: Newtype NotifyMigrationTaskStateResult _
derive instance repGenericNotifyMigrationTaskStateResult :: Generic NotifyMigrationTaskStateResult _
instance showNotifyMigrationTaskStateResult :: Show NotifyMigrationTaskStateResult where
  show = genericShow
instance decodeNotifyMigrationTaskStateResult :: Decode NotifyMigrationTaskStateResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotifyMigrationTaskStateResult :: Encode NotifyMigrationTaskStateResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception raised when there are problems accessing ADS (Application Discovery Service); most likely due to a misconfigured policy or the <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>
newtype PolicyErrorException = PolicyErrorException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypePolicyErrorException :: Newtype PolicyErrorException _
derive instance repGenericPolicyErrorException :: Generic PolicyErrorException _
instance showPolicyErrorException :: Show PolicyErrorException where
  show = genericShow
instance decodePolicyErrorException :: Decode PolicyErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyErrorException :: Encode PolicyErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyErrorException from required parameters
newPolicyErrorException :: PolicyErrorException
newPolicyErrorException  = PolicyErrorException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyErrorException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> PolicyErrorException
newPolicyErrorException'  customize = (PolicyErrorException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ProgressPercent = ProgressPercent Int
derive instance newtypeProgressPercent :: Newtype ProgressPercent _
derive instance repGenericProgressPercent :: Generic ProgressPercent _
instance showProgressPercent :: Show ProgressPercent where
  show = genericShow
instance decodeProgressPercent :: Decode ProgressPercent where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProgressPercent :: Encode ProgressPercent where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ProgressUpdateStream = ProgressUpdateStream String
derive instance newtypeProgressUpdateStream :: Newtype ProgressUpdateStream _
derive instance repGenericProgressUpdateStream :: Generic ProgressUpdateStream _
instance showProgressUpdateStream :: Show ProgressUpdateStream where
  show = genericShow
instance decodeProgressUpdateStream :: Decode ProgressUpdateStream where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProgressUpdateStream :: Encode ProgressUpdateStream where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Summary of the AWS resource used for access control that is implicitly linked to your AWS account.</p>
newtype ProgressUpdateStreamSummary = ProgressUpdateStreamSummary 
  { "ProgressUpdateStreamName" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream)
  }
derive instance newtypeProgressUpdateStreamSummary :: Newtype ProgressUpdateStreamSummary _
derive instance repGenericProgressUpdateStreamSummary :: Generic ProgressUpdateStreamSummary _
instance showProgressUpdateStreamSummary :: Show ProgressUpdateStreamSummary where
  show = genericShow
instance decodeProgressUpdateStreamSummary :: Decode ProgressUpdateStreamSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProgressUpdateStreamSummary :: Encode ProgressUpdateStreamSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProgressUpdateStreamSummary from required parameters
newProgressUpdateStreamSummary :: ProgressUpdateStreamSummary
newProgressUpdateStreamSummary  = ProgressUpdateStreamSummary { "ProgressUpdateStreamName": (NullOrUndefined Nothing) }

-- | Constructs ProgressUpdateStreamSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProgressUpdateStreamSummary' :: ( { "ProgressUpdateStreamName" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) } -> {"ProgressUpdateStreamName" :: NullOrUndefined.NullOrUndefined (ProgressUpdateStream) } ) -> ProgressUpdateStreamSummary
newProgressUpdateStreamSummary'  customize = (ProgressUpdateStreamSummary <<< customize) { "ProgressUpdateStreamName": (NullOrUndefined Nothing) }



newtype ProgressUpdateStreamSummaryList = ProgressUpdateStreamSummaryList (Array ProgressUpdateStreamSummary)
derive instance newtypeProgressUpdateStreamSummaryList :: Newtype ProgressUpdateStreamSummaryList _
derive instance repGenericProgressUpdateStreamSummaryList :: Generic ProgressUpdateStreamSummaryList _
instance showProgressUpdateStreamSummaryList :: Show ProgressUpdateStreamSummaryList where
  show = genericShow
instance decodeProgressUpdateStreamSummaryList :: Decode ProgressUpdateStreamSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProgressUpdateStreamSummaryList :: Encode ProgressUpdateStreamSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PutResourceAttributesRequest = PutResourceAttributesRequest 
  { "ProgressUpdateStream" :: (ProgressUpdateStream)
  , "MigrationTaskName" :: (MigrationTaskName)
  , "ResourceAttributeList" :: (ResourceAttributeList)
  , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun)
  }
derive instance newtypePutResourceAttributesRequest :: Newtype PutResourceAttributesRequest _
derive instance repGenericPutResourceAttributesRequest :: Generic PutResourceAttributesRequest _
instance showPutResourceAttributesRequest :: Show PutResourceAttributesRequest where
  show = genericShow
instance decodePutResourceAttributesRequest :: Decode PutResourceAttributesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutResourceAttributesRequest :: Encode PutResourceAttributesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutResourceAttributesRequest from required parameters
newPutResourceAttributesRequest :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> PutResourceAttributesRequest
newPutResourceAttributesRequest _MigrationTaskName _ProgressUpdateStream _ResourceAttributeList = PutResourceAttributesRequest { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "ResourceAttributeList": _ResourceAttributeList, "DryRun": (NullOrUndefined Nothing) }

-- | Constructs PutResourceAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutResourceAttributesRequest' :: MigrationTaskName -> ProgressUpdateStream -> ResourceAttributeList -> ( { "ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ResourceAttributeList" :: (ResourceAttributeList) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } -> {"ProgressUpdateStream" :: (ProgressUpdateStream) , "MigrationTaskName" :: (MigrationTaskName) , "ResourceAttributeList" :: (ResourceAttributeList) , "DryRun" :: NullOrUndefined.NullOrUndefined (DryRun) } ) -> PutResourceAttributesRequest
newPutResourceAttributesRequest' _MigrationTaskName _ProgressUpdateStream _ResourceAttributeList customize = (PutResourceAttributesRequest <<< customize) { "MigrationTaskName": _MigrationTaskName, "ProgressUpdateStream": _ProgressUpdateStream, "ResourceAttributeList": _ResourceAttributeList, "DryRun": (NullOrUndefined Nothing) }



newtype PutResourceAttributesResult = PutResourceAttributesResult Types.NoArguments
derive instance newtypePutResourceAttributesResult :: Newtype PutResourceAttributesResult _
derive instance repGenericPutResourceAttributesResult :: Generic PutResourceAttributesResult _
instance showPutResourceAttributesResult :: Show PutResourceAttributesResult where
  show = genericShow
instance decodePutResourceAttributesResult :: Decode PutResourceAttributesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutResourceAttributesResult :: Encode PutResourceAttributesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Attribute associated with a resource.</p> <p>Note the corresponding format required per type listed below:</p> <dl> <dt>IPV4</dt> <dd> <p> <code>x.x.x.x</code> </p> <p> <i>where x is an integer in the range [0,255]</i> </p> </dd> <dt>IPV6</dt> <dd> <p> <code>y : y : y : y : y : y : y : y</code> </p> <p> <i>where y is a hexadecimal between 0 and FFFF. [0, FFFF]</i> </p> </dd> <dt>MAC_ADDRESS</dt> <dd> <p> <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code> </p> </dd> <dt>FQDN</dt> <dd> <p> <code>^[^&lt;&gt;{}\\\\/?,=\\p{Cntrl}]{1,256}$</code> </p> </dd> </dl>
newtype ResourceAttribute = ResourceAttribute 
  { "Type" :: (ResourceAttributeType)
  , "Value" :: (ResourceAttributeValue)
  }
derive instance newtypeResourceAttribute :: Newtype ResourceAttribute _
derive instance repGenericResourceAttribute :: Generic ResourceAttribute _
instance showResourceAttribute :: Show ResourceAttribute where
  show = genericShow
instance decodeResourceAttribute :: Decode ResourceAttribute where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceAttribute :: Encode ResourceAttribute where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showResourceAttributeList :: Show ResourceAttributeList where
  show = genericShow
instance decodeResourceAttributeList :: Decode ResourceAttributeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceAttributeList :: Encode ResourceAttributeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceAttributeType = ResourceAttributeType String
derive instance newtypeResourceAttributeType :: Newtype ResourceAttributeType _
derive instance repGenericResourceAttributeType :: Generic ResourceAttributeType _
instance showResourceAttributeType :: Show ResourceAttributeType where
  show = genericShow
instance decodeResourceAttributeType :: Decode ResourceAttributeType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceAttributeType :: Encode ResourceAttributeType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceAttributeValue = ResourceAttributeValue String
derive instance newtypeResourceAttributeValue :: Newtype ResourceAttributeValue _
derive instance repGenericResourceAttributeValue :: Generic ResourceAttributeValue _
instance showResourceAttributeValue :: Show ResourceAttributeValue where
  show = genericShow
instance decodeResourceAttributeValue :: Decode ResourceAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceAttributeValue :: Encode ResourceAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where
  show = genericShow
instance decodeResourceName :: Decode ResourceName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceName :: Encode ResourceName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception raised when the request references a resource (ADS configuration, update stream, migration task, etc.) that does not exist in ADS (Application Discovery Service) or in Migration Hub's repository.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where
  show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Status = Status String
derive instance newtypeStatus :: Newtype Status _
derive instance repGenericStatus :: Generic Status _
instance showStatus :: Show Status where
  show = genericShow
instance decodeStatus :: Decode Status where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatus :: Encode Status where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StatusDetail = StatusDetail String
derive instance newtypeStatusDetail :: Newtype StatusDetail _
derive instance repGenericStatusDetail :: Generic StatusDetail _
instance showStatusDetail :: Show StatusDetail where
  show = genericShow
instance decodeStatusDetail :: Decode StatusDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatusDetail :: Encode StatusDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Task object encapsulating task information.</p>
newtype Task = Task 
  { "Status" :: (Status)
  , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail)
  , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent)
  }
derive instance newtypeTask :: Newtype Task _
derive instance repGenericTask :: Generic Task _
instance showTask :: Show Task where
  show = genericShow
instance decodeTask :: Decode Task where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTask :: Encode Task where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Task from required parameters
newTask :: Status -> Task
newTask _Status = Task { "Status": _Status, "ProgressPercent": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing) }

-- | Constructs Task's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTask' :: Status -> ( { "Status" :: (Status) , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail) , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent) } -> {"Status" :: (Status) , "StatusDetail" :: NullOrUndefined.NullOrUndefined (StatusDetail) , "ProgressPercent" :: NullOrUndefined.NullOrUndefined (ProgressPercent) } ) -> Task
newTask' _Status customize = (Task <<< customize) { "Status": _Status, "ProgressPercent": (NullOrUndefined Nothing), "StatusDetail": (NullOrUndefined Nothing) }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where
  show = genericShow
instance decodeToken :: Decode Token where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeToken :: Encode Token where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception raised to indicate a request was not authorized when the <code>DryRun</code> flag is set to "true".</p>
newtype UnauthorizedOperation = UnauthorizedOperation 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnauthorizedOperation :: Newtype UnauthorizedOperation _
derive instance repGenericUnauthorizedOperation :: Generic UnauthorizedOperation _
instance showUnauthorizedOperation :: Show UnauthorizedOperation where
  show = genericShow
instance decodeUnauthorizedOperation :: Decode UnauthorizedOperation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnauthorizedOperation :: Encode UnauthorizedOperation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnauthorizedOperation from required parameters
newUnauthorizedOperation :: UnauthorizedOperation
newUnauthorizedOperation  = UnauthorizedOperation { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedOperation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedOperation' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnauthorizedOperation
newUnauthorizedOperation'  customize = (UnauthorizedOperation <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype UpdateDateTime = UpdateDateTime Types.Timestamp
derive instance newtypeUpdateDateTime :: Newtype UpdateDateTime _
derive instance repGenericUpdateDateTime :: Generic UpdateDateTime _
instance showUpdateDateTime :: Show UpdateDateTime where
  show = genericShow
instance decodeUpdateDateTime :: Decode UpdateDateTime where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDateTime :: Encode UpdateDateTime where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

