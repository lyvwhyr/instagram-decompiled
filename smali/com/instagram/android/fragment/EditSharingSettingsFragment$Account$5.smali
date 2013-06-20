.class final enum Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$5;
.super Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;
.source "EditSharingSettingsFragment.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;-><init>(Ljava/lang/String;ILcom/instagram/android/fragment/EditSharingSettingsFragment$1;)V

    return-void
.end method


# virtual methods
.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/facebook/g;->row_edit_sharing_settings_flickr:I

    return v0
.end method

.method public isConnected(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->isConfigured()Z

    move-result v0

    return v0
.end method

.method public unlink(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/flickr/FlickrAccount;->remove(Z)V

    .line 158
    return-void
.end method
