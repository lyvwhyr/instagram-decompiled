.class public Lcom/instagram/android/maps/PhotoMapsActivity$MapState;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"


# instance fields
.field private final mLatSpanE6:I

.field private final mLonSpanE6:I

.field private final mMapCenter:Lcom/google/android/maps/GeoPoint;

.field private final mZoomLevel:I

.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V
    .locals 0
    .parameter
    .parameter "latSpanE6"
    .parameter "lonSpanE6"
    .parameter "mapCenter"
    .parameter "zoomLevel"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput p2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mLatSpanE6:I

    .line 996
    iput p3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mLonSpanE6:I

    .line 997
    iput-object p4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mMapCenter:Lcom/google/android/maps/GeoPoint;

    .line 998
    iput p5, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mZoomLevel:I

    .line 999
    return-void
.end method


# virtual methods
.method public getLatSpanE6()I
    .locals 1

    .prologue
    .line 977
    iget v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mLatSpanE6:I

    return v0
.end method

.method public getLonSpanE6()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mLonSpanE6:I

    return v0
.end method

.method public getMapCenter()Lcom/google/android/maps/GeoPoint;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mMapCenter:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;->mZoomLevel:I

    return v0
.end method
