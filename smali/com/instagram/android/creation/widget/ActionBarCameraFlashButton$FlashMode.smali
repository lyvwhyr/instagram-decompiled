.class public final enum Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
.super Ljava/lang/Enum;
.source "ActionBarCameraFlashButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

.field public static final enum AUTO:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

.field public static final enum OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

.field public static final enum ON:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ON:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    .line 23
    new-instance v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    .line 24
    new-instance v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->AUTO:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ON:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->AUTO:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->$VALUES:[Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->$VALUES:[Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0}, [Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    return-object v0
.end method
