<#-- @ftlvariable name="resume" type="com.iggy_huo.easyresume.resume.Resume" -->
<#import "../../macro/html.ftl" as html_ftl>
<@html_ftl.html resume "../rt/bootstrap/def_css.ftl">
<div class="row mx-0 h-100">
    <div class="resume-left bg-dark col-4 px-0">
        <img class="avatar rounded-circle position-absolute" src="${resume.profile.avatarUrl}">
        <h5 class="introduce-indicator position-absolute text-white">简介</h5>
        <div class="line bg-secondary position-absolute"></div>
        <div class="introduce position-absolute text-white small">${resume.profile.introduce}</div>
        <h5 class="contact-indicator position-absolute text-white">联系方式</h5>
        <div class="line bg-secondary position-absolute"></div>
        <ul class="contact position-absolute list-unstyled text-white text-left mb-0">
            <li class="mb-1"><i class="fas fa-mail-bulk mr-2"></i>${resume.contact.email}</li>
            <li class="mb-1"><i class="fas fa-phone mr-2"></i>${resume.contact.phone}</li>
            <li class="mb-1"><i class="fas fa-building mr-2"></i>${resume.contact.liveIn}</li>
            <li class="mb-1"><a href="${resume.contact.github}"
                                target="_blank" class="text-white text-truncate"><i class="fab fa-github mr-2"></i>${resume.contact.github}</a></li>
        </ul>
        <h5 class="education-indicator position-absolute text-white">教育背景</h5>
        <div class="line bg-secondary position-absolute"></div>
        <ul class="education position-absolute list-unstyled text-white mb-0">
        <#list resume.educations as education>
            <li class="pb-3">
                <div>
                    <ul class="list-unstyled text-left">
                        <li class="mb-1">${education.degree}</li>
                        <li class="mb-1">${education.duration}</li>
                        <li class="mb-1">${education.college}</li>
                        <li class="mb-1">${education.website}</li>
                    </ul>
                </div>
            </li>
        </#list>
        </ul>
    </div>
    <div class="resume-right bg-light col-8 px-0">
        <div class="name w-100">
            <h1 class="text-uppercase text-center font-weight-bold
                text-monospace text-dark position-relative">${resume.profile.enName}</h1>
        </div>
        <h6 class="text-muted text-uppercase font-italic text-center mb-5">${resume.profile.motto}</h6>

        <h5 class="indicator-experience pl-5 mb-2"><i class="fas fa-pencil-ruler mr-2"></i>工作经历</h5>
        <div class="line-long bg-dark float-right"></div>
        <ul class="list-unstyled mb-0 px-5 py-4">
        <#list resume.experiences as experience>
            <li class="pb-3">
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
        <h5 class="indicator-skill pl-5 mb-2"><i class="fas fa-laptop-code mr-2"></i>技能专长</h5>
        <div class="line-long bg-dark float-right"></div>
        <div class="px-5 py-4 text-left">
        <#list resume.skills as skill>
            <span class="btn btn-sm btn-outline-dark mb-1">${skill.name}</span>
        </#list>
        </div>
    </div>
</div>
</@html_ftl.html>