Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1236DCCA70
	for <lists+linux-nvme@lfdr.de>; Sat,  5 Oct 2019 16:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDIKTSI6WkAEDEQcopsDGfaTl1xdzWmXuB7X35vUmkg=; b=fM+Da2quc5pk22
	xosqkrf8WkgHYnf+Xc8udBOHzCL64yXuXW2QPr9BTllqPFDzG9Kvz9/8tVCuL+49tSfNM84gZwqO+
	ALKvkQBWcqG19gjE0JIQ/9J2BLSo7ZDTzGefc6s4T/fBEzDHRix75Vlqr/jYm8cAAAxxMiCR1OdIw
	zA5h/1FGlJLX9pu54R3kMMqgCTOozN560moQ19PYcvvwlTjo4MgJwns2IFIRHsDMN0gd7k29dA6En
	JFr5fbVYJsYihtJCeigqY+w64fOfsOiq8pCodeGOi7GdpHqJr7y04Kg/9+pksuf761eA28kFIuKQL
	HOGNgKbOMFaBMkFe4wtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGl1y-0008Bq-Dh; Sat, 05 Oct 2019 14:27:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGl1s-0008BR-E4
 for linux-nvme@lists.infradead.org; Sat, 05 Oct 2019 14:27:29 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED36820867;
 Sat,  5 Oct 2019 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570285646;
 bh=UD0egFrewoGArEUXUFRIKH2tG8DKX9fSWcSV47Q9qwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=otl48pUUEogU/yYVgcD25X+u5KFc9eX2jRunCOIfyCoGnMvVK0rL1AFn5kNL1ursd
 ayA8JEPRYHnotdNZIPCmcuUSPUHHZUDyD+HfjcXb0Da59lwI3QiAKHWiZO8/1ce6GW
 mhsFvl6f/KSbljyFFF8YQrw0de1V7fHNVh0Bqq3M=
Date: Sat, 5 Oct 2019 08:27:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Vaibhav Nagarnaik <vnagarnaik@google.com>
Subject: Re: NVMe PCI driver ignores SQHD from completion entries
Message-ID: <20191005142722.GA30437@keith-busch>
References: <CAL26m8+WdjrKvnXDZdP4d2ekznfORDUV2Td6U6-DY9gcOqoOUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL26m8+WdjrKvnXDZdP4d2ekznfORDUV2Td6U6-DY9gcOqoOUA@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_072728_502090_B0F18EF2 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Oct 04, 2019 at 11:27:30AM -0700, Vaibhav Nagarnaik wrote:
> According to NVMe spec:
> A Submission Queue entry has been consumed by the controller when a
> Completion Queue entry is posted that indicates that the Submission
> Queue Head Pointer has moved past the slot in which that Submission
> Queue entry was placed.
> 
> Which means, the driver needs to verify SQ Head Pointer value reported
> in the completion entries before considering a particular SQ entry
> reusable. Otherwise it's undefined behavior.

The spec allows the controller to process and complete commands out of
order, but the controller must fetch those commands in order. It's in the
"Theory of Operation" section 1.4.

Checking SQ head is required only if the host might submit more commands
than there are entries. The Linux nvme driver allocates enough tags
for the depth of the queue, leaving one entry empty, so having a tag
available means the next sq entry must be available.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
