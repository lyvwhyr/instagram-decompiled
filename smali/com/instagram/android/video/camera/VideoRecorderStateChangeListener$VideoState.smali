.class public final enum Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;
.super Ljava/lang/Enum;
.source "VideoRecorderStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

.field public static final enum RECORDING:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

.field public static final enum STOPPED:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->STOPPED:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    .line 12
    new-instance v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->RECORDING:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    sget-object v1, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->STOPPED:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->RECORDING:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->$VALUES:[Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->$VALUES:[Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    invoke-virtual {v0}, [Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    return-object v0
.end method
