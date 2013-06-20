.class public final enum Lcom/instagram/android/video/model/Clip$ClipState;
.super Ljava/lang/Enum;
.source "Clip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/video/model/Clip$ClipState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/video/model/Clip$ClipState;

.field public static final enum INVALID:Lcom/instagram/android/video/model/Clip$ClipState;

.field public static final enum RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

.field public static final enum RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

.field public static final enum SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/instagram/android/video/model/Clip$ClipState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/model/Clip$ClipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    .line 16
    new-instance v0, Lcom/instagram/android/video/model/Clip$ClipState;

    const-string v1, "RECORDED"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/video/model/Clip$ClipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    .line 17
    new-instance v0, Lcom/instagram/android/video/model/Clip$ClipState;

    const-string v1, "SOFT_DELETED"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/video/model/Clip$ClipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;

    .line 18
    new-instance v0, Lcom/instagram/android/video/model/Clip$ClipState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/video/model/Clip$ClipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->INVALID:Lcom/instagram/android/video/model/Clip$ClipState;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/android/video/model/Clip$ClipState;

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDED:Lcom/instagram/android/video/model/Clip$ClipState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->SOFT_DELETED:Lcom/instagram/android/video/model/Clip$ClipState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->INVALID:Lcom/instagram/android/video/model/Clip$ClipState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->$VALUES:[Lcom/instagram/android/video/model/Clip$ClipState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/video/model/Clip$ClipState;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/model/Clip$ClipState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/video/model/Clip$ClipState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/instagram/android/video/model/Clip$ClipState;->$VALUES:[Lcom/instagram/android/video/model/Clip$ClipState;

    invoke-virtual {v0}, [Lcom/instagram/android/video/model/Clip$ClipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/video/model/Clip$ClipState;

    return-object v0
.end method
