.class Lcom/instagram/android/fragment/ExploreFragment$2$1;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/ExploreFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ExploreFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/fragment/ExploreFragment$2$1;->this$1:Lcom/instagram/android/fragment/ExploreFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/fragment/ExploreFragment$2$1;->this$1:Lcom/instagram/android/fragment/ExploreFragment$2;

    iget-object v0, v0, Lcom/instagram/android/fragment/ExploreFragment$2;->this$0:Lcom/instagram/android/fragment/ExploreFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ExploreFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CompositeSearchFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/CompositeSearchFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
