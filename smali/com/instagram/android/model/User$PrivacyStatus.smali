.class public final enum Lcom/instagram/android/model/User$PrivacyStatus;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/User$PrivacyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/User$PrivacyStatus;

.field public static final enum PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

.field public static final enum PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

.field public static final enum PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/instagram/android/model/User$PrivacyStatus;

    const-string v1, "PrivacyStatusUnknown"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/User$PrivacyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 184
    new-instance v0, Lcom/instagram/android/model/User$PrivacyStatus;

    const-string v1, "PrivacyStatusPublic"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/User$PrivacyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 185
    new-instance v0, Lcom/instagram/android/model/User$PrivacyStatus;

    const-string v1, "PrivacyStatusPrivate"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/User$PrivacyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/model/User$PrivacyStatus;

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->$VALUES:[Lcom/instagram/android/model/User$PrivacyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/User$PrivacyStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    const-class v0, Lcom/instagram/android/model/User$PrivacyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User$PrivacyStatus;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/User$PrivacyStatus;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->$VALUES:[Lcom/instagram/android/model/User$PrivacyStatus;

    invoke-virtual {v0}, [Lcom/instagram/android/model/User$PrivacyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/User$PrivacyStatus;

    return-object v0
.end method
