.class public Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;
.super Ljava/lang/Object;
.source "ReviewPhotoMapAdapter.java"


# instance fields
.field public cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

.field public count:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "cluster"
    .parameter "count"
    .parameter "name"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->this$0:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 153
    iput p3, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->count:I

    .line 154
    iput-object p4, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->name:Ljava/lang/String;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;ILjava/lang/String;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;ILjava/lang/String;)V

    return-void
.end method
