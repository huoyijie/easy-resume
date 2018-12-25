<#macro education resume small=true>
    <div class="education">
        <div class="h5">教育背景</div>
        <ul class="list-unstyled mb-0">
            <#list resume.educations as education>
                <li class="pb-3">
                    <div>
                        <ul class="list-unstyled text-left <#if small>small</#if>">
                            <li>${education.degree}</li>
                            <li>${education.duration}</li>
                            <li>${education.college}</li>
                            <li>${education.website}</li>
                        </ul>
                    </div>
                </li>
            </#list>
        </ul>
    </div>
</#macro>