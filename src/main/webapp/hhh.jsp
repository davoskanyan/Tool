<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://www.dad.ui.synisys.com" %>

<%@ page import="com.synisys.idm.um.api.Token" %>
<%@ page import="com.synisys.idm.um.api.AuthenticationStatus" %>
<%@ page import="com.synisys.idm.languages.api.LanguageHelper" %>
<%@ page import="com.synisys.idm.ui.util.ModuleLoader" %>
<%@ include file="admin/common/languages-common.jsp" %>

<!DOCTYPE html>
<html dir="${direction}">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10"/>

    <!-- idm-ui-controls -->
    <%--   <link href="<c:url value="/controls/resources/com/synisys/idm/view/controls/ReportBuilder/css/accordion.css" />" rel="stylesheet" type="text/css" /> --%>
    <link href="<c:url value="/resources/common/scripts/native/combobox/combobox.css" />" rel="stylesheet"
          type="text/css"/>
    <link href="<c:url value="/resources/common/jquery/plugins/contextMenu/jquery.contextMenu.css" />" rel="stylesheet"
          type="text/css"/>
    <link href="<c:url value="/resources/common/jquery/plugins/jquery.datatable/1.9.4/custom/css/demo_table.css" />"
          rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/common/jquery/plugins/jquery.datatable/1.9.4/custom/css/demo_table_jui.css" />"
          rel="stylesheet" type="text/css"/>

    <link href="<c:url value="/resources/common/scripts/native/multiselectcombo/mulselect.css" />" rel="stylesheet"
          type="text/css"/>
    <link href="<c:url value="/resources/scripts/main/map/styles/map.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/com/synisys/idm/ui/map/ui/css/map.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/com/synisys/idm/ui/map/ui/css/colorPalette.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/scripts/main/chart/chartCSS.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/scripts/main/bubble/idm-bubble.css" />" rel="stylesheet" type="text/css"/>

    <link href="<c:url value="/controls/resources/com/synisys/idm/concatenatedCss/commonModulesOutput.css" />"
          rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/controls/resources/com/synisys/idm/concatenatedCss/reportingModulesOutput.css" />"
          rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/controls/resources/com/synisys/idm/concatenatedCss/viewManagerModulesOutput.css" />"
          rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/settings/um/styles/ui-spinner/ui.spinner.css"/>" rel="stylesheet"
          type="text/css"/>
    <script src="<c:url value="/jquery/scripts/jquery-1.7.2.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/jquery/scripts/jquery-ui-1.8.18.custom.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/common/scripts/3rdparty/clamp/clamp.min.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/resources/common/jquery/plugins/tiny_mce/tiny_mce.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/jquery/plugins/ui-spinner/ui.spinner.min.js" />"></script>
    <%-- <script src="<c:url value="/resources/common/jquery/plugins/tiny_mce/tiny_mce_popup.js"/>" type="text/javascript"></script> --%>
    <script src="<c:url value="/resources/common/jquery/plugins/tiny_mce/jquery.tinymce.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/controls/js/commonModulesOutput.js"/>" type="text/javascript"></script>

    <script type="text/javascript"
            src="<c:url value="/resources/settings/um/scripts/user-management/passwordrecovery.js"/>"></script>

    <script src="<c:url value="/resources/common/scripts/native/combobox/sis.combobox-0.0.2.js" />"
            type="text/javascript"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/Filter.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/FilterComponent.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/Menu.js" />"></script>
    <%--   <script src="<c:url value="/resources/scripts/main/filter/module.min.js" />"></script>   --%>
    <script src="<c:url value="/idm-webjars/shell/js/filter/FilterResult.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/FilterButton.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/FilterContainerComponent.js" />"></script>

    <script src="<c:url value="/controls/js/reportingModulesOutput.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/controls/js/viewManagerModulesOutput.js"/>" type="text/javascript"></script>
    <%-- <script src="<c:url value="/resources/com/synisys/idm/test/test.js"/>" type="text/javascript"></script> --%>

    <script src="<c:url value="/resources/com/synisys/idm/HomeBuilder/view/ViewSearchControlForHome.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/resources/com/synisys/idm/HomeBuilder/view/HomeModifyData.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/resources/com/synisys/idm/HomeBuilder/view/HomeModify.js"/>"
            type="text/javascript"></script>
    <script src="<c:url value="/resources/com/synisys/idm/HomeBuilder/view/HomeBuilder.js"/>"
            type="text/javascript"></script>

    <%--
    <script src="<c:url value="/resources/common/jquery/plugins/jquery-scrolltofixed-min.js" />" type="text/javascript"></script> --%>
    <script src="<c:url value="/resources/common/jquery/plugins/jquery.md5.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/common/jquery/plugins/contextMenu/jquery.contextMenu.sis-patched.js" />"
            type="text/javascript"></script>
    <%--   <script src="<c:url value="/resources/common/jquery/plugins/jquery.colorPicker.js" />" type="text/javascript"></script> --%>
    <%--   <script src="<c:url value="/resources/common/jquery/plugins/jquery.mousewheel.js" />" type="text/javascript"></script> --%>


    <%--   <script src="<c:url value="/resources/common/scripts/native/multiselectcombo/multiselect.js" />" type="text/javascript"></script> --%>
    <%--   <script src="<c:url value="/resources/common/scripts/native/spinner.js" />" type="text/javascript"></script> --%>


    <script src="<c:url value="/resources/common/scripts/native/sis.contextmenu-0.0.1.js" />"
            type="text/javascript"></script>

    <script src="<c:url value="/resources/settings/um/scripts/locator.js" />" type="text/javascript"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.20&sensor=false"></script>
    <%@ include file="theme.jsp" %>


    <%--   <script src="<c:url value="/controls/js/com/synisys/idm/view/controls/ReportBuilder/Properties/AccordionControl.js" />"></script> --%>
    <%--   <script src="<c:url value="/controls/js/com/synisys/idm/view/controls/ReportBuilder/Properties/AccordionSectionControl.js" />"></script> --%>


    <%--
        <script src="<c:url value="/controls/js/com/synisys/idm/reporting/api/ViewManager/ViewManagerContext.js" />" type="text/javascript"></script>
    --%>
    <%-- <script src="<c:url value="/controls/js/com/synisys/idm/reporting/api/ViewManager/ViewManagerContext.js" />" type="text/javascript"></script> --%>

    <script>
        var $ViewManagerContext;
        (function () {
            $Application.setDebugMode(false);
            var resourceManager = new com.synisys.idm.controller.ResourceManager();
            resourceManager.initialize();
            $Application.setResourceManager(resourceManager);
        })();
    </script>

    <!-- idm-ui-controls -->

    <link href="<c:url value="/resources/common/style.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/common/mainCSS.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/ui/style.css" />" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/common/jqueryUICustomDialog.css" />" rel="stylesheet" type="text/css"/>

    <link href="<c:url value="/jquery/themes/smoothness/jquery-ui-1.8.18.custom.css" />" rel="stylesheet"
          type="text/css"/>

    <script src="<c:url value="/idm-webjars/shell/js/api/base/Object.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/base/Language.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/base/Currency.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/base/enums.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/base/Observable.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/kb/DataSet.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/api/kb/ExpressionContext.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/common/SystemConfiguration.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/common/Context.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/common/MlService.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/common/PathService.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/StateService.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/common/PageState.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/SessionMonitor.js" />"></script>

    <script src="<c:url value="/resources/scripts/main/ui/ReportControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/ListControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/DashboardControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/WysiwygControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/WysiwygControlItem.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/HomeControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/PortfolioControl.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/ContentPageControl.js" />"></script>

    <script src="<c:url value="/resources/scripts/main/ui/utils.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/Dialog.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/StandartToolBar.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/ViewComponent.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/ExternalUrlViewComponent.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/DialogToolBar.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/DialogComponent.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/DeTabControl.js" />"></script>
    <script src="<c:url value="/idm-webjars/shell/js/ui/DeReportDialogComponent.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/AsyncComponentProxy.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/OrganizerComponent.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/UIOrganizer.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/ViewWidget.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/SubtabWidget.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/TabWidget.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/LocalStorage.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/HtmlLocalStorage.js" />"></script>
    <script src="<c:url value="/resources/scripts/main/ui/SimpleLocalStorage.js" />"></script>

    <script src="<c:url value="/idm-webjars/shell/js/filter/DropComponent.js"/>"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/Popup.js"/>"></script>
    <script src="<c:url value="/idm-webjars/shell/js/filter/Operations.js"/>"></script>


    <link rel="shortcut icon" href="<c:url value="/system/images/favicon.ico" />"/>

    <script>

        $(document).ready(function () {
            <%
      //send file checksums if unknown browser or browser is not ie7,8
            String userAgent = request.getHeader("user-agent");

            if(userAgent == null || (userAgent.indexOf("MSIE 8.0") == -1 && userAgent.indexOf("MSIE 7.0") == -1) || userAgent.indexOf("compatible; MSIE")!=-1){

                %>
            var fileCheckSums = <%=ModuleLoader.getInstance().getAllFileCheckSums()%>;
            com.synisys.idm.controller.LocalStorage.getInstance().init(fileCheckSums);
            <%
        }
        %>
            if (window.location.hash && window.location.hash.length > 0) {
                window.location = window.location.href.substring(0, window.location.href.length - window.location.hash.length);
                return;
            }
            idm.ui.widgets.tabWidget = new idm.ui.widgets.TabWidget();
            idm.previouseWidth = $(window).width();

            var bannerheight = parseInt($("#header").css('height'));

            idm.headerHeight = bannerheight;
            $(window).resize(function (event, isTriggeredProgrammatically) {
                //idm.onWindowResized(idm.ui.widgets.tabWidget.subTabWidget.viewWidget.menu.isPinned);
                if (!isTriggeredProgrammatically) {
                    idm.cancelPopup();
                }
            });

            var $contentWidth = $('#contentfull').width();
//			$listheader = $('#list-header');
//			$listheader.css("width", $contentWidth+3);
            // Creates animation of loading.
            $('<div class="center-align sis-loading3" ><div class="sis-loading-cont3"> <div class="sis-loading-img3"></div>' +
                    ' <div class="spr5"> </div><span class="sis-loading-text3 fontSize3" > Loading...</span></div>')
                    .css('margin-top', '0')
                    .attr('id', 'loading-id').prependTo('#maincontainer');
            $('<div></div>').attr('id', 'modal-background')
                    .addClass('modal-background')
                    .prependTo('#maincontainer');

            idm.loading = $('#maincontainer #loading-id');

            $Application.setContext(idm.ui.Context.getInstance());

            var resourceManager = $Application.getResourceManager();
            resourceManager.setResourcePathResolver({
                "resolveUrl": function (relativeUrl) {
                    return idm.ui.PathService.getContextPath() + '/controls/' + relativeUrl;
                }
            });
            //Showing loading screen
            idm.ui.notifier.notify(idm.ui.EventType.START_LOADING);

            resourceManager.setResourcePathResolver({
                "resolveUrl": function (relativeUrl) {
                    return relativeUrl;
                }
            });
            resourceManager.loadHtmlTemplates([idm.ui.PathService.getContextPath() +
                    '/controls/resources/com/synisys/idm/ui/ControlsTemplates.xml'],
                    function () {
                        $.ajax({
                            url: idm.ui.PathService.getJsonedUrl(document.location.href),
                            dataType: 'json',
                            cache: false,
                            success: function (data) {
                                idm.ui.notifier.notify(idm.ui.EventType.END_LOADING);

                                resourceManager.setLanguages({
                                    "languages": data.languages,
                                    "languageId": data.languageId
                                });

                                idm.ui.MlService.getInstance().init(data);

                                var context = idm.ui.Context.getInstance();
                                context.initCurrencies(data.currencies);
                                context.setCurrentAppPath(data.currentAppPath);
                                context.setSourceAppId(data.sourceApplicationId);
                                context.initPageState(data);
                                context.setPermissions(data.permissions);
                                context.setHasGoogleMaps(data.hasGoogleMaps);
                                context.setIsSvgMap(data.isSvgMap);
                                loadExternalModules();
                                context.initSessionMonitor(data.languageId, data.userHash === 0);

                                idm.ui.widgets.tabWidget.init(data);
                                //idm.onWindowResized(idm.ui.widgets.tabWidget.subTabWidget.viewWidget.menu.isPinned);

                                idm.ui.widgets.tabWidget.repaint();
                                if (idm.historySupport) {
                                    if (typeof window.history.replaceState === 'function') {
                                        history.replaceState({
                                                    tabId: idm.ui.widgets.tabWidget.selectedTabId,
                                                    suUmControllerHelperbTabId: idm.ui.widgets.tabWidget.subTabWidget.selectedSubTabId,
                                                    viewId: idm.ui.widgets.tabWidget.subTabWidget.viewWidget.selectedViewId
                                                },
                                                null, document.location.href);
                                    }
                                }

                                var windowResized = function () {
                                    idm.ui.widgets.tabWidget.subTabWidget.viewWidget.viewComponent.resize();
                                };

                                $(window).unbind('resize.Controller', windowResized)
                                        .bind('resize.Controller', windowResized);

                                $ViewManagerContext = new com.synisys.idm.reporting.api.ViewManager.ViewManagerContext();
                                $ViewManagerContext.setBaseUrl(idm.ui.PathService.getContextPath() + "/reporting/manager/");
                                $ViewManagerContext.initialize();

                                // show header menu after loading is being finished
                                $("#menuItemsContainer").show();
                                /*$ExpressionContext = new idm.api.kb.ExpressionContext();
                                 $ExpressionContext.initialize();*/
                            }
                        });
                    });

            var loadExternalModules = function () {
                resourceManager.setResourcePathResolver({
                    "resolveUrl": function (relativeUrl) {
                        return relativeUrl;
                    }
                });
                com.synisys.idm.controller.LocalStorage.getInstance().loadFiles(<%=ModuleLoader.getInstance().getModuleDescriptionFilesJson()%>, function (fileContents) {
                    com.synisys.idm.controller.loadCoreResources(initialize, fileContents[0], false);
                    function initialize() {
                        for (var i = 0; i < fileContents.length; i++) {
                            resourceManager.addModules($.parseJSON(fileContents[i]));
                        }

                        resourceManager.loadModules(["main"], function () {
                        });
                    }

                });
            };


        });


    </script>

    <script data-main="<c:url value="/resources/scripts/main/boot" />"
            src="<c:url value="/resources/common/scripts/3rdparty/require-2.1.1.min.js" />"
            type="text/javascript"></script>

    <title><t:text key="SC_TITLE_SHORT"/></title>
    <jsp:include page="admin/path-locator.jsp"/>
</head>

<body class="standardview">
<header id="header" class="fontSize3">
    <!-- class="header" -->
    <div id="system-row1">
        <img src="<c:url value="/system/images/system-logo.png"/>" class="float-left" id="system-logo-btn"
             style="max-height: 50px; margin: 0px 25px 4px 10px;">

        <div class="bnr-side">
            <div class=" float-right bnr-row1">
                <ul class="system-menu float-left">
                    <c:if test="${token ne null && token.status eq Success && settingsMenu.getSettingMenuItems(pageContext.request.getAttribute('javax.servlet.forward.request_uri')).size()>0 }">
                        <li class="system-popup-last-item float-right"></li>
                        <li id="settings-li-menu" class="system-popup float-right settings-button ">
                            <a href="<c:url value="/admin/" />" title="Settings" class="settings-title"
                               id="settings-tab-btn">
                                <span class="icon-cog float-left system-right-menu-icon fontSize15"> </span>

                                <div class="clear"></div>
                            </a>

                            <div class="system-popup-arrow-cont">
                                <div class="system-popup-arrow1"></div>
                                <div class="system-popup-arrow2"></div>
                            </div>
                            <div class="system-drop-down-cont">
                                <div class="system-drop-down">
                                    <%@ include file="admin/settings.jsp" %>
                                </div>
                            </div>
                        </li>
                    </c:if>
                    <jsp:include page="admin/user_credintials.jsp"/>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="float-left bnr-row2" id="menuItemsContainer" style="display: none">
                <ul class="system-menu float-left">
                    <c:forEach items="${ bean.tabObjects }" var="tab">
                    <c:choose>
                    <c:when test="${ tab.fake }">
                </ul>
                <div class="menusgap float-left"></div>
                <ul class="system-menu float-left"></c:when>
                    <c:otherwise>
                        <c:choose>
                            <c:when test="${not tab.subTabs[0].fake}">
                                <c:choose>
                                    <c:when test="${ bean.selectedTabId eq tab.id }">
                                        <li class="active-menu-item system-menu-item float-left" id="${tab.id}">
                                            <div>
                                                <c:choose>
                                                    <c:when test="${tab.type eq 'HOME'}">
                                                        <div class="home-icon-style float-left"></div>
                                                    </c:when>
                                                    <c:when test="${tab.type eq 'DASHBOARD'}">
                                                        <div class="system-menu-icon icon-reorder float-left"></div>
                                                    </c:when>
                                                    <c:when test="${tab.type eq 'PORTFOLIO'}">
                                                        <span class="system-menu-icon icon-briefcase fontSize14"></span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="${bean.currentAppPath}/${bean.sourceApplicationId}/tabs/${tab.id}.png"
                                                             class=" float-left"/>
                                                    </c:otherwise>
                                                </c:choose>
                                                <a href="${pageContext.request.contextPath}/main/${ tab.path }"
                                                   id="system-menuTab-btn"
                                                   class="haschildren float-right">${tab.title[currentLanguage]}</a>
                                            </div>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li id="${tab.id}" class="system-menu-item float-left">
                                            <div>
                                                <c:choose>
                                                    <c:when test="${tab.type eq 'HOME'}">
                                                        <div class="home-icon-style float-left"></div>
                                                    </c:when>
                                                    <c:when test="${tab.type eq 'DASHBOARD'}">
                                                        <div class="system-menu-icon icon-reorder float-left"></div>
                                                    </c:when>
                                                    <c:when test="${tab.type eq 'PORTFOLIO'}">
                                                        <span class="system-menu-icon icon-briefcase fontSize14"></span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="${bean.currentAppPath}/${bean.sourceApplicationId}/tabs/${tab.id}.png"
                                                             class=" float-left"/>
                                                    </c:otherwise>
                                                </c:choose>
                                                <a id="system-menuSubtab-btn"
                                                   href="${pageContext.request.contextPath}/main/${ tab.path }"
                                                   class="haschildren float-right">${tab.title[currentLanguage]}</a>
                                            </div>
                                            <ul>
                                                <c:forEach items="${tab.subTabs }" var="subtab">
                                                    <li id="${subtab.id}" class="system-menu-item float-left">
                                                        <a href="${pageContext.request.contextPath}/main/${tab.path}/${subtab.path}"
                                                           id="system-menuSubtabCont-btn">${subtab.title[currentLanguage]}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <c:choose>
                                    <c:when test="${ bean.selectedTabId eq tab.id }">
                                        <c:set var="selectedTab" value="${ tab }"/>
                                        <li id="${tab.id}" class="active-menu-item system-menu-item float-left">
                                            <c:choose>
                                                <c:when test="${tab.type eq 'HOME'}">
                                                    <div class="home-icon-style float-left"></div>
                                                </c:when>
                                                <c:when test="${tab.type eq 'DASHBOARD'}">
                                                    <div class="system-menu-icon icon-reorder float-left"></div>
                                                </c:when>
                                                <c:when test="${tab.type eq 'PORTFOLIO'}">
                                                    <span class="system-menu-icon icon-briefcase "></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${bean.currentAppPath}/${bean.sourceApplicationId}/tabs/${tab.id}.png"
                                                         class="float-left"/>
                                                </c:otherwise>
                                            </c:choose>
                                            <a class="float-left"
                                               href="${pageContext.request.contextPath}/main/${ tab.path }"
                                               id="system-menu-selected-tab-btn">${tab.title[currentLanguage]}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li id="${tab.id}" class="system-menu-item float-left">
                                            <c:choose>
                                                <c:when test="${tab.type eq 'HOME'}">
                                                    <div class="home-icon-style float-left"></div>
                                                </c:when>
                                                <c:when test="${tab.type eq 'DASHBOARD'}">
                                                    <div class="system-menu-icon icon-reorder float-left"></div>
                                                </c:when>
                                                <c:when test="${tab.type eq 'PORTFOLIO'}">
                                                    <span class="system-menu-icon icon-briefcase"></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${bean.currentAppPath}/${bean.sourceApplicationId}/tabs/${tab.id}.png"
                                                         class=" float-left"/>
                                                </c:otherwise>
                                            </c:choose>
                                            <a class="float-left"
                                               href="${pageContext.request.contextPath}/main/${ tab.path }"
                                               id="unknown">${ tab.title[currentLanguage] }</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:otherwise>
                        </c:choose>
                    </c:otherwise>
                    </c:choose>
                    </c:forEach>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>

    <div id="row2">

    </div>
    <div id="row3" class="fontSize3">
        <div class="views flaot-left">

        </div>
        <ul class="pr-tabs float-right" style="display:none">
            <li class="pr-tab-selected"><span class="" style="display: none;"></span>
                <a class="pr-tab btn-style1" href="javascript:void(0);" id="section-modify-btn"></a>
            </li>
            <li style="display: none;"><a class="pr-tab btn-style1" href="javascript:void(0);"
                                          id="section-filter-btn"></a></li>
        </ul>
    </div>

    <aside id="prsidebar" class="fontSize1" style="display: none;">
        <div class="pr-sidebar-title-filter bold-txt"></div>
        <div id="modifybody" class="properties-container"></div>
        <div id="filterbody" class="properties-container filter-body"></div>
    </aside>

    <div class="clear"></div>
</header>

<div id="maincontainer">
    <jsp:include page="admin/ui/mem_view_popup.jsp"/>
    <header class="content-header2" id="maincontainer-header" style="display:none">
    </header>
    <%--<div class="list-header-fixed" id="list-header" style="display:none;"></div>--%>
    <%--<div class="list-header-fixed" id="list-header" style="display:none;"></div>--%>
    <section id="contentfull" class="fontSize1 content-overflow headerless contentfull-min-width">
        <div id="view-content" class="content-style"></div>
    </section>
    <div class="clear"></div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
