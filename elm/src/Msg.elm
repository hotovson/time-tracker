module Msg exposing (Msg(..), UserMsg(..))

import Material
import Material.Snackbar as Snackbar
import Route
import Types exposing (User, UserSortableField, Project, ProjectSortableField)
import Http


type Msg
    = Mdl (Material.Msg Msg)
    | Snackbar (Snackbar.Msg (Maybe Msg))
    | UserMsg' UserMsg
    | NavigateTo (Maybe Route.Location)
    | GotProjects (List Project)
    | SetNewProjectName String
    | CreateNewProject
    | CreateProjectSucceeded Project
    | CreateProjectFailed Http.Error
    | DeleteProject Project
    | DeleteProjectSucceeded Project
    | DeleteProjectFailed Http.RawError
    | GotProject Project
    | ReorderProjects ProjectSortableField
    | SetShownProjectName String
    | UpdateShownProject
    | UpdateProjectFailed Http.Error
    | UpdateProjectSucceeded Project
    | NoOp


type UserMsg
    = SetNewUserName String
    | CreateUser
    | CreateUserSucceeded User
    | CreateUserFailed Http.Error
    | DeleteUser User
    | DeleteUserSucceeded User
    | DeleteUserFailed Http.RawError
    | GotUser User
    | GotUsers (List User)
    | ReorderUsers UserSortableField
    | SetShownUserName String
    | UpdateUser
    | UpdateUserFailed Http.Error
    | UpdateUserSucceeded User
