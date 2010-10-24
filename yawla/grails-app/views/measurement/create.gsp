

<%@ page import="yawla.Measurement" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'measurement.label', default: 'Measurement')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${measurementInstance}">
            <div class="errors">
                <g:renderErrors bean="${measurementInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="measurement"><g:message code="measurement.measurement.label" default="Measurement" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: measurementInstance, field: 'measurement', 'errors')}">
                                    <g:textField name="measurement" value="${measurementInstance?.measurement}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mtime"><g:message code="measurement.mtime.label" default="Mtime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: measurementInstance, field: 'mtime', 'errors')}">
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mtype"><g:message code="measurement.mtype.label" default="Mtype" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: measurementInstance, field: 'mtype', 'errors')}">
                                    <g:textField name="mtype" value="${measurementInstance?.mtype}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="unit"><g:message code="measurement.unit.label" default="Unit" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: measurementInstance, field: 'unit', 'errors')}">
                                    <g:textField name="unit" value="${measurementInstance?.unit}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
