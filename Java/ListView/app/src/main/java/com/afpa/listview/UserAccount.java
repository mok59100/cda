package com.afpa.listview;

public class UserAccount {

    public static final  String userName = null;
    public static final  String userType = null;
    public static final  boolean active = false;

    public UserAccount(String françois, String admin, boolean b) {
    }


    @Override
    public String toString() {
        return this.userName+"("+this.userType+")";
    }

}
