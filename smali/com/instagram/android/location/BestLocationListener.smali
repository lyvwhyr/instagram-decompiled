.class public Lcom/instagram/android/location/BestLocationListener;
.super Ljava/util/Observable;
.source "BestLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field public static final LOCATION_UPDATE_MAX_DELTA_THRESHOLD:J = 0x493e0L

.field public static final LOCATION_UPDATE_MIN_DISTANCE:J = 0x0L

.field public static final LOCATION_UPDATE_MIN_TIME:J = 0x0L

.field public static final REQUESTED_FIRST_SEARCH_ACCURACY_IN_METERS:F = 100.0f

.field public static final REQUESTED_FIRST_SEARCH_MAX_DELTA_THRESHOLD:I = 0x493e0

.field public static final SLOW_LOCATION_UPDATE_MIN_DISTANCE:J = 0x32L

.field public static final SLOW_LOCATION_UPDATE_MIN_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "BestLocationListener"


# instance fields
.field private mLastLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized clearLastKnownLocation()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAccurateEnough(Landroid/location/Location;)Z
    .locals 4
    .parameter "location"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 155
    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isLocationValid(Landroid/location/Location;)Z
    .locals 5
    .parameter "location"

    .prologue
    const/4 v0, 0x1

    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 75
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 76
    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBestLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/location/BestLocationListener;->setChanged()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/instagram/android/location/BestLocationListener;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/instagram/android/location/BestLocationListener;->updateLocation(Landroid/location/Location;)V

    .line 44
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 49
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 54
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 59
    return-void
.end method

.method public register(Landroid/location/LocationManager;Z)V
    .locals 9
    .parameter "locationManager"
    .parameter "gps"

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    const-wide/32 v4, 0x493e0

    .line 173
    const-wide/16 v2, 0x32

    .line 174
    if-eqz p2, :cond_4

    move-wide v6, v0

    move-wide v2, v0

    .line 178
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/location/BestLocationListener;->updateLocation(Landroid/location/Location;)V

    .line 184
    :cond_1
    if-nez p2, :cond_2

    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :cond_2
    long-to-float v4, v6

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 188
    :cond_3
    return-void

    :cond_4
    move-wide v6, v2

    move-wide v2, v4

    goto :goto_0
.end method

.method public unregister(Landroid/location/LocationManager;)V
    .locals 0
    .parameter "locationManager"

    .prologue
    .line 194
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 195
    return-void
.end method

.method public declared-synchronized updateLastKnownLocation(Landroid/location/LocationManager;)V
    .locals 5
    .parameter "locationManager"

    .prologue
    .line 205
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 206
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 207
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/location/BestLocationListener;->updateLocation(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :cond_1
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 11
    .parameter "location"

    .prologue
    const-wide/32 v9, 0x493e0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/instagram/android/location/BestLocationListener;->onBestLocationChanged(Landroid/location/Location;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_0

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 109
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v5, v2, v4

    .line 110
    iget-object v4, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long v7, v2, v7

    .line 111
    cmp-long v2, v5, v9

    if-gtz v2, :cond_5

    move v4, v0

    .line 112
    :goto_1
    cmp-long v2, v7, v9

    if-gtz v2, :cond_6

    move v3, v0

    .line 113
    :goto_2
    cmp-long v2, v5, v7

    if-gtz v2, :cond_2

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    move v2, v0

    .line 117
    :goto_3
    if-eqz v2, :cond_b

    .line 120
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-nez v5, :cond_8

    .line 144
    :cond_4
    :goto_4
    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 145
    invoke-virtual {p0, p1}, Lcom/instagram/android/location/BestLocationListener;->onBestLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_5
    move v4, v1

    .line 111
    goto :goto_1

    :cond_6
    move v3, v1

    .line 112
    goto :goto_2

    :cond_7
    move v2, v1

    .line 115
    goto :goto_3

    .line 122
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v1

    .line 123
    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iget-object v6, p0, Lcom/instagram/android/location/BestLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_4

    move v0, v1

    goto :goto_4

    .line 146
    :cond_a
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/instagram/android/location/BestLocationListener;->onBestLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_4
.end method
