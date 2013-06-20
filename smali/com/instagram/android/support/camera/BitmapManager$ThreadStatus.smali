.class Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/instagram/android/support/camera/BitmapManager$State;

.field public mThumbRequesting:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/instagram/android/support/camera/BitmapManager$State;->ALLOW:Lcom/instagram/android/support/camera/BitmapManager$State;

    iput-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/support/camera/BitmapManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;

    sget-object v1, Lcom/instagram/android/support/camera/BitmapManager$State;->CANCEL:Lcom/instagram/android/support/camera/BitmapManager$State;

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "Cancel"

    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;

    sget-object v1, Lcom/instagram/android/support/camera/BitmapManager$State;->ALLOW:Lcom/instagram/android/support/camera/BitmapManager$State;

    if-ne v0, v1, :cond_1

    .line 59
    const-string v0, "Allow"

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method
