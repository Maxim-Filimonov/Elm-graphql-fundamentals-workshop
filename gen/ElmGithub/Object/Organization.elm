-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.Organization exposing (AvatarUrlOptionalArguments, MemberStatusesOptionalArguments, MembersOptionalArguments, MembersWithRoleOptionalArguments, PendingMembersOptionalArguments, PinnedRepositoriesOptionalArguments, ProjectRequiredArguments, ProjectsOptionalArguments, RepositoriesOptionalArguments, RepositoryRequiredArguments, TeamRequiredArguments, TeamsOptionalArguments, avatarUrl, databaseId, description, email, id, isVerified, location, login, memberStatuses, members, membersWithRole, name, newTeamResourcePath, newTeamUrl, organizationBillingEmail, pendingMembers, pinnedRepositories, project, projects, projectsResourcePath, projectsUrl, repositories, repository, requiresTwoFactorAuthentication, resourcePath, samlIdentityProvider, team, teams, teamsResourcePath, teamsUrl, url, viewerCanAdminister, viewerCanCreateProjects, viewerCanCreateRepositories, viewerCanCreateTeams, viewerIsAMember, websiteUrl)

import ElmGithub.Enum.ProjectState
import ElmGithub.Enum.RepositoryAffiliation
import ElmGithub.Enum.RepositoryPrivacy
import ElmGithub.Enum.TeamPrivacy
import ElmGithub.Enum.TeamRole
import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) ElmGithub.Object.Organization
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : SelectionSet (Maybe String) ElmGithub.Object.Organization
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : SelectionSet (Maybe String) ElmGithub.Object.Organization
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.Organization
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether the organization has verified its profile email and website.
-}
isVerified : SelectionSet Bool ElmGithub.Object.Organization
isVerified =
    Object.selectionForField "Bool" "isVerified" [] Decode.bool


{-| The organization's public profile location.
-}
location : SelectionSet (Maybe String) ElmGithub.Object.Organization
location =
    Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : SelectionSet String ElmGithub.Object.Organization
login =
    Object.selectionForField "String" "login" [] Decode.string


type alias MemberStatusesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument ElmGithub.InputObject.UserStatusOrder
    }


{-| Get the status messages members of this entity have set that are either public or visible only to the organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for user statuses returned from the connection.

-}
memberStatuses : (MemberStatusesOptionalArguments -> MemberStatusesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserStatusConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
memberStatuses fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeUserStatusOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "memberStatuses" optionalArgs object_ identity


type alias MembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "members" optionalArgs object_ identity


type alias MembersWithRoleOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
membersWithRole : (MembersWithRoleOptionalArguments -> MembersWithRoleOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.OrganizationMemberConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
membersWithRole fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "membersWithRole" optionalArgs object_ identity


{-| The organization's public profile name.
-}
name : SelectionSet (Maybe String) ElmGithub.Object.Organization
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
newTeamResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamResourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
newTeamUrl =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The billing email for the organization.
-}
organizationBillingEmail : SelectionSet (Maybe String) ElmGithub.Object.Organization
organizationBillingEmail =
    Object.selectionForField "(Maybe String)" "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


type alias PendingMembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who have been invited to join this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pendingMembers : (PendingMembersOptionalArguments -> PendingMembersOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
pendingMembers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pendingMembers" optionalArgs object_ identity


type alias PinnedRepositoriesOptionalArguments =
    { privacy : OptionalArgument ElmGithub.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument ElmGithub.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe ElmGithub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe ElmGithub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of repositories this user has pinned to their profile

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the
    connection. For example, OWNER will include only repositories that the
    current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the
    connection. For example, OWNER will include only repositories that the
    organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.RepositoryConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum ElmGithub.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum ElmGithub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum ElmGithub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnedRepositories" optionalArgs object_ identity


type alias ProjectRequiredArguments =
    { number : Int }


{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Project -> SelectionSet (Maybe decodesTo) ElmGithub.Object.Organization
project requiredArgs object_ =
    Object.selectionForCompositeField "project" [ Argument.required "number" requiredArgs.number Encode.int ] object_ (identity >> Decode.nullable)


type alias ProjectsOptionalArguments =
    { orderBy : OptionalArgument ElmGithub.InputObject.ProjectOrder
    , search : OptionalArgument String
    , states : OptionalArgument (List ElmGithub.Enum.ProjectState.ProjectState)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of projects under the owner.

  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.ProjectConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, search = Absent, states = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeProjectOrder, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum ElmGithub.Enum.ProjectState.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "projects" optionalArgs object_ identity


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
projectsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "projectsResourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
projectsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "projectsUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias RepositoriesOptionalArguments =
    { privacy : OptionalArgument ElmGithub.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument ElmGithub.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe ElmGithub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe ElmGithub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , isFork : OptionalArgument Bool
    }


{-| A list of repositories that the user owns.

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the
    connection. For example, OWNER will include only repositories that the
    current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the
    connection. For example, OWNER will include only repositories that the
    organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.RepositoryConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum ElmGithub.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum ElmGithub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum ElmGithub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "isFork" filledInOptionals.isFork Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity


type alias RepositoryRequiredArguments =
    { name : String }


{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet (Maybe decodesTo) ElmGithub.Object.Organization
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| When true the organization requires all members, billing managers, and outside
collaborators to enable two-factor authentication.
-}
requiresTwoFactorAuthentication : SelectionSet (Maybe Bool) ElmGithub.Object.Organization
requiresTwoFactorAuthentication =
    Object.selectionForField "(Maybe Bool)" "requiresTwoFactorAuthentication" [] (Decode.bool |> Decode.nullable)


{-| The HTTP path for this organization.
-}
resourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The Organization's SAML Identity Providers
-}
samlIdentityProvider : SelectionSet decodesTo ElmGithub.Object.OrganizationIdentityProvider -> SelectionSet (Maybe decodesTo) ElmGithub.Object.Organization
samlIdentityProvider object_ =
    Object.selectionForCompositeField "samlIdentityProvider" [] object_ (identity >> Decode.nullable)


type alias TeamRequiredArguments =
    { slug : String }


{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Team -> SelectionSet (Maybe decodesTo) ElmGithub.Object.Organization
team requiredArgs object_ =
    Object.selectionForCompositeField "team" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias TeamsOptionalArguments =
    { privacy : OptionalArgument ElmGithub.Enum.TeamPrivacy.TeamPrivacy
    , role : OptionalArgument ElmGithub.Enum.TeamRole.TeamRole
    , query : OptionalArgument String
    , userLogins : OptionalArgument (List String)
    , orderBy : OptionalArgument ElmGithub.InputObject.TeamOrder
    , ldapMapped : OptionalArgument Bool
    , rootTeamsOnly : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of teams in this organization.

  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.TeamConnection -> SelectionSet decodesTo ElmGithub.Object.Organization
teams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum ElmGithub.Enum.TeamPrivacy.toString), Argument.optional "role" filledInOptionals.role (Encode.enum ElmGithub.Enum.TeamRole.toString), Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeTeamOrder, Argument.optional "ldapMapped" filledInOptionals.ldapMapped Encode.bool, Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "teams" optionalArgs object_ identity


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
teamsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "teamsResourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
teamsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "teamsUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this organization.
-}
url : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Organization
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool ElmGithub.Object.Organization
viewerCanAdminister =
    Object.selectionForField "Bool" "viewerCanAdminister" [] Decode.bool


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : SelectionSet Bool ElmGithub.Object.Organization
viewerCanCreateProjects =
    Object.selectionForField "Bool" "viewerCanCreateProjects" [] Decode.bool


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : SelectionSet Bool ElmGithub.Object.Organization
viewerCanCreateRepositories =
    Object.selectionForField "Bool" "viewerCanCreateRepositories" [] Decode.bool


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : SelectionSet Bool ElmGithub.Object.Organization
viewerCanCreateTeams =
    Object.selectionForField "Bool" "viewerCanCreateTeams" [] Decode.bool


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : SelectionSet Bool ElmGithub.Object.Organization
viewerIsAMember =
    Object.selectionForField "Bool" "viewerIsAMember" [] Decode.bool


{-| The organization's public profile URL.
-}
websiteUrl : SelectionSet (Maybe ElmGithub.ScalarCodecs.Uri) ElmGithub.Object.Organization
websiteUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "websiteUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
