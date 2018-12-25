<#macro experience resume small=true>
    <div class="experience">
        <div class="h5">工作经历</div>
        <ul class="list-unstyled mb-0">
            <#list resume.experiences as experience>
                <li class="pb-3">
                    <ul class="list-unstyled text-left <#if small>small</#if>">
                        <li class="h6 font-weight-normal">${experience.company} (${experience.duration})</li>
                        <li>${experience.position}</li>
                        <li class="text-muted">${experience.desc}</li>
                        <li class="text-muted">${experience.website!''}</li>
                    </ul>
                </li>
            </#list>
        </ul>
    </div>
</#macro>