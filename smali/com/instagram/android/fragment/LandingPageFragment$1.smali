.class Lcom/instagram/android/fragment/LandingPageFragment$1;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/LandingPageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/fragment/LandingPageFragment$1;->this$0:Lcom/instagram/android/fragment/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/fragment/LandingPageFragment$1;->this$0:Lcom/instagram/android/fragment/LandingPageFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 71
    return-void
.end method
