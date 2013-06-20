.class Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask$1;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask$1;->this$1:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask$1;->this$1:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    iget-object v0, v0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$502(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 243
    return-void
.end method
