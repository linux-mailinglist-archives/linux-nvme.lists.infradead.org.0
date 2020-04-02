Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4286919C77C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 19:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4y25cV3ptzL6WpqK24a/aDRHNfpqGwuxQMHpkug7Xu8=; b=ShXxtBvsP38OPX
	PrrYaY/z9wQal5XfEBU5wxJjf4Cu0pvtUXahIs3tpUFP+ut7u7/Uq/oSxe46he8ruoyJLDKkGWp83
	wGNdHwQNSzCQIw4hX69LH+AWDQbdP7KBks0IKeeYVM7/O0RGHVUMWG9fnCD2p2gv0BdMAVT8tQsFZ
	vRglcj0Sw5t0Eu9xuvU96PLiKJ/Y32FGJqCjaFCf/eyyQJ+YSMt3qM3OXebeeW9/sxSetSQkcrCVe
	56wjd618eQY9HUV8nntav8/SzcV0aHgGKfJ/48fUhugzfDNZnouZrL3Js9HxD8V+/JgQpc2wf7WZs
	HwwcUGHZltNHIL7VnHKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3Co-00051F-Df; Thu, 02 Apr 2020 17:00:38 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3Cj-00050M-J7
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 17:00:35 +0000
Received: by mail-io1-xd44.google.com with SMTP id o3so4427472ioh.2
 for <linux-nvme@lists.infradead.org>; Thu, 02 Apr 2020 10:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=00HyttW/1AeMLPHJLFBMpSnIllyN9tX8x84JYqEGRH8=;
 b=wBQiw7E6kXm09I5YFr9q/TDVlnkcHxmIDaNRSZ4voaYnNZkM1rJxV4YfPw1f7D49ua
 9diaG3uTir3K1rEmWqOeUYNP/sk8RASlWX6HbYI2hX34zXa2iJj0dke/DkQ4dLDW4jTD
 OcKOZZWnaT2Vbi4VcdI1lIGczXpKXmBmUe4CEFc/LYC4yxiQsACg7nVwbroyKIoGNmxn
 dtkfSRKQS/ccC7GgS4ME82I3ICxbiKJHq0vaPlRic7GC3WhetLKv6gGJWuP6yUi5G3rc
 8DQaH7mb4edt5bmcaPSXcQfOO6itaYqzeocMR5RgMPBS5gphMn3YRL23QBoQWh4jfYBG
 ERGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=00HyttW/1AeMLPHJLFBMpSnIllyN9tX8x84JYqEGRH8=;
 b=eKSvJmZ8TQfvsR8/MYLA5nhDbA2Jh6vEUgm6lJ6b9iJIEAXny9X7mlO1E4l8rJzRHx
 mpGrH4vD7LMJDYkg8wKyXkKIsrmP83RY1uP7MQWihUmh+2av5XFPDKw8zITTGHIp52O6
 lZoXqczDrX5lSllsI7MfRyDU89eO1OGZx14hE8WGDAHXHA0gMrrRcIqXBSAkBgZhKdjj
 PUyJ4Mh64ETCQPRDd0/7hcP6MAT93oNuyjduINCejhoDN+ehfsSWNoEzuBzuZYc5tpPy
 9Z9+nFMIhVQsDaXwaunXhp9TTFZ8OwsTScODpX6TaEczyr0SqTdL6xY+FgCFFs5hFGXL
 3Npw==
X-Gm-Message-State: AGi0Pua2bQ9UK+TCutrDoIGRY4Gwv48KtwKupIvxbKTxLOqKw2v60vJC
 a+mIhSD/ZkqbLpWtfIBtMwUhBwnoV7Mv8i2Fz9QGIw==
X-Google-Smtp-Source: APiQypIxZhVG+/HBcYGgWwtrq22uhdkZkoKOj1BvtOiwttImoHGKan1tBQ8jihKmAA0iiHjoEXfEsUwVJ8UcMAQZPpU=
X-Received: by 2002:a05:6638:11c5:: with SMTP id
 g5mr4372389jas.53.1585846829146; 
 Thu, 02 Apr 2020 10:00:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200302033004.19474-1-chaitanya.kulkarni@wdc.com>
 <CAOcd+r3VVcjM=deQxZYskw=E+qZN68PKAy6vL8yvyCc4FTxJgg@mail.gmail.com>
 <BYAPR04MB4965B8FC2D68B37B5D384F4E86C60@BYAPR04MB4965.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB4965B8FC2D68B37B5D384F4E86C60@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Alex Lyakas <alex@zadara.com>
Date: Thu, 2 Apr 2020 20:00:16 +0300
Message-ID: <CAOcd+r1d7zeP3p+jH_PqaSRTs0p2u3Lt+uom1j8PWTca8csCiA@mail.gmail.com>
Subject: Re: [PATCH V4] nvme-fabrics: reject I/O to offline device
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_100033_691130_A9264013 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, "snitzer@redhat.com" <snitzer@redhat.com>,
 "james.smart@broadcom.com" <james.smart@broadcom.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 "Victor.Gladkov@kioxia.com" <Victor.Gladkov@kioxia.com>,
 "hare@suse.de" <hare@suse.de>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Chaitanya, Victor,

I believe the following modification to nvme_failfast_work addresses the issue:

static void nvme_failfast_work(struct work_struct *work)
{
    struct nvme_ctrl *ctrl = container_of(to_delayed_work(work),
        struct nvme_ctrl, failfast_work);
    bool run_queues = false;

    spin_lock_irq(&ctrl->lock);
    if (ctrl->state != NVME_CTRL_CONNECTING)
        goto out;

    set_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags);
    dev_info(ctrl->device, "failfast expired set for controller %s\n",
        ctrl->opts->subsysnqn);
    nvme_kick_requeue_lists(ctrl);
    run_queues = true;
out:
    spin_unlock_irq(&ctrl->lock);

    if (run_queues) {
        struct nvme_ns *ns = NULL;

        down_read(&ctrl->namespaces_rwsem);
        list_for_each_entry(ns, &ctrl->namespaces, list) {
            blk_mq_run_hw_queues(ns->queue, true/*async*/);
        }
        up_read(&ctrl->namespaces_rwsem);
    }
}

Basically, calling blk_mq_run_hw_queues(). I see that in-flight IO
also fails after fast_io_fail_tmo, as expected.

Can you please comment?

Thanks,
Alex.

On Thu, Apr 2, 2020 at 7:48 AM Chaitanya Kulkarni
<Chaitanya.Kulkarni@wdc.com> wrote:
>
> On 3/31/20 11:21 AM, Alex Lyakas wrote:
> > Thank you for addressing this issue. I asked about this scenario in
> > June 2019 in http://lists.infradead.org/pipermail/linux-nvme/2019-June/024766.html.
> >
> > I tested the patch on top of Mellanox OFED 4.7 with kernel 4.14. From
> > my perspective, the direction is very good. But I think the problem is
> > only partially addressed.
> >
> > When a controller enters a CONNECTING state and the fast_io_fail_tmo
> > expires, all new IOs to this controller are failed immediately. This
> > is great!
> >
> > However, in-flight IOs, i.e., those that were issued before the
> > controller got disconnected, are still stuck until the controller
> > succeeds to reconnect, or forever. I believe those IOs need to be
> > errored out as well after fast_io_fail_tmo expires.
> >
> > I did some debugging to try to accomplish that. I thought that the
> > crux is that in-flight IOs are failed, and retried due to non-zero
> > nvme_max_retries parameter. And by this time the request queue is
> > quiesced by blk_mq_quiesce_queue(), and that's why in-flight IOs get
> > stuck. I indeed see that nvme_retry_req() is called for some IOs. But
> > I also see that after that, the request queue is un-quiesced via:
> > nvme_rdma_error_recovery_work() =>
> >     nvme_rdma_teardown_io_queues() => nvme_stop_queues() // this
> > quiesces the queue
> >    nvme_start_queues() // this un-quiesces the queue
> >
> > Can anybody perhaps give a hint on the approach to error out the
> > in-flight IOs? I can modify the patch and test.
> >
> > Thanks,
> > Alex.
>
>
> Thanks for the feedback. Let me see if I can generate the scenario and
> have a test for this.
>
> I'll send out the updated patch soon.
>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
