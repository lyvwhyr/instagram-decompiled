.class public Lcom/instagram/android/service/FastAccountSwitchHelper;
.super Ljava/lang/Object;
.source "FastAccountSwitchHelper.java"


# static fields
.field private static MAX_NUMBER_OF_ACCOUNTS_TO_REMEMBER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x6

    sput v0, Lcom/instagram/android/service/FastAccountSwitchHelper;->MAX_NUMBER_OF_ACCOUNTS_TO_REMEMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUser(Lcom/instagram/android/model/User;)V
    .locals 6
    .parameter "user"

    .prologue
    .line 16
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->getUsersThatHaveSignedIn()Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/instagram/android/service/FastAccountSwitchHelper;->MAX_NUMBER_OF_ACCOUNTS_TO_REMEMBER:I

    if-le v4, v5, :cond_2

    .line 30
    :cond_1
    invoke-virtual {v1, v2}, Lcom/instagram/android/Preferences;->setUsersThatHaveSignedIn(Ljava/util/ArrayList;)V

    .line 31
    return-void

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getRecentUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getUsersThatHaveSignedIn()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static removeUser(Lcom/instagram/android/model/User;)V
    .locals 6
    .parameter "userToRemove"

    .prologue
    .line 38
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->getUsersThatHaveSignedIn()Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/instagram/android/service/FastAccountSwitchHelper;->MAX_NUMBER_OF_ACCOUNTS_TO_REMEMBER:I

    if-le v4, v5, :cond_2

    .line 51
    :cond_1
    invoke-virtual {v1, v2}, Lcom/instagram/android/Preferences;->setUsersThatHaveSignedIn(Ljava/util/ArrayList;)V

    .line 52
    return-void

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
