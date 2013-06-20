.class final enum Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$3;
.super Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;
.source "EditSharingSettingsFragment.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;-><init>(Ljava/lang/String;ILcom/instagram/android/fragment/EditSharingSettingsFragment$1;)V

    return-void
.end method


# virtual methods
.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/facebook/g;->row_edit_sharing_settings_foursquare:I

    return v0
.end method

.method public isConnected(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    invoke-static {p1}, Lcom/instagram/foursquare/FoursquareAccount;->get(Landroid/content/Context;)Lcom/instagram/foursquare/FoursquareAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlink(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 113
    invoke-static {p1}, Lcom/instagram/foursquare/FoursquareAccount;->delete(Landroid/content/Context;)V

    .line 114
    return-void
.end method
