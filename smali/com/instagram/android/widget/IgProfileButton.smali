.class public Lcom/instagram/android/widget/IgProfileButton;
.super Landroid/widget/LinearLayout;
.source "IgProfileButton.java"


# instance fields
.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 41
    sget v0, Lcom/facebook/g;->profile_button_profile_picture:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProfileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public setUser(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/widget/IgProfileButton;->mUser:Lcom/instagram/android/model/User;

    .line 33
    sget v0, Lcom/facebook/g;->profile_button_profile_picture:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProfileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    .line 34
    sget v1, Lcom/facebook/g;->profile_button_username:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/IgProfileButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
