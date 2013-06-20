.class public Lcom/instagram/android/widget/MapImageViewHelper;
.super Ljava/lang/Object;
.source "MapImageViewHelper.java"


# static fields
.field public static final DEFAULT_ZOOM:Ljava/lang/String; = "14"

.field public static final FEED_DIALOG_ZOOM:Ljava/lang/String; = "10"

.field public static final MAPS_API_REFERER:Ljava/lang/String; = "android.instagram.com"

.field public static final MAPS_HOST:Ljava/lang/String; = "maps.googleapis.com"

.field public static final REVIEW_ZOOM:Ljava/lang/String; = "12"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static constructStaticMapUrl(Lcom/instagram/android/location/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .locals 5
    .parameter "venue"
    .parameter "zoom"
    .parameter "width"
    .parameter "height"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v1, "https://%s/maps/api/staticmap?center=%s,%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "maps.googleapis.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "&markers=color:0xe45846%7C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    const-string v1, "&zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&maptype=road&sensor=false&style=feature:landscape%7Celement:geometry%7Chue:0xf0eade%7csaturation:8&style=feature:road%7Celement:geometry%7Chue:0xf0d59f%7Csaturation:34%7Clightness:30"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/widget/MapImageViewHelper;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "ef9e3381f0a045d396ee38292ca5481d"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
