<#macro skill resume small=true>
    <div class="skill mb-3">
        <div class="h5">技能专长</div>
        <#list resume.skills as skill>
            <span class="rounded border border-secondary mb-1 <#if small>small</#if>">${skill.name}</span>
        </#list>
    </div>
</#macro>