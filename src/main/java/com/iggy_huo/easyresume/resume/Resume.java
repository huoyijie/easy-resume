package com.iggy_huo.easyresume.resume;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.boot.env.YamlPropertySourceLoader;
import org.yaml.snakeyaml.TypeDescription;
import org.yaml.snakeyaml.Yaml;
import org.yaml.snakeyaml.constructor.Constructor;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Created by huoyijie on 18/12/12.
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Resume {
    private Profile profile;
    private Contact contact;
    private List<Education> educations;
    private List<Experience> experiences;
    private List<Skill> skills;

    public static Resume IGGY_HUO_RESUME;
    static {
        IGGY_HUO_RESUME = new Resume();
        Profile profile = new Profile();
        Contact contact = new Contact();
        List<Education> educations = new ArrayList<>();
        educations.add(new Education(
                "软件工程,学士",
                "2005.9 - 2009.7",
                "软件学院,东北大学(985+211),沈阳",
                "http://www.neu.edu.cn/"));
        List<Experience> experiences = new ArrayList<>();
        experiences.add(new Experience(
                "美团点评",
                "since 2013.4",
                "Team Leader",
                "负责大众点评移动客户端后台开发及维护",
                "https://www.dianping.com"
        ));
        experiences.add(new Experience(
                "腾讯",
                "2011.4 - 2013.3",
                "高级Java工程师",
                "负责腾讯微博手机网站开发及维护",
                ""
        ));
        experiences.add(new Experience(
                "阿里巴巴",
                "2009.3 - 2011.3",
                "Java工程师",
                "负责(www.alibaba.com)网站付费增值业务开发及维护",
                "https://www.alibaba.com/"
        ));
        IGGY_HUO_RESUME.setProfile(profile);
        IGGY_HUO_RESUME.setContact(contact);
        IGGY_HUO_RESUME.setEducations(educations);
        IGGY_HUO_RESUME.setExperiences(experiences);
        IGGY_HUO_RESUME.setSkills(
                Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
                      .map(i -> new Skill("Skill" + i, i + "0"))
                      .collect(Collectors.toList()));
    }

    public static Resume load(String name) {
        Constructor cons = new Constructor(Resume.class);
        TypeDescription td = new TypeDescription(Resume.class);
        td.addPropertyParameters("educations", Education.class);
        td.addPropertyParameters("experiences", Experience.class);
        td.addPropertyParameters("skills", Skill.class);
        cons.addTypeDescription(td);

        Yaml yaml = new Yaml(cons);
        return yaml.load(Resume.class.getClassLoader().getResourceAsStream(String.format("static/resume/%s/info.yml", name)));
    }
}
