.class public Lcom/instagram/foursquare/FoursquareAccount;
.super Ljava/lang/Object;
.source "FoursquareAccount.java"


# instance fields
.field private final mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/instagram/foursquare/FoursquareAccount;->mAccessToken:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static delete(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/instagram/foursquare/FoursquareAccount;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    const-string v1, "accessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/instagram/foursquare/FoursquareAccount;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-static {p0}, Lcom/instagram/foursquare/FoursquareAccount;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    const-string v2, "accessToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/foursquare/FoursquareAccount;

    invoke-direct {v0, v1}, Lcom/instagram/foursquare/FoursquareAccount;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const-string v0, "foursquare.prefs"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/foursquare/FoursquareAccount;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public store(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/instagram/foursquare/FoursquareAccount;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/instagram/foursquare/FoursquareAccount;->mAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method
