.class public Lcom/instagram/android/service/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.java"


# static fields
.field public static final AUTH_HELPER_SERVICE:Ljava/lang/String; = "com.instagram.androidservice,AuthHelper"

.field public static final BROADCAST_USER_CHANGED:Ljava/lang/String; = "com.instagram.android.service.BROADCAST_USER_CHANGED"

.field public static final BROADCAST_USER_CHANGED_EXTRA_LOGGED_IN:Ljava/lang/String; = "loggedin"

.field public static final BROADCAST_USER_CHANGED_EXTRA_USER_ID:Ljava/lang/String; = "userid"

.field public static final BROADCAST_WEBVIEW_CHANGED_USER:Ljava/lang/String; = "com.instagram.androidBROADCAST_WEBVIEW_CHANGED_USER"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUser:Lcom/instagram/android/model/User;

.field private updateUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/instagram/android/service/AuthHelper$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/service/AuthHelper$1;-><init>(Lcom/instagram/android/service/AuthHelper;)V

    iput-object v0, p0, Lcom/instagram/android/service/AuthHelper;->updateUserReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/instagram/android/service/AuthHelper;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/service/AuthHelper;->updateUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.androidBROADCAST_WEBVIEW_CHANGED_USER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/service/AuthHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/service/AuthHelper;->onUserNeedsFetch()V

    return-void
.end method

.method private broadcastUserChange(Ljava/lang/String;Z)V
    .locals 2
    .parameter "id"
    .parameter "loggedIn"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.service.BROADCAST_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v1, "userid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "loggedin"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/instagram/android/service/AuthHelper;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    const-string v0, "com.instagram.androidservice,AuthHelper"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/AuthHelper;

    .line 43
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    const-string v1, "com.instagram.androidservice,AuthHelper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/AuthHelper;

    .line 47
    :cond_0
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AuthHelper not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    return-object v0
.end method

.method private onUserNeedsFetch()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mContext:Landroid/content/Context;

    const-string v1, "onUserNeedsFetch() not implemented"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 38
    return-void
.end method


# virtual methods
.method public clearCurrentUser()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    invoke-static {v0}, Lcom/instagram/android/service/FastAccountSwitchHelper;->addUser(Lcom/instagram/android/model/User;)V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/service/AuthHelper;->broadcastUserChange(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    .line 108
    return-void
.end method

.method public getCurrentUser()Lcom/instagram/android/model/User;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    if-nez v0, :cond_1

    .line 62
    :try_start_0
    invoke-static {}, Lcom/instagram/util/PreferenceUtil;->getGlobalPreferences()Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getCurrentUserData()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/instagram/android/model/User;->getUserFromSerializedData(Ljava/lang/String;)Lcom/instagram/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    .line 68
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    .line 69
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/service/AuthHelper;->broadcastUserChange(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to retrieve current user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveCurrentUser(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 92
    :try_start_0
    iput-object p1, p0, Lcom/instagram/android/service/AuthHelper;->mCurrentUser:Lcom/instagram/android/model/User;

    .line 93
    invoke-static {}, Lcom/instagram/util/PreferenceUtil;->getGlobalPreferences()Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUserSerialized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setCurrentUserData(Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/instagram/android/service/FastAccountSwitchHelper;->addUser(Lcom/instagram/android/model/User;)V

    .line 95
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/service/AuthHelper;->broadcastUserChange(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to write current user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
