Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A532D251E5
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 16:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tsu0e+HyqlAjMyl7oTzIDk0g/HnWl7tv+VL75uKlR8=; b=q1dSXI4kUch3R/
	qo8aNU1ukkpgpO4f9Izt3TnnoiDaTN935EpPBBVbupF10cSFwHPhHN5LDZvVFbvQ+EEtjVrmTolyO
	v2dP9JgkBbaxNfU/XAHGYjqYuZ2mc4RmuoOn4D0PkgSPGn1ZKIqjTdVN83pwfwr2Whravel71v+h7
	L+cBBvGe9z5qrECjGwFzjdBtIrKXfs/Xj+ZWFLQLWehr0PHeRHkJPQXo3nxlcQ9btTMaqPLrg+LB0
	oJuj6Ndi/5wS03FTbWv4qSynpPpxR4nBVPb0lvLeVUaoO9PPls98mfPse/FZqBMsMXHJF0uMcoHs4
	k/ht54HN8yluU0PwhmhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5hj-0005Y6-Tb; Tue, 21 May 2019 14:25:23 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5he-0005XI-C1
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 14:25:19 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 07:25:12 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 21 May 2019 07:25:12 -0700
Date: Tue, 21 May 2019 08:20:01 -0600
From: Keith Busch <kbusch@kernel.org>
To: =?iso-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
Message-ID: <20190521142000.GA350@localhost.localdomain>
References: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
 <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_072518_427519_C3EE82CA 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Ming Lei <tom.leiming@gmail.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 05:12:46PM -0500, Iv=E1n Chavero wrote:
> > Not see this issue with 5.1 kernel, may be addressed by the following
> > patches:
> > =

> > 4e6b26d23dc1 PCI/MSI: Remove obsolete sanity checks for multiple
> > interrupt sets
> > a6a309edba13 genirq/affinity: Remove the leftovers of the original
> > set support
> > 612b72862b4d nvme-pci: Simplify interrupt allocation
> > c66d4bd110a1 genirq/affinity: Add new callback for (re)calculating
> > interrupt sets
> > 9cfef55bb57e genirq/affinity: Store interrupt sets size in struct
> > irq_affinity
> > 0145c30e896d genirq/affinity: Code consolidation
> > =

> > =

> i've tested with the 5.1.3 Fedora kernel and still got the same
> behaviour.
> =

> I think this might be relevant to solve the problem but i'm not sure:
> =

> [    2.394967] Workqueue: nvme-reset-wq nvme_reset_work [nvme]
> =

> [    2.394982] Call Trace:
> [    2.394986]  blk_mq_pci_map_queues+0x30/0xc0
> [    2.394990]  nvme_pci_map_queues+0x80/0xb0 [nvme]
> [    2.394993]  blk_mq_alloc_tag_set+0x11c/0x2c0
> [    2.394996]  nvme_reset_work+0xfd6/0x1515 [nvme]
> [    2.395000]  ? __switch_to_asm+0x40/0x70
> [    2.395001]  ? __switch_to_asm+0x34/0x70
> [    2.395003]  ? __switch_to_asm+0x40/0x70
> [    2.395005]  ? __switch_to_asm+0x34/0x70
> [    2.395007]  process_one_work+0x19d/0x380
> [    2.395010]  worker_thread+0x1db/0x3b0
> [    2.395011]  kthread+0xfb/0x130
> [    2.395013]  ? process_one_work+0x380/0x380
> [    2.395014]  ? kthread_park+0x90/0x90
> [    2.395016]  ret_from_fork+0x35/0x40
> [    2.395018] ---[ end trace 3af2b3afa977ff9e ]---
> =

> =

> I think this is a timing problem because the other partitions don't get
> mounted ro.
> =

> What could i do to make this work? I'm stuck in kernel 4.16.11 and i
> would really like to use latest kernel.

The warning in itself is not necessarily fatal and may not explain why
the filesystem is having issues. It should just mean that you've only
a single MSI interrupt vector sharing with the admin queue, so it's an
unmanagged vector, creating this warning. It should otherwise be usable.

The following should work around the warning assuming the vector count
is really what's creating your warning: managed irqs should always have
an offset, so no offset should mean no pci irq affinity.

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..d55e1d92cf59 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -464,7 +464,7 @@ static int nvme_pci_map_queues(struct blk_mq_tag_set *s=
et)
 		 * affinity), so use the regular blk-mq cpu mapping
 		 */
 		map->queue_offset =3D qoff;
-		if (i !=3D HCTX_TYPE_POLL)
+		if (i !=3D HCTX_TYPE_POLL && offset)
 			blk_mq_pci_map_queues(map, to_pci_dev(dev->dev), offset);
 		else
 			blk_mq_map_queues(map);
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
