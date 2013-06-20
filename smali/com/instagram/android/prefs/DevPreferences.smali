.class public Lcom/instagram/android/prefs/DevPreferences;
.super Ljava/lang/Object;
.source "DevPreferences.java"


# static fields
.field public static final KEY_SERVER_NAME:Ljava/lang/String; = "dev_server_name"

.field public static final KEY_USING_DEV_SERVER:Ljava/lang/String; = "using_dev_server"

.field public static final NAME:Ljava/lang/String; = "devprefs"

.field private static instance:Lcom/instagram/android/prefs/DevPreferences;


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "devprefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/prefs/DevPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/instagram/android/prefs/DevPreferences;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/instagram/android/prefs/DevPreferences;->instance:Lcom/instagram/android/prefs/DevPreferences;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/instagram/android/prefs/DevPreferences;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/prefs/DevPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/android/prefs/DevPreferences;->instance:Lcom/instagram/android/prefs/DevPreferences;

    .line 24
    :cond_0
    sget-object v0, Lcom/instagram/android/prefs/DevPreferences;->instance:Lcom/instagram/android/prefs/DevPreferences;

    return-object v0
.end method


# virtual methods
.method public getDevServerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/prefs/DevPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "dev_server_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsingDevServer()Z
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/prefs/DevPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "using_dev_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDevServerName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/prefs/DevPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_server_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public setUsingDevServer(Z)V
    .locals 2
    .parameter "usingDevServer"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/prefs/DevPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "using_dev_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method
