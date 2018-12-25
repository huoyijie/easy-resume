<#macro html resume def_css_ftl def_js_ftl="">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${resume.profile.name}</title>
        <link rel="stylesheet" href="/css/lib/bootstrap.css"/>
        <link rel="stylesheet" href="/css/lib/all.css"/>
        <style type="text/css">
            body {
                background-color: #6c757d;
            }

            body, .resume {
                width: 21cm;
                height: 29.68cm;
            }
        </style>
        <#include def_css_ftl>
    </head>
    <body>
        <div class="resume">
            <#nested>
        </div>
        <script src="/js/lib/jquery-3.3.1.slim.js"></script>
        <script src="/js/lib/popper.js"></script>
        <script src="/js/lib/bootstrap.js"></script>
        <script src="/js/lib/all.js"></script>
        <#if def_js_ftl != "">
            <#include def_js_ftl>
        </#if>
    </body>
    </html>
</#macro>