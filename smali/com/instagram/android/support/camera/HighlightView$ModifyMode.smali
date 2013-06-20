.class final enum Lcom/instagram/android/support/camera/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/support/camera/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

.field public static final enum None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    new-instance v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    new-instance v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Move:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    new-instance v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Grow:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    .line 425
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    sget-object v1, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->None:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Move:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->Grow:Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->$VALUES:[Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

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
    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/support/camera/HighlightView$ModifyMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 425
    const-class v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/support/camera/HighlightView$ModifyMode;
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->$VALUES:[Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/instagram/android/support/camera/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/support/camera/HighlightView$ModifyMode;

    return-object v0
.end method
