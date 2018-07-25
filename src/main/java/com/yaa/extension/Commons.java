package com.yaa.extension;


import org.springframework.stereotype.Component;

import java.util.Random;

/**
 * 主题公共函数
 * <p>
 * Created by 13 on 2017/2/21.
 */
@Component
public final class Commons {

    private static final String[] ICONS = {"bg-ico-book", "bg-ico-game", "bg-ico-note", "bg-ico-chat", "bg-ico-code", "bg-ico-image", "bg-ico-web", "bg-ico-link", "bg-ico-design", "bg-ico-lock"};

    /**
     * 显示文章图标
     *
     * @return
     */
    public static String show_icon() {
        return show_icon(new Random().nextInt(6));
    }

    /**
     * 显示文章图标
     *
     * @param cid
     * @return
     */
    private static String show_icon(int cid) {
        return ICONS[cid % ICONS.length];
    }


}
