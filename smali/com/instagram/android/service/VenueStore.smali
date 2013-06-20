.class public Lcom/instagram/android/service/VenueStore;
.super Ljava/util/HashMap;
.source "VenueStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/instagram/android/location/Venue;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VenueStore"

.field public static final VENUE_STORE_SERVICE:Ljava/lang/String; = "com.instagram.android.service.venue_store"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/service/VenueStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "com.instagram.android.service.venue_store"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/VenueStore;

    .line 28
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    const-string v0, "com.instagram.android.service.venue_store"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/VenueStore;

    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Venue store not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    return-object v0
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/instagram/android/location/Venue;)Lcom/instagram/android/location/Venue;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string v0, "VenueStore"

    const-string v1, "Key was null!"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/instagram/android/location/Venue;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/service/VenueStore;->put(Ljava/lang/String;Lcom/instagram/android/location/Venue;)Lcom/instagram/android/location/Venue;

    move-result-object v0

    return-object v0
.end method
