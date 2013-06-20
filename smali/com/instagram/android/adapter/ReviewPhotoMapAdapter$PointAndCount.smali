.class public Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;
.super Ljava/lang/Object;
.source "ReviewPhotoMapAdapter.java"


# instance fields
.field public cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

.field public count:I

.field public point:Lcom/instagram/android/maps/clustering/QuadtreePoint;

.field final synthetic this$0:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreePoint;I)V
    .locals 0
    .parameter
    .parameter "cluster"
    .parameter "point"
    .parameter "count"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->this$0:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 167
    iput-object p3, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->point:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 168
    iput p4, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->count:I

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreePoint;ILcom/instagram/android/adapter/ReviewPhotoMapAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreePoint;I)V

    return-void
.end method
