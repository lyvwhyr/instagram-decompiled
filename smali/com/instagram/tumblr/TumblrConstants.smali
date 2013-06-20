.class public Lcom/instagram/tumblr/TumblrConstants;
.super Ljava/lang/Object;
.source "TumblrConstants.java"

# interfaces
.implements Lcom/instagram/oauth/OAuthConstants;


# static fields
.field public static final PREF_FILE:Ljava/lang/String; = "tumblrPreferences"

.field public static final XAUTH_URL:Ljava/lang/String; = "https://www.tumblr.com/oauth/access_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "ec06322a460e44a7b8dcadcd49f39374"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "b8382364355a42af9b130a7a68feb22a"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
