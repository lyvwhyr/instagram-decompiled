.class public Lcom/instagram/android/service/UserStore;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "UserStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UserStore"

.field public static final USER_STORE_SERVICE:Ljava/lang/String; = "com.instagram.android.service.userstore"

.field private static sAllowCurrentUserUpdate:Z


# instance fields
.field private mNameIndexStore:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/service/UserStore;->mNameIndexStore:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static allowCurrentUserUpdate()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/service/UserStore;->sAllowCurrentUserUpdate:Z

    .line 82
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "com.instagram.android.service.userstore"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/UserStore;

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 26
    const-string v0, "com.instagram.android.service.userstore"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/UserStore;

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserStore not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    return-object v0
.end method

.method private isCurrentUser(Lcom/instagram/android/model/User;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 35
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static takeAllowCurrentUserUpdate()Z
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/instagram/android/service/UserStore;->sAllowCurrentUserUpdate:Z

    .line 86
    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/service/UserStore;->sAllowCurrentUserUpdate:Z

    .line 87
    return v0
.end method


# virtual methods
.method public findByUserName(Ljava/lang/String;)Lcom/instagram/android/model/User;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/service/UserStore;->mNameIndexStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    .locals 3
    .parameter "key"
    .parameter "userIn"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 43
    invoke-direct {p0, p2}, Lcom/instagram/android/service/UserStore;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/instagram/android/service/UserStore;->takeAllowCurrentUserUpdate()Z

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/instagram/android/service/UserStore;->mNameIndexStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
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
    check-cast p2, Lcom/instagram/android/model/User;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    .locals 3
    .parameter "key"
    .parameter "user"

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 59
    invoke-direct {p0, p2}, Lcom/instagram/android/service/UserStore;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/instagram/android/service/UserStore;->takeAllowCurrentUserUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "UserStore"

    const-string v2, "Allowing update of current user"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p2}, Lcom/instagram/android/model/User;->updateFields(Lcom/instagram/android/model/User;)V

    .line 72
    :cond_1
    :goto_0
    return-object v0

    .line 71
    :cond_2
    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-object v0, p2

    .line 72
    goto :goto_0
.end method
