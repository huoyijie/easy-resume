<#-- @ftlvariable name="resume" type="com.iggy_huo.easyresume.resume.Resume" -->
<#import "../../macro/html.ftl" as html_ftl>
<@html_ftl.html resume "../rt/simple/def_css.ftl">
<div class="resume-header bg-dark">
    <div class="name border border-white">
        <h1 class="text-uppercase text-center text-monospace text-white">${resume.profile.enName}</h1>
    </div>
    <div class="motto text-uppercase font-italic text-center text-white"><span>${resume.profile.motto}</span></div>
</div>
<div class="resume-body bg-light row w-100 mx-0">
    <div class="col-6 w-50 px-0">
        <div class="profile text-right">${resume.profile.introduce}</div>
        <div class="experience">
            <ul class="list-unstyled">
                <#list resume.experiences as experience>
                    <li class="pb-3">
                        <div>
                            <ul class="list-unstyled text-right">
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
    </div>
    <div class="col-6 w-50 px-0">
        <div class="contact">
            <ul class="list-unstyled text-left">
                <li><i class="fas fa-mail-bulk mr-2"></i>${resume.contact.email}</li>
                <li><i class="fas fa-phone mr-2"></i>${resume.contact.phone}</li>
                <li><i class="fas fa-building mr-2"></i>${resume.contact.liveIn}</li>
                <li><a href="${resume.contact.github}"
                       target="_blank" class="text-body">
                    <i class="fab fa-github mr-2"></i>${resume.contact.github}</a></li>
            </ul>
        </div>
        <div class="education">
            <ul class="list-unstyled">
                <#list resume.educations as education>
                    <li class="pb-3">
                        <div>
                            <ul class="list-unstyled text-left">
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
        <div class="skill">
            <div class="pt-2 text-left">
                <#list resume.skills as skill>
                    <span class="btn btn-sm btn-outline-dark mb-1">${skill.name}</span>
                </#list>
            </div>
        </div>
    </div>
</div>
<div class="line split-line-v"></div>
<div class="line line-profile-contact"></div>
<div class="node node-profile rounded-circle bg-light"></div>
<div class="indicator indicator-profile text-center bg-light">简介</div>
<div class="indicator indicator-contact text-center bg-light">联系方式</div>
<div class="line line-short line-education"></div>
<div class="node node-education rounded-circle bg-light"></div>
<div class="indicator indicator-education text-center bg-light">教育背景</div>
<div class="line line-short line-experience"></div>
<div class="node node-experience rounded-circle bg-light"></div>
<div class="indicator indicator-experience text-center bg-light">工作经历</div>
<div class="line line-short line-skill"></div>
<div class="node node-skill rounded-circle bg-light"></div>
<div class="indicator indicator-skill text-center bg-light">技能专长</div>
</@html_ftl.html>