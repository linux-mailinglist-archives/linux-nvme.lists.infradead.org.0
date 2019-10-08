Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC26CFE42
	for <lists+linux-nvme@lfdr.de>; Tue,  8 Oct 2019 17:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mfth+mGT9WINJh7HysXYGWJlMrpZ0PYInnfig+Dghs=; b=XYneRJcloq+XFS
	1XgPHyPLmPoMZOZhJWuNb74zrcXbXtEYBTMsXkSl+dPjdZizixw7brY//H/5ySvC9JdnmDUxlQNR7
	jpfAOvsBBDCa2VMkr9O2wn/19acbt+WDI2avv8xTlL4UfDw8Vn3gN9nM+BEb7U2Y7T9upUXkAWlbq
	R15aM3yeOwSAlW+zTDbc2VAFUGgryvSBwk0eOYlNm28ZPd7VZdWEBhHS7Kpy3lSRVs7QHsMurvHlp
	LVQUlkcljxvK+08Smr/Y9ZmYZoIcyWHLnTRXuL4dN7jkOiJIXRQHEwTT+Q+mDk2ypy5bNv2U0bNrO
	aXC5EZhCL/ycJ9cMoM9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrtg-0000NB-CG; Tue, 08 Oct 2019 15:59:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrtb-0000Mr-Qd
 for linux-nvme@lists.infradead.org; Tue, 08 Oct 2019 15:59:33 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41DF9206C0;
 Tue,  8 Oct 2019 15:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570550370;
 bh=p7M5THPrHJa0ZASERd+tyqVnV3NhY+ElDrqGTjZtVPA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A0BwknLlMbqJXtSETV5mHjMiq2yozGFDD1eZmmtF3NLSLe2wx4iSshWNAjVJXBlc8
 kHL1UtrsVHPRmILo5c7ZH1OQfXP7Y1kvApWuVGcwwsxKvDW8VCgOMmnjC+1vDfhXtU
 YTxXufs/E3AcW7waJ/5/S03vlvI1Cbytp1P6iR0g=
Date: Tue, 8 Oct 2019 09:59:28 -0600
From: Keith Busch <kbusch@kernel.org>
To: Vaibhav Nagarnaik <vnagarnaik@google.com>
Subject: Re: NVMe PCI driver ignores SQHD from completion entries
Message-ID: <20191008155928.GB23704@C02WT3WMHTD6.wdl.wdc.com>
References: <CAL26m8+WdjrKvnXDZdP4d2ekznfORDUV2Td6U6-DY9gcOqoOUA@mail.gmail.com>
 <20191005142722.GA30437@keith-busch>
 <CAL26m8+gM6KdrqpDTTQ_Tj7FGSd-qbcU78O0Ok3EaQ_B9rgHkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL26m8+gM6KdrqpDTTQ_Tj7FGSd-qbcU78O0Ok3EaQ_B9rgHkw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_085931_885063_C4021656 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abbas Companywala <acompany@google.com>,
 Bart Van Assche <bvanassche@google.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Eric Gouriou <egouriou@google.com>,
 Christoph Hellwig <hch@lst.de>, "Mihai R." <dizzy@google.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 05:32:55PM -0700, Vaibhav Nagarnaik wrote:
> On Sat, Oct 5, 2019 at 7:27 AM Keith Busch <kbusch@kernel.org> wrote:
> > Checking SQ head is required only if the host might submit more commands
> > than there are entries. The Linux nvme driver allocates enough tags
> > for the depth of the queue, leaving one entry empty, so having a tag
> > available means the next sq entry must be available.
> 
> But the driver does overwrite submission queue entries under process
> (which are already fetched by the controller). Are there guarantees
> from controllers out there that once fetched, the SQ entries will not
> be fetched again for any reason? The spec doesn't prohibit that.

Every controller I've encountered fetches commands exactly once. I have to
admit I don't find this spelled out in great detail in the spec, though
out-of-order fetching doesn't sound like it would satisfy the properties of a
queue.

Closest thing I can find is in section 4.1:

  The consumer of entries on a queue uses the current Head entry pointer to
  identify the slot containing the next entry to be consumed.

And later says:

  Once a Submission Queue or Completion Queue entry has been consumed, the slot
  in which it was placed is free and available for reuse.

If you have to re-fetch an entry, then the controller didn't "consume" it on
the original fetch. If the controller completes a later entry, it has consumed
an entry that wasn't the "next" entry in violation of the consumer requirement.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
