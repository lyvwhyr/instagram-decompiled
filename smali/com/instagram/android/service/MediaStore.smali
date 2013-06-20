.class public Lcom/instagram/android/service/MediaStore;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/instagram/android/model/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final MEDIASTORE_SERVICE:Ljava/lang/String; = "com.instagram.android.service.mediastore"


# instance fields
.field private mPhotosOfYouIndex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "com.instagram.android.service.mediastore"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/MediaStore;

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 27
    const-string v0, "com.instagram.android.service.mediastore"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/MediaStore;

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaStore not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    return-object v0
.end method


# virtual methods
.method public clearPhotosOfYou()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/Media;->setPhotoOfCurrentUser(Z)V

    .line 46
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 49
    return-void
.end method

.method public get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "key"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/instagram/android/model/Media;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/service/MediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;
    .locals 2
    .parameter "media"

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/service/MediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lcom/instagram/android/model/Media;->updateFields(Lcom/instagram/android/model/Media;)V

    .line 68
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/service/MediaStore;->mPhotosOfYouIndex:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
