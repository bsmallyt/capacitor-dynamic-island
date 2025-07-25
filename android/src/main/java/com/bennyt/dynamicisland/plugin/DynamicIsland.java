package com.bennyt.dynamicisland.plugin;

import com.getcapacitor.Logger;

public class DynamicIsland {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
