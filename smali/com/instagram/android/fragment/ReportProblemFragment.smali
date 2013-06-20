.class public Lcom/instagram/android/fragment/ReportProblemFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "ReportProblemFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "ReportProblemFragment"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mEditText:Landroid/widget/EditText;

.field private mLoading:Z

.field private mOldOrientation:I

.field private mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

.field private mSendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/ReportProblemFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/instagram/android/fragment/ReportProblemFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/instagram/android/fragment/ReportProblemFragment;Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;)Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private setStickyTabVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 272
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/instagram/android/fragment/ReportProblemFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ReportProblemFragment$3;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    sget v0, Lcom/facebook/h;->fragment_report_problem:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/facebook/g;->edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/ReportProblemFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ReportProblemFragment$1;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    sget v0, Lcom/facebook/g;->send_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;

    new-instance v2, Lcom/instagram/android/fragment/ReportProblemFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ReportProblemFragment$2;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 88
    iput-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    .line 89
    iput-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->cancel(Z)Z

    .line 94
    iput-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    .line 96
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 102
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->setStickyTabVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;

    .line 117
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mOldOrientation:I

    .line 123
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 126
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 128
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->setStickyTabVisibility(I)V

    .line 129
    return-void
.end method

.method public sendBugReport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v0, Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/request/FlytrapRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ReportProblemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/content/Context;Lcom/instagram/api/request/FlytrapRequest;Lcom/instagram/android/fragment/ReportProblemFragment$1;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    .line 140
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->execute([Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    .line 141
    return-void
.end method
