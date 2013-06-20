.class public final enum Lcom/instagram/android/service/VideoUploader$Result;
.super Ljava/lang/Enum;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/service/VideoUploader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/service/VideoUploader$Result;

.field public static final enum EXPIRED_RETRY:Lcom/instagram/android/service/VideoUploader$Result;

.field public static final enum FAIL:Lcom/instagram/android/service/VideoUploader$Result;

.field public static final enum SUCCESS:Lcom/instagram/android/service/VideoUploader$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/instagram/android/service/VideoUploader$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/service/VideoUploader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/service/VideoUploader$Result;->SUCCESS:Lcom/instagram/android/service/VideoUploader$Result;

    .line 25
    new-instance v0, Lcom/instagram/android/service/VideoUploader$Result;

    const-string v1, "EXPIRED_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/service/VideoUploader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/service/VideoUploader$Result;->EXPIRED_RETRY:Lcom/instagram/android/service/VideoUploader$Result;

    .line 26
    new-instance v0, Lcom/instagram/android/service/VideoUploader$Result;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/service/VideoUploader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/service/VideoUploader$Result;->FAIL:Lcom/instagram/android/service/VideoUploader$Result;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/service/VideoUploader$Result;

    sget-object v1, Lcom/instagram/android/service/VideoUploader$Result;->SUCCESS:Lcom/instagram/android/service/VideoUploader$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/service/VideoUploader$Result;->EXPIRED_RETRY:Lcom/instagram/android/service/VideoUploader$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/service/VideoUploader$Result;->FAIL:Lcom/instagram/android/service/VideoUploader$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/service/VideoUploader$Result;->$VALUES:[Lcom/instagram/android/service/VideoUploader$Result;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/service/VideoUploader$Result;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/instagram/android/service/VideoUploader$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/VideoUploader$Result;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/service/VideoUploader$Result;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/instagram/android/service/VideoUploader$Result;->$VALUES:[Lcom/instagram/android/service/VideoUploader$Result;

    invoke-virtual {v0}, [Lcom/instagram/android/service/VideoUploader$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/service/VideoUploader$Result;

    return-object v0
.end method
