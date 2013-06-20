.class Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGenderFemaleString:Ljava/lang/String;

.field private final mGenderMaleString:Ljava/lang/String;

.field private final mGenderUnspecifiedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 594
    sget v0, Lcom/facebook/h;->spinner_gender_selected:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 596
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 597
    const-string v0, "-"

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderUnspecifiedString:Ljava/lang/String;

    .line 598
    sget v0, Lcom/facebook/k;->gender_male:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderMaleString:Ljava/lang/String;

    .line 599
    sget v0, Lcom/facebook/k;->gender_female:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderFemaleString:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public static genderToPosition(I)I
    .locals 1
    .parameter "gender"

    .prologue
    .line 603
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    if-ne p0, v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    .line 605
    :cond_0
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_MALE:I

    if-ne p0, v0, :cond_1

    .line 606
    const/4 v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static positionToGender(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 612
    if-nez p0, :cond_0

    .line 613
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    .line 617
    :goto_0
    return v0

    .line 614
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 615
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_MALE:I

    goto :goto_0

    .line 617
    :cond_1
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_FEMALE:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x3

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 638
    if-nez p2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->spinner_gender_dropdown:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 642
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    return-object p2
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 622
    invoke-static {p1}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->positionToGender(I)I

    move-result v0

    .line 623
    sget v1, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    if-ne v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderUnspecifiedString:Ljava/lang/String;

    .line 628
    :goto_0
    return-object v0

    .line 625
    :cond_0
    sget v1, Lcom/instagram/android/model/UserForEditing;->GENDER_MALE:I

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderMaleString:Ljava/lang/String;

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->mGenderFemaleString:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
