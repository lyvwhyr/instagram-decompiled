.class final Lcom/instagram/android/people/model/PeopleTag$1;
.super Ljava/lang/Object;
.source "PeopleTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/android/people/model/PeopleTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/people/model/PeopleTag;
    .locals 2
    .parameter "in"

    .prologue
    .line 91
    new-instance v0, Lcom/instagram/android/people/model/PeopleTag;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/instagram/android/people/model/PeopleTag;-><init>(Landroid/os/Parcel;Lcom/instagram/android/people/model/PeopleTag$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/model/PeopleTag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/instagram/android/people/model/PeopleTag;
    .locals 1
    .parameter "size"

    .prologue
    .line 95
    new-array v0, p1, [Lcom/instagram/android/people/model/PeopleTag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/model/PeopleTag$1;->newArray(I)[Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v0

    return-object v0
.end method
