Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827011E528
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 00:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSi7urHq3ddN6wI+LwHb7if5pF7Hi4UD2lEh8SYcgEg=; b=VwYsgDzqsoxr5m
	Zh1t/XcG6RiI37BCTWmlp0gakg5/53R/w5qYr84dWilCbIWGYMlksrFd+fpAHg4EWQnw0IqXgUOb9
	jKCHldQar1LSwbXqx6SRgnY/SDQgYaUyd2DNnh2Z8ff8aw69QfKsNTrFce07aFBtdW20tl32jQsoc
	y/pf+GXr+1MShznMceXXTBCv3AUPeyy6yMWcvSIYYLkBfozXAp/p8QFgyl1xW/COS+RsX2LEJj/TV
	VjJMktOlqz731jMYSZ0Kix65AcvEBxjzgQqQbInMRY7MmZD9UDzYEFAdwUD8XNFcrDLrjzspC2QnV
	II7O5om9v0AKepVorm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQftO-00055d-1o; Tue, 14 May 2019 22:27:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQftJ-00055B-RI
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 22:27:23 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 15:27:21 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 14 May 2019 15:27:20 -0700
Date: Tue, 14 May 2019 16:22:01 -0600
From: Keith Busch <kbusch@kernel.org>
To: Adam Carter <adamcarter3@gmail.com>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514222201.GD19977@localhost.localdomain>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
 <20190514052027.GB6294@lst.de>
 <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
 <20190514055832.GA6843@lst.de>
 <CAC=wYCECcfqoDDMcgVj-4dAEUxNpY62vAEMOD8-eGrZK8wOV-g@mail.gmail.com>
 <20190514135434.GA19837@localhost.localdomain>
 <20190514141220.GA25519@ming.t460p> <20190514141439.GA14213@lst.de>
 <CAC=wYCFzdNNiaXWoAEMoj00f5enk3mJzQrUL9CjZD2RRRxAXNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC=wYCFzdNNiaXWoAEMoj00f5enk3mJzQrUL9CjZD2RRRxAXNg@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_152721_915421_C75592AA 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: keith.busch@intel.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, axboe@fb.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:14:22AM +1000, Adam Carter wrote:
> >
> > Or this one posted yesterday for that matter:
> >
> > https://marc.info/?l=linux-block&m=155772952511144&w=2
> >
> 
> I have re-tested and the issue is fixed for me with the above. Many thanks.

Thank you for verifying.

Replying in plain-text for the mailing lists (they'll reject html
messages, just for future reference), and I assume your response is
providing a Tested-by notice for Christoph's patch.


> Here's my working;
> cd /usr/src
> cp -a linux-5.1.1-gentoo linux-5.1.1-gentoo-patched
> rm linux
> ln -s linux-5.1.1-gentoo-patched linux
> cd linux
> cp ~adam/block.patch
> patch -p0 <block.patch
> patching file block/blk-settings.c
> Hunk #1 succeeded at 309 (offset -1 lines).
> Hunk #2 succeeded at 760 (offset 15 lines).
> make -j8 && make modules_install && make install && grub-mkconfig -o
> /boot/grub/grub.cfg && emerge -1 virtualbox-modules
> 
> Where block.patch is;
> # cat block.patch
> --- block/blk-settings.c
> +++ block/blk-settings.c
> @@ -310,6 +310,9 @@ void blk_queue_max_segment_size(struct request_queue
> *q, unsigned int max_size)
>                 __func__, max_size);
>      }
> 
> +    /* see blk_queue_virt_boundary() for the explanation */
> +    WARN_ON_ONCE(q->limits.virt_boundary_mask);
> +
>      q->limits.max_segment_size = max_size;
>  }
>  EXPORT_SYMBOL(blk_queue_max_segment_size);
> @@ -742,6 +745,14 @@ EXPORT_SYMBOL(blk_queue_segment_boundary);
>  void blk_queue_virt_boundary(struct request_queue *q, unsigned long mask)
>  {
>      q->limits.virt_boundary_mask = mask;
> +
> +    /*
> +     * Devices that require a virtual boundary do not support
> scatter/gather
> +     * I/O natively, but instead require a descriptor list entry for each
> +     * page (which might not be idential to the Linux PAGE_SIZE).  Because
> +     * of that they are not limited by our notion of "segment size".
> +     */
> +    q->limits.max_segment_size = UINT_MAX;
>  }
>  EXPORT_SYMBOL(blk_queue_virt_boundary);
> 
> -- 
> 2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
