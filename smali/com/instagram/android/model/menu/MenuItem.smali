.class public Lcom/instagram/android/model/menu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# instance fields
.field mCheckBox:Z

.field mChecked:Z

.field mDisclosure:Z

.field mProvidedString:Ljava/lang/CharSequence;

.field mStringResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "stringResId"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/instagram/android/model/menu/MenuItem;->mStringResId:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mDisclosure:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mCheckBox:Z

    .line 17
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "stringResId"
    .parameter "disclosure"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/instagram/android/model/menu/MenuItem;->mStringResId:I

    .line 21
    iput-boolean p2, p0, Lcom/instagram/android/model/menu/MenuItem;->mDisclosure:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mCheckBox:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "item"
    .parameter "disclosure"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/instagram/android/model/menu/MenuItem;->mProvidedString:Ljava/lang/CharSequence;

    .line 36
    iput-boolean p2, p0, Lcom/instagram/android/model/menu/MenuItem;->mDisclosure:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mCheckBox:Z

    .line 38
    return-void
.end method

.method public static createCheckBoxMenuItem(IZ)Lcom/instagram/android/model/menu/MenuItem;
    .locals 2
    .parameter "stringResId"
    .parameter "isChecked"

    .prologue
    .line 27
    new-instance v0, Lcom/instagram/android/model/menu/MenuItem;

    invoke-direct {v0, p0}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/model/menu/MenuItem;->mDisclosure:Z

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/model/menu/MenuItem;->mCheckBox:Z

    .line 30
    iput-boolean p1, v0, Lcom/instagram/android/model/menu/MenuItem;->mChecked:Z

    .line 31
    return-object v0
.end method


# virtual methods
.method public getProvidedString()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mProvidedString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStringResId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mStringResId:I

    return v0
.end method

.method public hasCheckBox()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mCheckBox:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mChecked:Z

    return v0
.end method

.method public isDisclosure()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/instagram/android/model/menu/MenuItem;->mDisclosure:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/instagram/android/model/menu/MenuItem;->mChecked:Z

    .line 62
    return-void
.end method
