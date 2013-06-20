.class final Lcom/instagram/android/gl/TiltShiftManager$2;
.super Ljava/lang/Object;
.source "TiltShiftManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/android/gl/TiltShiftManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/gl/TiltShiftManager;
    .locals 1
    .parameter "in"

    .prologue
    .line 389
    new-instance v0, Lcom/instagram/android/gl/TiltShiftManager;

    invoke-direct {v0, p1}, Lcom/instagram/android/gl/TiltShiftManager;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager$2;->createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/gl/TiltShiftManager;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/instagram/android/gl/TiltShiftManager;
    .locals 1
    .parameter "size"

    .prologue
    .line 393
    new-array v0, p1, [Lcom/instagram/android/gl/TiltShiftManager;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager$2;->newArray(I)[Lcom/instagram/android/gl/TiltShiftManager;

    move-result-object v0

    return-object v0
.end method
