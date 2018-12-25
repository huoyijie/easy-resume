<#-- @ftlvariable name="resume" type="com.iggy_huo.easyresume.resume.Resume" -->
<#import "../../macro/html.ftl" as html_ftl>
<@html_ftl.html resume "../rt/blue/def_css.ftl">
    <div class="resume-head-image"></div>
    <div class="resume-header row mx-0">
        <div class="top w-100 h-75 bg-info">
            <h1 class="name text-white text-center text-uppercase text-monospace font-weight-bold mt-4 mb-0">${resume.profile.enName}</h1>
            <h6 class="motto text-white text-center text-uppercase font-italic">${resume.profile.motto}</h6>
        </div>
        <div class="bottom w-100 h-25 bg-dark d-flex flex-row justify-content-center align-items-center text-white">
            <div class="mx-4"><i class="fas fa-mail-bulk mr-1"></i>${resume.contact.email}</div>
            <div class="mx-4"><i class="fas fa-phone mr-1"></i>${resume.contact.phone}</div>
            <div class="mx-4"><a href="${resume.contact.github}"
                                 target="_blank" class="text-white text-truncate"><i class="fab fa-github mr-1"></i>${resume.contact.github}</a></div>
        </div>
    </div>
    <div class="resume-body row bg-light mx-0 p-4">
        <div class="left col-8 pl-0 d-flex flex-column">
            <div class="experience h-50">
                <h4 class="text-white bg-info pl-2 mb-3"><i class="fas fa-pencil-ruler mr-2"></i>工作经历</h4>
                <div>
                    <ul class="list-unstyled">
                        <#list resume.experiences as experience>
                            <li class="d-flex flex-row pb-3">
                                <h5 class="text-info w-25">${experience.duration}</h5>
                                <div class="w-75">
                                    <ul class="list-unstyled text-left">
                                        <li class="h5">${experience.company}</li>
                                        <li>${experience.position}</li>
                                        <li class="text-muted">${experience.desc}</li>
                                        <li class="text-muted">${experience.website!''}</li>
                                    </ul>
                                </div>
                            </li>
                        </#list>
                    </ul>
                </div>
            </div>
            <div class="skill h-50">
                <h4 class="text-white bg-info pl-2 mb-3"><i class="fas fa-laptop-code mr-2"></i>技能专长</h4>
                <div>
                    <div class="pt-2 text-left">
                        <#list resume.skills as skill>
                            <span class="btn btn-sm btn-outline-dark mb-1">${skill.name}</span>
                        </#list>
                    </div>
                </div>
            </div>
        </div>
        <div class="right col-4 pr-0 d-flex flex-column">
            <div class="avatar mx-auto">
                <img class="avatar-img rounded-circle img-thumbnail" src="${resume.profile.avatarUrl}">
            </div>
            <div class="introduce text-center">
                <h4 class="text-white bg-info pl-2 mb-3"><i class="fas fa-hand-point-up mr-2"></i>简介</h4>
                <div>${resume.profile.introduce}</div>
            </div>
            <div class="education">
                <h4 class="text-white bg-info pl-2 mb-3"><i class="fas fa-chalkboard-teacher mr-2"></i>教育背景</h4>
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
    </div>
</@html_ftl.html>