Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9C0C49F7
	for <lists+linux-nvme@lfdr.de>; Wed,  2 Oct 2019 10:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTUvljEtcK+U6DloOp6sdhUKs0+doK7e5FK4Pkky0c4=; b=NUSYB4rpb1om0C
	OE7ur1kij2HiyHz2oB1Hd+9wDW9MHoDZC0zuqiuD8cLJmVKDiIpNMoYB6tnT/4jVaGieGntHktz2v
	ESvlGgDhgddDTlKcy9uXYaokhJ9fD9RHEVP8jboP0OjaDfNK5MgrAa8LwYYc19rcyufAOaBP9nThC
	2sbJDYvznjQyhlYuji+VGtetreWzLXtl9WjkRv/wqAwKyJXgEyc7H2eVrHWpEFVcuTphcqCIAPNtV
	UF1Evwp275oonj0xOJ6TS32BRLYbaXMOF9Dg1lnUDsZKNbQmbsXguK/2j+EE0/F+xe49MqNvjNCe5
	XoxGvDNqOTVR16r5H5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFaKV-0004Ye-VJ; Wed, 02 Oct 2019 08:49:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaKK-0004Y0-Ri
 for linux-nvme@lists.infradead.org; Wed, 02 Oct 2019 08:49:43 +0000
Received: from C02WT3WMHTD6.fritz.box (37-247-85-246.natip.skydsl.at
 [37.247.85.246])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7925C215EA;
 Wed,  2 Oct 2019 08:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570006177;
 bh=zp+SCXnlaesd5+Nb76Cpv+uV8+J/BqQpiV8Y5hylkv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZcfaGPIbyij2ZaQOsZZbudmy9XbQSMneCQETwxh5mMn0mv6P/61TPEbEQh4xxOgr2
 Jq6vshQhov35xnAGWE3zy5MdID7dwpMp3bx3n6kavnz7xFwKY2C0wFzKnjwqykDjKc
 NbF5pvyQV+BJmNaypD2/6LNhpu7J5bRZaKZod90A=
Date: Wed, 2 Oct 2019 02:49:20 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: : name: possible deadlock in nvme_ns_remove
Message-ID: <20191002084920.GA13802@C02WT3WMHTD6.fritz.box>
References: <04580CD6-7652-459D-ABDD-732947B4A6DF@javigon.com>
 <3ac73ede-1be4-8459-01f2-1a24b83a1155@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ac73ede-1be4-8459-01f2-1a24b83a1155@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_014940_921018_38D99CF6 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>,
 Judy Brock <judy.brock@samsung.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 11:08:06AM -0700, Sagi Grimberg wrote:
> > Sending this bug report from Judy, who is having problems with the mailing list.
> 
> Hey Judy,
> 
> It appears that you indeed step on a real issue. It seems that
> if nvme_update_formats will fail the revalidate we will acquire
> the sybsys->lock and hang.
> 
> Does this change solve the issue?
> -- 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index fd7dea36c3b6..dc785b1aff8a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1306,8 +1306,6 @@ static void nvme_update_formats(struct nvme_ctrl
> *ctrl)
>                 if (ns->disk && nvme_revalidate_disk(ns->disk))
>                         nvme_set_queue_dying(ns);
>         up_read(&ctrl->namespaces_rwsem);
> -
> -       nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
>  }
> 
>  static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
> @@ -1325,6 +1323,9 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl,
> u32 effects)
>                 mutex_unlock(&ctrl->subsys->lock);
>                 mutex_unlock(&ctrl->scan_lock);
>         }
> +
> +       nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
> +
>         if (effects & NVME_CMD_EFFECTS_CCC)
>                 nvme_init_identify(ctrl);
>         if (effects & (NVME_CMD_EFFECTS_NIC | NVME_CMD_EFFECTS_NCC))
> -- 

Thanks, this patch fixes a real issue regardless. I would just recommend moving
the nvme_remove_invalid_namespaces() call from where you have it to after
releasing the subsys->lock, but before releasing the scan_lock.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
