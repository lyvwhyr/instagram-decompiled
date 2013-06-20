.class public Lcom/instagram/android/widget/IgDialogBuilder;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mD:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/facebook/l;->IgDialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    .line 29
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/h;->alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 30
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->layout_listview_parent_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "customDialogLayoutId"
    .parameter "theme"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/IgDialogBuilder;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    return-object v0
.end method

.method private bindButton(ILandroid/content/DialogInterface$OnClickListener;II)V
    .locals 3
    .parameter "stringRes"
    .parameter "onClickListener"
    .parameter "button2"
    .parameter "buttonPositive"

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    invoke-virtual {v0, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 80
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 81
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/instagram/android/widget/IgDialogBuilder$1;-><init>(Lcom/instagram/android/widget/IgDialogBuilder;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->button_group:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    return-void
.end method

.method public setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 1
    .parameter "b"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 105
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 1
    .parameter "b"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 5
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 137
    new-instance v1, Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->showDialogView(Z)V

    .line 140
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 141
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/d;->transparent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v2, Lcom/instagram/android/widget/IgDialogBuilder$2;

    invoke-direct {v2, p0, p2}, Lcom/instagram/android/widget/IgDialogBuilder$2;-><init>(Lcom/instagram/android/widget/IgDialogBuilder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    invoke-virtual {v1, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->addDialogMenuItems([Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->layout_listview_parent_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-object p0
.end method

.method public setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 1
    .parameter "res"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "message"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "stringRes"
    .parameter "onClickListener"

    .prologue
    .line 66
    sget v0, Lcom/facebook/g;->button2:I

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->bindButton(ILandroid/content/DialogInterface$OnClickListener;II)V

    .line 67
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "stringRes"
    .parameter "onClickListener"

    .prologue
    .line 72
    sget v0, Lcom/facebook/g;->button3:I

    const/4 v1, -0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->bindButton(ILandroid/content/DialogInterface$OnClickListener;II)V

    .line 73
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "stringRes"
    .parameter "onClickListener"

    .prologue
    .line 60
    sget v0, Lcom/facebook/g;->button1:I

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->bindButton(ILandroid/content/DialogInterface$OnClickListener;II)V

    .line 61
    return-object p0
.end method

.method public setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "res"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 110
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "title"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 117
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/instagram/android/widget/IgDialogBuilder;
    .locals 2
    .parameter "customView"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->customViewHolder:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 126
    return-object p0
.end method
