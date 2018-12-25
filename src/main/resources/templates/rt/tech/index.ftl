<#-- @ftlvariable name="resume" type="com.iggy_huo.easyresume.resume.Resume" -->
<#import "../../macro/html.ftl" as html_ftl>
<@html_ftl.html resume "../rt/tech/def_css.ftl">
<div class="h-100 py-4">
    <div class="resume-top row mx-0">
        <div class="introduce col-12 bg-light px-0">
            <h1 class="text-uppercase font-weight-bold
                    text-center text-monospace mt-4">${resume.profile.enName}</h1>
            <div class="px-3 pt-2">
                <p class="text-justify">
                ${resume.profile.introduce}
                </p>
                <h6 class="text-uppercase text-monospace font-italic text-muted text-right">${resume.profile.motto}</h6>
            </div>
        </div>
    </div>
    <div class="resume-bottom row pt-4 mx-0">
        <div class="resume-bottom-left col-5">
            <div class="avatar mb-4 bg-light my-box-shadow">
                <img src="${resume.profile.avatarUrl}">
            </div>
            <div class="contact mb-4 bg-light my-box-shadow">
                <h6 class="text-center pt-3">联系方式</h6>
                <p class="text-center">—————— o ——————</p>
                <ul class="list-unstyled text-center">
                    <li>${resume.contact.email}</li>
                    <li>${resume.contact.phone}</li>
                    <li>${resume.contact.liveIn}</li>
                    <li>${resume.contact.github}</li>
                </ul>
            </div>
            <div class="education bg-light my-box-shadow">
                <h6 class="text-center pt-3">教育背景</h6>
                <p class="text-center">—————— o ——————</p>
                <ul class="list-unstyled">
                    <#list resume.educations as education>
                        <li class="pb-3">
                            <div>
                                <ul class="list-unstyled text-center">
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
        </div>
        <div class="resume-bottom-right col-7">
            <div class="experience mb-4 bg-light my-box-shadow">
                <h6 class="text-left pl-4 py-3">工作经历 — o ——————</h6>
                <ul class="list-unstyled">
                    <#list resume.experiences as experience>
                        <li class="pl-4 pb-3">
                            <div>
                                <ul class="list-unstyled text-left">
                                    <li>${experience.company}(${experience.duration})</li>
                                    <li>${experience.position}</li>
                                    <li>${experience.desc}</li>
                                    <li>${experience.website!''}</li>
                                </ul>
                            </div>
                        </li>
                    </#list>
                </ul>
            </div>
            <div class="skill bg-light my-box-shadow">
                <h6 class="text-left pl-4 py-3">技能专长 — o ——————</h6>
                <div class="pl-4 pt-2">
                    <#list resume.skills as skill>
                        <span class="btn btn-sm btn-outline-dark mb-1">${skill.name}</span>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</div>
</@html_ftl.html>