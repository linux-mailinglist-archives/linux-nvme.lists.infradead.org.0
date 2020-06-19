Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A073200F4A
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 17:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zQL4E9COBe3+7TltS7lmCJoUfDWGxGc195pX31bckE=; b=TVmDxxkY70gI2M
	iFb63atrcVzoz9Tqug5uQvnx7i1aH6r9zHyJ0jZil4XPz9HPrPqaKtHYeATdPuQQDQED+NLDoWOgl
	11LWlPVTyq5aCpR7a+rO9al1JPI7nRxWDPz/nx8/e86+NuQeZsjwpkDnwJveWL2Up76oYtQBFX2UK
	6KEj5INFEacerh1d7t1braaCkSKMgqtMr/DY6lcF4HKBtik+t2mG5ypJn6mdPdslnauHui88MkWsh
	U38yWF6FhBHOI/zyPXeqpbmW3iPPFnHeSBBmaVYZOkInY1B0DISLHHP8wXSFs4zTucB7TxALs1CtZ
	gvnAla/MFo8qxLsbvsWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmIqE-0007W1-NB; Fri, 19 Jun 2020 15:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIq9-0007V4-3D
 for linux-nvme@lists.infradead.org; Fri, 19 Jun 2020 15:22:02 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EBD32193E;
 Fri, 19 Jun 2020 15:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592580120;
 bh=e3Xj1HKNmqbdTTYJyhSmInBOYfF1bWOiUAymLVtYCng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pGa+oWVHF1zx6b1W0IPOUx89kBvjLzfPVuG4IAXDF2jKRk4RJhZ/01OfVZEMb2aI9
 iQzPTQM4FScfJ6hXnUxUuREV8wJgm2wrvIWzHpsgOa4SZ8X3MxiAO5+UTHDgA9fwq6
 4ejRzuaCx3uNdbakHZ7NH38ltKPXKSS/Oq3yNLVQ=
Date: Fri, 19 Jun 2020 08:21:58 -0700
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-core: use rcu in instead rw_sem
Message-ID: <20200619152158.GA1149998@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200619033531.27819-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619033531.27819-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_082201_154872_1D0A5199 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 08:35:31PM -0700, Chaitanya Kulkarni wrote:
> With the NVMeOF passthru patches we call nvme_find_get_ns() in fast path
> so that we can get the passthru namespace queue for I/O.
> 
> The function nvme_find_get_ns() uses ctrl->namespaces list which is
> protected by ctrl->namespaces_rwsem. Until now it worked fine but with
> nvme_find_get_ns() being in the fast path we need a better
> synchronization mechanism. Use of rw-semaphore slows down the 
> performance under high pressure I/O.

I'm all for a more efficient implementations, but I'm concerned that
we're still going to search a loop on every request. Maybe use xarray?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
