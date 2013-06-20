.class Lcom/instagram/android/fragment/UserOptionsFragment$2$3;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$3;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->clearRecentSearches()V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void
.end method
