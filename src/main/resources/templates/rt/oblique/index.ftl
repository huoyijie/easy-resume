<#-- @ftlvariable name="resume" type="com.iggy_huo.easyresume.resume.Resume" -->
<#import "../../macro/html.ftl" as html_ftl>
<#import "../../macro/component/skill.ftl" as skill_ftl>
<#import "../../macro/component/introduce.ftl" as introduce_ftl>
<#import "../../macro/component/contact.ftl" as contact_ftl>
<#import "../../macro/component/education.ftl" as education_ftl>
<#import "../../macro/component/experience.ftl" as experience_ftl>
<#import "../../macro/component/profile.ftl" as profile_ftl>
<#--<link rel="stylesheet" href="/css/lib/bootstrap.css"/>
<link rel="stylesheet" href="/css/lib/all.css"/>-->
<@html_ftl.html resume "../rt/oblique/def_css.ftl">
<div class="triangle"></div>
<@profile_ftl.profile resume/>

<div class="resume-body">
    <@experience_ftl.experience resume/>
    <@education_ftl.education resume/>
    <@skill_ftl.skill resume/>
    <@introduce_ftl.introduce resume/>
    <@contact_ftl.contact resume/>
</div>
</@html_ftl.html>