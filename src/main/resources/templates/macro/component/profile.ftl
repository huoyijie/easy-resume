<#macro profile resume id=1>
    <#if id == 1>
        <div class="profile d-flex flex-row" style="width: 228px; height: 150px;">
            <div class="mr-4">
                <div class="name text-white text-uppercase h1 font-weight-bold float-right text-right"
                     style="width: 104px; height: 100px; margin-bottom: 10px;">${resume.profile.enName}</div>
                <div class="motto text-white font-italic small float-right text-right"
                     style="width: 104px; height: 40px;">${resume.profile.motto}</div>
            </div>
            <img class="avatar" style="width: 100px; height: 150px; object-fit: cover;"
                 src="${resume.profile.avatarUrl}">
        </div>
    <#elseif id == 2>
        <div class="profile">
            <div class="name h1 text-uppercase text-monospace font-weight-bold">${resume.profile.enName}</div>
            <div class="motto h6 text-uppercase font-italic">${resume.profile.motto}</div>
        </div>
    </#if>
</#macro>