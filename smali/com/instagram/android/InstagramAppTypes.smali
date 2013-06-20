.class public Lcom/instagram/android/InstagramAppTypes;
.super Ljava/lang/Object;
.source "InstagramAppTypes.java"


# static fields
.field public static final DEBUG:Lcom/instagram/android/InstagramAppType;

.field public static final INHOUSE:Lcom/instagram/android/InstagramAppType;

.field public static final PROD:Lcom/instagram/android/InstagramAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/instagram/android/InstagramAppType;

    const-string v1, "06WDGFKCrfUzxWmofXz9uZ8H0uOWvN7M1R-THbQ"

    const-string v2, "android-prod"

    const-string v3, "261124154013928"

    const-string v4, "https://www.facebook.com/mobile/instagram_android_crash_logs/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/InstagramAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/InstagramAppTypes;->PROD:Lcom/instagram/android/InstagramAppType;

    .line 15
    new-instance v0, Lcom/instagram/android/InstagramAppType;

    const-string v1, "06WDGFKCrfUwS1BI418HU7liXsKpfyhFXdtaP9A"

    const-string v2, "android-inhouse"

    const-string v3, "221693881298347"

    const-string v4, "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/InstagramAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/InstagramAppTypes;->INHOUSE:Lcom/instagram/android/InstagramAppType;

    .line 21
    new-instance v0, Lcom/instagram/android/InstagramAppType;

    const-string v1, "06WDGFKCrfUyKjrEV2hg0-PMws5JD_92YXMOQIQ"

    const-string v2, "android-beta"

    const-string v3, "304779486308327"

    const-string v4, "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/InstagramAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/InstagramAppTypes;->DEBUG:Lcom/instagram/android/InstagramAppType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
