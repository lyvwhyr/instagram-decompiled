.class public Lcom/instagram/flickr/FlickrConstants;
.super Ljava/lang/Object;
.source "FlickrConstants.java"

# interfaces
.implements Lcom/instagram/oauth/OAuthConstants;


# static fields
.field public static final PREF_FILE:Ljava/lang/String; = "flickrPreferences"


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
    .line 13
    const-string v0, "db9f890529814cc682dae202eb074521"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "a9fd1ea499854a93bdb89e12d00e56a0"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
