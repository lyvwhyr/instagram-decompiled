.class public Lcom/instagram/foursquare/FoursquareConstants;
.super Ljava/lang/Object;
.source "FoursquareConstants.java"

# interfaces
.implements Lcom/instagram/oauth/OAuthConstants;


# static fields
.field public static final FOURSQUARE_CALLBACK_URL:Ljava/lang/String; = "https://instagram.com/foursquare/oauth_callback/"

.field public static final PREF_FILE:Ljava/lang/String; = "foursquare.prefs"

.field public static final PREF_KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"


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
    const-string v0, "ff19a68d1f4a4c29bf4be67ad2c77f12"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "bdcf8247e5d54dd8a440e77f7c41b208"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
