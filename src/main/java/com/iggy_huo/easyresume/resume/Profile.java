package com.iggy_huo.easyresume.resume;

/**
 * Created by huoyijie on 18/12/12.
 */

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Profile {
    private String name = "霍一杰";
    private String enName = "yijie huo";
    private String avatarUrl = "/resume/iggy-huo/id.png";
    private String introduce = "10年架构设计开发经验，擅长高并发、高可用系统技术选型、架构、开发和维护，可以胜任前后端全栈开发维护工作。擅长JAVA、喜欢PYTHON，了解其他新兴语言适用场景，如GO、SCALA、GROOVY、NODE.JS等。对人工智能、深度学习比较感兴趣。目标：高级JAVA工程师，架构师，技术经理。";
    private String motto = "SIMPLE AND RELIABLE";
}
