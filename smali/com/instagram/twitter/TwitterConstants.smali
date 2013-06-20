.class public Lcom/instagram/twitter/TwitterConstants;
.super Ljava/lang/Object;
.source "TwitterConstants.java"

# interfaces
.implements Lcom/instagram/oauth/OAuthConstants;


# static fields
.field public static final INSTAGRAM_USERNAME:Ljava/lang/String; = "instagram"

.field public static final PREF_FILE:Ljava/lang/String; = "twitterPreferences"

.field public static final PREF_USERNAME:Ljava/lang/String; = "username"


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
    .line 16
    const-string v0, "f9c69e10bbb140e096e26e3d3f3960ec"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "ed85650e09884756a26558259c471af5"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
