/*
    Author: Freddo

    Creates a debriefing section for admins containing all
    log messasges sent during the mission.
    Displayed in mission debriefing screen.

    Include this file in description.ext of your mission

    Example:
    class CfgDebriefingSections {
        #include "\z\oeta\addons\adminmenu\debriefAdminLog.inc"
    };
*/

class oeta_adminlog
{
    title = "OETA Log";
    variable = "oeta_adminmenu_debrief";
};
