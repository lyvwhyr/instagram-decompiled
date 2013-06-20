.class final Lcom/instagram/android/widget/RefreshButton$SavedState$1;
.super Ljava/lang/Object;
.source "RefreshButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/android/widget/RefreshButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/widget/RefreshButton$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 127
    new-instance v0, Lcom/instagram/android/widget/RefreshButton$SavedState;

    invoke-direct {v0, p1}, Lcom/instagram/android/widget/RefreshButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/RefreshButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/widget/RefreshButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/instagram/android/widget/RefreshButton$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 131
    new-array v0, p1, [Lcom/instagram/android/widget/RefreshButton$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/RefreshButton$SavedState$1;->newArray(I)[Lcom/instagram/android/widget/RefreshButton$SavedState;

    move-result-object v0

    return-object v0
.end method
