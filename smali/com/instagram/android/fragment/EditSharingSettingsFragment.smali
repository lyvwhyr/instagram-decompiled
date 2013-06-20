.class public Lcom/instagram/android/fragment/EditSharingSettingsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final REQUEST_AUTH_FLICKR:I = 0x3

.field private static final REQUEST_AUTH_FOURSQUARE:I = 0x1

.field private static final REQUEST_AUTH_TUMBLR:I = 0x2

.field private static final REQUEST_AUTH_TWITTER:I


# instance fields
.field private mFacebookAuthListener:Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;

    .line 382
    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->handleRowClick(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->unlinkAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V

    return-void
.end method

.method private configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 228
    sget v0, Lcom/facebook/g;->row_edit_sharing_settings_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->isConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    new-instance v2, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Landroid/widget/CheckBox;)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v3, Lcom/instagram/android/fragment/EditSharingSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$2;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-virtual {p1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget v0, Lcom/facebook/g;->row_simple_text_disclosure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$3;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget v0, Lcom/facebook/g;->row_simple_text_disclosure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private connectAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 330
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$8;->$SwitchMap$com$instagram$android$fragment$EditSharingSettingsFragment$Account:[I

    invoke-virtual {p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 332
    :pswitch_0
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0

    .line 337
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 340
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 343
    :pswitch_3
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 346
    :pswitch_4
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getRowTitle(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    sget v1, Lcom/facebook/g;->row_edit_sharing_settings_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleRowClick(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    .locals 1
    .parameter "account"
    .parameter "checked"

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->unlinkAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->connectAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    goto :goto_0
.end method

.method private showUnlinkPrompt(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 311
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->unlink_your_account:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getRowTitle(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/EditSharingSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$6;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unlink:I

    new-instance v2, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 327
    return-void
.end method

.method private unlinkAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    .locals 2
    .parameter "account"
    .parameter "prompt"

    .prologue
    .line 287
    if-eqz p2, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->showUnlinkPrompt(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 308
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    if-ne p1, v0, :cond_1

    .line 291
    new-instance v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->unlink(Landroid/content/Context;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$7;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 194
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 213
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;

    invoke-virtual {v1, v2}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 217
    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 221
    :goto_1
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    goto :goto_0

    .line 201
    :pswitch_0
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Foursquare:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    goto :goto_1

    .line 204
    :pswitch_1
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Twitter:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    goto :goto_1

    .line 207
    :pswitch_2
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Tumblr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    goto :goto_1

    .line 210
    :pswitch_3
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Flickr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 178
    sget v0, Lcom/facebook/h;->fragment_edit_sharing_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 186
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Twitter:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 187
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Foursquare:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 188
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Tumblr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 189
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Flickr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 190
    return-void
.end method
