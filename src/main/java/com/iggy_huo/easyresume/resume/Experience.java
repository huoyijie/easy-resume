package com.iggy_huo.easyresume.resume;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Created by huoyijie on 18/12/12.
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Experience {
    private String company;
    private String duration;
    private String position;
    private String desc;
    private String website;
}
