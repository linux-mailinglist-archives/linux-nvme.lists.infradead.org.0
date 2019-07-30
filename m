Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CAC79E16
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6HLmPJn4Jl5NohTKa9MuMBWgfP+3A2eIHUkGDlIDkM=; b=cSk4SfbgIcSdnc
	VwVFT1hj2YnknGo4cC0RFGAxPiEJXTncWVg2Zh8V5bh4tZbPWIGUofEpbTx4xUoa7G3oO0xhZCA49
	OZs4wtIv4MkxKHUfLANL5ayzdz905EMR1eMnOmeJKaPaIOB4S7AzmpJoQueVAuW/L748bO38ZYPw7
	1aLfez2PuNL+fHbsj5GFny7JZ9GLcdEhLz6TUsuwFyqzLi+WFIzE/QYV4j144JEVAMV9rTXMQRx+7
	9k9hx52hUSqgjol4iRIOzt9YsHE6z2K97QGLtUg8vEKXxi3yLxvchrFLZUgBMweoO13hzeYLyctXm
	wZHzwdMco2VNJ5KezoOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHDr-0006UP-03; Tue, 30 Jul 2019 01:46:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHDh-0006Tt-Fb
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:46:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so63978392wru.0
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zG8QWqLKJbw8/S1U6xsIoL5wABGHUAy2FEFdhoTOjZE=;
 b=nNpHiIf0ilrKdkwNz4wVaG7ZDPguxjuRcavKOvOg5wV8Bd8d2CevFoAsJyTKzfQJjz
 Oc21Yb5Sc+jkzk/1VB/HDKCrvYCBw+arvruCCgr27jmgWD46D7lddAfdEZHWGFom3gGH
 XqVHjea6jIooE9P7baOJGSbbklGY0Ou1Irv401z8DwfvYcSeIuofJOqXnHPrCo/M756n
 8QvxHwn7z7klvqeD6stZ4fO0hENlU/ztjjpKKk38N67ja38TpCIDRxax/Nzrb26uDvVM
 /Nkukn6O5hJYoaqjjc7WWVoTZyynL1c1VZ6yvGTlmjR/1ej1DBVVI3/DT+Sk+4tYHG4V
 V+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zG8QWqLKJbw8/S1U6xsIoL5wABGHUAy2FEFdhoTOjZE=;
 b=GxcO4AswZ6KpLMz6eq1Gh02CFHw+imxqH4N7zjoaSrn/i3dDzxdC7CdZz8EJ2Xi3OK
 PG5yOAZAmWyVXuwOU4o2Ihg2BRAP4GoGFC36nI0J8YPqubVuGonOEy5e7tHSa3POsRUb
 LsgGYiEf5QMDAMdXvysNp3BNfqZ6V//JuSrD142zoCEj0mkXRgr9/rkf3CQhdYlhesQm
 Mj66DWaj3nPfSQjNAvJAEuNI9ZAu4e9f6gP4X6hKqnKoyifl/5wbI+/VtCyVQ8+B1m+w
 4qNnNfsYaiScz4R1N6fFqpYo3UZg1IpbXiWszH2TNr4ZDO78Yqus9joy5uAyIjUtNPiA
 w6Vw==
X-Gm-Message-State: APjAAAUUuYpvevAm7c/DMaRrq//TKc/Z3SJ7GnjPxgBo2osXbH8Pn9We
 n3gHz8MLDwbnu58bnBuyeVVRgggWCp35z55R6LQ=
X-Google-Smtp-Source: APXvYqz3yYcYWp9hHU10t2hpag2am0O57VwCwPd6k8v4GgsElnSJdXSSDu506fRD/hvWxewrlchMbgQgBvJOi7NLqEs=
X-Received: by 2002:adf:f088:: with SMTP id n8mr79122947wro.58.1564451187900; 
 Mon, 29 Jul 2019 18:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190725185657.9025-1-sagi@grimberg.me>
In-Reply-To: <20190725185657.9025-1-sagi@grimberg.me>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 30 Jul 2019 09:46:16 +0800
Message-ID: <CACVXFVNcigmg0etOhy_N8NsAMyNDUWZ029r+FdacXjezx7g3rw@mail.gmail.com>
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_184631_985938_FA1BC265 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 2:58 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
> With multipath enabled, nvme_scan_work() can read from the device
> (through nvme_mpath_add_disk()) and hang [1]. However, with fabrics,
> once ctrl->state is set to NVME_CTRL_DELETING, the reads will hang
> (see nvmf_check_ready()) and the mpath stack device make_request
> will block if head->list is not empty. However, when the head->list
> consistst of only DELETING/DEAD controllers, we should actually not
> block, but rather fail immediately.
>
> In addition, before we go ahead and remove the namespaces, make sure
> to clear the current path and kick the requeue list so that the
> request will fast fail upon requeuing.
>
> [1]:
> --
>   INFO: task kworker/u4:3:166 blocked for more than 120 seconds.
>         Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
>   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>   kworker/u4:3    D    0   166      2 0x80004000
>   Workqueue: nvme-wq nvme_scan_work
>   Call Trace:
>    __schedule+0x851/0x1400
>    schedule+0x99/0x210
>    io_schedule+0x21/0x70
>    do_read_cache_page+0xa57/0x1330
>    read_cache_page+0x4a/0x70
>    read_dev_sector+0xbf/0x380
>    amiga_partition+0xc4/0x1230
>    check_partition+0x30f/0x630
>    rescan_partitions+0x19a/0x980
>    __blkdev_get+0x85a/0x12f0
>    blkdev_get+0x2a5/0x790
>    __device_add_disk+0xe25/0x1250
>    device_add_disk+0x13/0x20
>    nvme_mpath_set_live+0x172/0x2b0
>    nvme_update_ns_ana_state+0x130/0x180
>    nvme_set_ns_ana_state+0x9a/0xb0
>    nvme_parse_ana_log+0x1c3/0x4a0
>    nvme_mpath_add_disk+0x157/0x290
>    nvme_validate_ns+0x1017/0x1bd0
>    nvme_scan_work+0x44d/0x6a0
>    process_one_work+0x7d7/0x1240
>    worker_thread+0x8e/0xff0
>    kthread+0x2c3/0x3b0
>    ret_from_fork+0x35/0x40
>
>    INFO: task kworker/u4:1:1034 blocked for more than 120 seconds.
>         Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
>   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>   kworker/u4:1    D    0  1034      2 0x80004000
>   Workqueue: nvme-delete-wq nvme_delete_ctrl_work
>   Call Trace:
>    __schedule+0x851/0x1400
>    schedule+0x99/0x210
>    schedule_timeout+0x390/0x830
>    wait_for_completion+0x1a7/0x310
>    __flush_work+0x241/0x5d0
>    flush_work+0x10/0x20
>    nvme_remove_namespaces+0x85/0x3d0
>    nvme_do_delete_ctrl+0xb4/0x1e0
>    nvme_delete_ctrl_work+0x15/0x20
>    process_one_work+0x7d7/0x1240
>    worker_thread+0x8e/0xff0
>    kthread+0x2c3/0x3b0
>    ret_from_fork+0x35/0x40
> --
>
> Reported-by: Logan Gunthorpe <logang@deltatee.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> Changes from v2:
> - fix silly compilation error (undiclared variable)
>
> Changes from v1:
> - fix compilation with CONFIG_NVME_MULTIPATH=n (Logan)
>
>  drivers/nvme/host/core.c      |  7 ++++++
>  drivers/nvme/host/multipath.c | 46 ++++++++++++++++++++++++++++++-----
>  drivers/nvme/host/nvme.h      |  9 +++++--
>  3 files changed, 54 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 1c2863216082..c657e38f0554 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3577,6 +3577,13 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
>         struct nvme_ns *ns, *next;
>         LIST_HEAD(ns_list);
>
> +       /*
> +        * make sure to requeue I/O to all namespaces as these
> +        * might result from the scan itself and must complete
> +        * for the scan_work to make progress
> +        */
> +       nvme_mpath_clear_ctrl_paths(ctrl);
> +
>         /* prevent racing with ns scanning */
>         flush_work(&ctrl->scan_work);
>
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index a9a927677970..45ffa17f844e 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -109,18 +109,34 @@ static const char *nvme_ana_state_names[] = {
>         [NVME_ANA_CHANGE]               = "change",
>  };
>
> -void nvme_mpath_clear_current_path(struct nvme_ns *ns)
> +bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
>  {
>         struct nvme_ns_head *head = ns->head;
> +       bool changed = false;
>         int node;
>
>         if (!head)
> -               return;
> +               goto out;
>
>         for_each_node(node) {
> -               if (ns == rcu_access_pointer(head->current_path[node]))
> +               if (ns == rcu_access_pointer(head->current_path[node])) {
>                         rcu_assign_pointer(head->current_path[node], NULL);
> +                       changed = true;
> +               }
>         }
> +out:
> +       return changed;
> +}
> +
> +void nvme_mpath_clear_ctrl_paths(struct nvme_ctrl *ctrl)
> +{
> +       struct nvme_ns *ns;
> +
> +       mutex_lock(&ctrl->scan_lock);
> +       list_for_each_entry(ns, &ctrl->namespaces, list)
> +               if (nvme_mpath_clear_current_path(ns))
> +                       kblockd_schedule_work(&ns->head->requeue_work);
> +       mutex_unlock(&ctrl->scan_lock);
>  }
>
>  static bool nvme_path_is_disabled(struct nvme_ns *ns)
> @@ -231,6 +247,24 @@ inline struct nvme_ns *nvme_find_path(struct nvme_ns_head *head)
>         return ns;
>  }
>
> +static bool nvme_available_path(struct nvme_ns_head *head)
> +{
> +       struct nvme_ns *ns;
> +
> +       list_for_each_entry_rcu(ns, &head->list, siblings) {
> +               switch (ns->ctrl->state) {
> +               case NVME_CTRL_LIVE:
> +               case NVME_CTRL_RESETTING:
> +               case NVME_CTRL_CONNECTING:
> +                       /* fallthru */
> +                       return true;
> +               default:
> +                       break;
> +               }
> +       }
> +       return false;
> +}
> +
>  static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
>                 struct bio *bio)
>  {
> @@ -257,14 +291,14 @@ static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
>                                       disk_devt(ns->head->disk),
>                                       bio->bi_iter.bi_sector);
>                 ret = direct_make_request(bio);
> -       } else if (!list_empty_careful(&head->list)) {
> -               dev_warn_ratelimited(dev, "no path available - requeuing I/O\n");
> +       } else if (nvme_available_path(head)) {
> +               dev_warn_ratelimited(dev, "no usable path - requeuing I/O\n");
>
>                 spin_lock_irq(&head->requeue_lock);
>                 bio_list_add(&head->requeue_list, bio);
>                 spin_unlock_irq(&head->requeue_lock);
>         } else {
> -               dev_warn_ratelimited(dev, "no path - failing I/O\n");
> +               dev_warn_ratelimited(dev, "no available path - failing I/O\n");
>
>                 bio->bi_status = BLK_STS_IOERR;
>                 bio_endio(bio);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 740241e84d29..a730c6b3dfba 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -496,7 +496,8 @@ void nvme_mpath_remove_disk(struct nvme_ns_head *head);
>  int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id);
>  void nvme_mpath_uninit(struct nvme_ctrl *ctrl);
>  void nvme_mpath_stop(struct nvme_ctrl *ctrl);
> -void nvme_mpath_clear_current_path(struct nvme_ns *ns);
> +bool nvme_mpath_clear_current_path(struct nvme_ns *ns);
> +void nvme_mpath_clear_ctrl_paths(struct nvme_ctrl *ctrl);
>  struct nvme_ns *nvme_find_path(struct nvme_ns_head *head);
>
>  static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
> @@ -544,7 +545,11 @@ static inline void nvme_mpath_add_disk(struct nvme_ns *ns,
>  static inline void nvme_mpath_remove_disk(struct nvme_ns_head *head)
>  {
>  }
> -static inline void nvme_mpath_clear_current_path(struct nvme_ns *ns)
> +static inline bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
> +{
> +       return false;
> +}
> +static inline void nvme_mpath_clear_ctrl_paths(struct nvme_ctrl *ctrl)
>  {
>  }
>  static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
> --

Wrt. multipath, the patch does correct thing to fail bios(supposed to
requeue) in case
of no available path, so looks fine:

Reviewed-by: Ming Lei <ming.lei@redhat.com>


Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
