.class Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks$1;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks$1;->this$1:Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks$1;->this$1:Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;

    iget-object v0, v0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 259
    return-void
.end method
