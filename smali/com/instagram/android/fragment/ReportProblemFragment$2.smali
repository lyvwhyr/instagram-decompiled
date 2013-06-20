.class Lcom/instagram/android/fragment/ReportProblemFragment$2;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ReportProblemFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$2;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$2;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->sendBugReport()V

    .line 80
    return-void
.end method
