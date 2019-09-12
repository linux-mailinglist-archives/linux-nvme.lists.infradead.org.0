Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E167CB0727
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 05:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZWQsw+EamuTDnCw2CN36Eqk5GLzRWsx4I/lG4En8d0=; b=DfGHI0KnweIO5Q
	z3bodJKdqOyMzyAMW2lQsqfisbXu8mfaBcYRfTYjD3r3YvBRDJzkIHkVSx8V3MM4NcLBJfhNihTl2
	6L5GVdhaOqd2bQTe3MNz552UVZHKi1pp1Z2SJpDlq6bzd3ExR/ODwcYiTJhHJiSBwyTwKakbqvbV7
	vYg15JnZ05zz2QXRbFxPAQXPqvW2lV/fNrFbDnEnRhRUVNXyjb2VqPeayXejNOISiN7CHn/V52Ye1
	hNQNoPEOdXhiCHx+0MtAQy2NNLnwPygOPBBdFKF9tpPpKeK8JP3kQJP8NmdJThnBLAL8+X0mgzG+Y
	CSEQ8PNnaU+GGdxWyOuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8FpG-0006zg-19; Thu, 12 Sep 2019 03:31:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Fp9-0006zH-4q
 for linux-nvme@lists.infradead.org; Thu, 12 Sep 2019 03:31:12 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E718A207FC;
 Thu, 12 Sep 2019 03:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568259070;
 bh=vED/K0chXApjPCKYoryEgRFi0Kavo1Fx1q+/gKBe7l4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oW/SS++lnb0AL1ioHDf5Rj4R2+BrbV17h8w4SBmtxliP2eJSmRgt1FCFdereugUHh
 YTrP0Nmx8k6ewKiUW8oXcUkVYHn3jg3OlTYC3z6Bnp+/ZkPLzE8SC1TZ9MWpGUOJo3
 EJJwcf28ou2BZ6gpiGtFN12T/yJv8qSVDGj2Jhqk=
Date: Wed, 11 Sep 2019 21:31:07 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: panic in pci driver
Message-ID: <20190912033106.GA5820@keith-busch>
References: <a1242213-47f1-ffa1-d71a-1b0abb1e1049@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1242213-47f1-ffa1-d71a-1b0abb1e1049@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_203111_210587_C25B7A4F 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 11:46:19AM -0700, Sagi Grimberg wrote:
> Just hit the following bug on a simple test case with Qemu nvme emulation:
> 
> for i in `seq 100`; do echo 1 >
> /sys/devices/pci0000\:00/0000\:00\:0a.0/remove; echo 1 >
> /sys/bus/pci/rescan; done
> 
> Keith, is that addressed by your series with the reset_prepare stuff?

No, but this one fixes it, in rc5 (you're running rc3)

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=bd46a90634302bfe791e93ad5496f98f165f7ae0

> 5.3.0-rc3+ #325

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
