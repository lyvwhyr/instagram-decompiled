.class public Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private final mLoaderManager:Landroid/support/v4/app/af;

.field private mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mLoaderManager:Landroid/support/v4/app/af;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/widget/IndeterminateCheckBox;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/support/v4/app/af;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mLoaderManager:Landroid/support/v4/app/af;

    return-object v0
.end method

.method private setupDialogView(Landroid/app/Dialog;Lcom/instagram/android/model/Media;)V
    .locals 2
    .parameter "dialog"
    .parameter "media"

    .prologue
    .line 120
    sget v0, Lcom/facebook/g;->photos_of_you_radio_show:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 122
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 124
    sget v0, Lcom/facebook/g;->photos_of_you_show:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/facebook/g;->photos_of_you_radio_hide:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 143
    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 146
    sget v0, Lcom/facebook/g;->photos_of_you_hide:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$3;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$3;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget v0, Lcom/facebook/g;->more_options_button:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v0, Lcom/facebook/g;->remove_me:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    sget v0, Lcom/facebook/g;->report_inappropriate:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v0, Lcom/facebook/g;->button_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$7;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget v0, Lcom/facebook/g;->learn_more:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 217
    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$8;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public showPhotosOfYouDialog(Lcom/instagram/android/model/Media;)V
    .locals 4
    .parameter "media"

    .prologue
    .line 46
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/facebook/h;->dialog_modify_photos_of_you:I

    sget v3, Lcom/facebook/l;->IgDialogPeopleTagging:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->setupDialogView(Landroid/app/Dialog;Lcom/instagram/android/model/Media;)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 61
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 62
    return-void
.end method
