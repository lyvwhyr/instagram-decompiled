.class public Lcom/instagram/android/people/model/PeopleTag;
.super Ljava/lang/Object;
.source "PeopleTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPosition:Landroid/graphics/PointF;

.field private mUserId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/instagram/android/people/model/PeopleTag$1;

    invoke-direct {v0}, Lcom/instagram/android/people/model/PeopleTag$1;-><init>()V

    sput-object v0, Lcom/instagram/android/people/model/PeopleTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUsername:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    .line 104
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 105
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/instagram/android/people/model/PeopleTag$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/instagram/android/people/model/PeopleTag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/model/User;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "user"
    .parameter "position"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    .line 22
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/model/PeopleTag;->setUser(Lcom/instagram/android/model/User;)V

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 61
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 67
    .end local p1
    :goto_0
    return v0

    .line 62
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/instagram/android/people/model/PeopleTag;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/instagram/android/people/model/PeopleTag;

    .line 67
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    .line 31
    return-void
.end method

.method public setUser(Lcom/instagram/android/model/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUsername:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/people/model/PeopleTag;->mUsername:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/people/model/PeopleTag;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    return-void
.end method
