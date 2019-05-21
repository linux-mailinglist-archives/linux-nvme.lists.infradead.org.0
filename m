Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5885125699
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 19:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUQkywewiDggmBwUEXI0KgxNGJvTqp8Dm10n8DbCyrs=; b=i3i15GnYHRMxh6
	ZOqbqIytPXMZu3mkjWjLdWhNLCL+KZPjtvG6SvbzBnxPPoH8n2QVPwKWjRoie6TgX+vQOev/UVf4i
	EPAWoQL/MBXWCUi36EDTaPTBkOMQvD83Ab8ZpIC04rONuZScw6AG/TmW+kxUwZWtCiTp8eg5cpcAv
	pFNZz2iaZ0nOTwq/MOm8MwZk45BhfWWs5kEtYXVOdNdEr8zlHiEtYDiXjWWlWS+Msk8BX/tmoJngw
	7y0/8zxsaJ6qYtrt2oSl1882hg4HZVqpMm8ZdDJnYw1U3YXPCP8f+BZelFC0wXGla3KtY3n3Tups1
	HLi7l8gmiVWGp4jft5Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8Vy-00049N-Ct; Tue, 21 May 2019 17:25:26 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8Vt-00048k-39
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 17:25:22 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5D54068AFE; Tue, 21 May 2019 19:24:53 +0200 (CEST)
Date: Tue, 21 May 2019 19:24:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH] nvme-pci: use blk-mq mapping for unmanaged irqs
Message-ID: <20190521172453.GA9938@lst.de>
References: <20190521171745.4061-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521171745.4061-1-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102521_287925_73A8BA66 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Ivan Chavero <ichavero@chavero.com.mx>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 11:17:45AM -0600, Keith Busch wrote:
> If a device is providing a single IRQ vector, the IO queue will share that
> vector with the admin queue with a 0 offset. This is an unmanaged vector,
> so does not have a valid PCI IRQ affinity. Avoid trying to use managed
> affinity in this case and let blk-mq set up the cpu-queue mapping instead.
> Otherwise we'd hit the following warning when the device is using MSI:
> =

>  WARNING: CPU: 4 PID: 7 at drivers/pci/msi.c:1272 pci_irq_get_affinity+0x=
66/0x80
>  Modules linked in: nvme nvme_core serio_raw
>  CPU: 4 PID: 7 Comm: kworker/u16:0 Tainted: G        W         5.2.0-rc1+=
 #494
>  Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.1-0=
-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
>  Workqueue: nvme-reset-wq nvme_reset_work [nvme]
>  RIP: 0010:pci_irq_get_affinity+0x66/0x80
>  Code: 0b 31 c0 c3 83 e2 10 48 c7 c0 b0 83 35 91 74 2a 48 8b 87 d8 03 00 =
00 48 85 c0 74 0e 48 8b 50 30 48 85 d2 74 05 39 70 14 77 05 <0f> 0b 31 c0 c=
3 48 63 f6 48 8d 04 76 48 8d 04 c2 f3 c3 48 8b 40 30
>  RSP: 0000:ffffb5abc01d3cc8 EFLAGS: 00010246
>  RAX: ffff9536786a39c0 RBX: 0000000000000000 RCX: 0000000000000080
>  RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff9536781ed000
>  RBP: ffff95367346a008 R08: ffff95367d43f080 R09: ffff953678c07800
>  R10: ffff953678164800 R11: 0000000000000000 R12: 0000000000000000
>  R13: ffff9536781ed000 R14: 00000000ffffffff R15: ffff95367346a008
>  FS:  0000000000000000(0000) GS:ffff95367d400000(0000) knlGS:000000000000=
0000
>  CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>  CR2: 00007fdf814a3ff0 CR3: 000000001a20f000 CR4: 00000000000006e0
>  DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>  DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>  Call Trace:
>   blk_mq_pci_map_queues+0x37/0xd0
>   nvme_pci_map_queues+0x80/0xb0 [nvme]
>   blk_mq_alloc_tag_set+0x133/0x2f0
>   nvme_reset_work+0x105d/0x1590 [nvme]
>   process_one_work+0x291/0x530
>   worker_thread+0x218/0x3d0
>   ? process_one_work+0x530/0x530
>   kthread+0x111/0x130
>   ? kthread_park+0x90/0x90
>   ret_from_fork+0x1f/0x30
>  ---[ end trace 74587339d93c83c0 ]---
> =

> Fixes: 22b5560195bd6 ("nvme-pci: Separate IO and admin queue IRQ vectors")
> Reported-by: Iv=E1n Chavero <ichavero@chavero.com.mx>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 599065ed6a32..f562154551ce 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -464,7 +464,7 @@ static int nvme_pci_map_queues(struct blk_mq_tag_set =
*set)
>  		 * affinity), so use the regular blk-mq cpu mapping
>  		 */
>  		map->queue_offset =3D qoff;
> -		if (i !=3D HCTX_TYPE_POLL)
> +		if (i !=3D HCTX_TYPE_POLL && offset)

Shouldn't be something like

		if (i !=3D HCTX_TYPE_POLL && map->nr_queues > 1)

instead?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
