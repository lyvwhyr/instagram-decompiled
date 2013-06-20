.class Lcom/instagram/android/people/fragment/PeopleTagFragment$2;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 112
    return-void
.end method
