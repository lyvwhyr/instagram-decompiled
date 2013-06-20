.class public Lcom/instagram/facebook/FacebookConstants;
.super Ljava/lang/Object;
.source "FacebookConstants.java"


# static fields
.field public static final FACEBOOK_PERMISSIONS:[Ljava/lang/String;

.field public static final FACEBOOK_PERMISSIONS_WITH_EMAIL:[Ljava/lang/String;

.field public static final FACEBOOK_PERMISSIONS_WITH_MANAGE_PAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "publish_actions"

    aput-object v1, v0, v2

    sput-object v0, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "publish_actions"

    aput-object v1, v0, v2

    const-string v1, "email"

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS_WITH_EMAIL:[Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v2

    const-string v1, "manage_pages"

    aput-object v1, v0, v3

    const-string v1, "publish_actions"

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS_WITH_MANAGE_PAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFacebookAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "df1c2873b2cf408489df344453f9f10e"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
