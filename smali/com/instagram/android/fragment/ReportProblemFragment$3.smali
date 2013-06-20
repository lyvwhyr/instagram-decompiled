.class Lcom/instagram/android/fragment/ReportProblemFragment$3;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ReportProblemFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$3;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$3;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$3;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/facebook/k;->report_problem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/ReportProblemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$3;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$200(Lcom/instagram/android/fragment/ReportProblemFragment;)Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$3;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$200(Lcom/instagram/android/fragment/ReportProblemFragment;)Z

    move-result v0

    return v0
.end method
