.class public Lcom/instagram/android/constants/InstagramURLConstants;
.super Ljava/lang/Object;
.source "InstagramURLConstants.java"


# static fields
.field public static final INSTAGRAM_HOST:Ljava/lang/String; = "instagram.com"

.field public static final INSTAGRAM_HOST_SUFFIX:Ljava/lang/String; = ".instagram.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHostInstagram(Ljava/lang/String;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 22
    if-eqz p0, :cond_1

    const-string v0, "instagram.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".instagram.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlInstagram(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/constants/InstagramURLConstants;->isHostInstagram(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
