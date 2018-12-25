<#macro contact resume small=true>
    <div class="contact d-flex flex-row justify-content-center align-items-center <#if small>small</#if>">
        <div class="mx-4"><i class="fas fa-mail-bulk mr-1"></i>${resume.contact.email}</div>
        <div class="mx-4"><i class="fas fa-phone mr-1"></i>${resume.contact.phone}</div>
        <div class="mx-4 text-truncate"><i class="fab fa-github mr-1"></i>${resume.contact.github}</div>
    </div>
</#macro>