Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C600150D7
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suH5fq89MjEy0IBUWlH9ct7S53n22uDXk7HCgEtRGPA=; b=b2SIn2V3eHI/YA
	vSD5/Qveb9kpGL6Iumw2LNbSouF+jplt4k0lk7DTgciJlfbMOx9k6NmvyB2apugqlCIyJZnkVIYmU
	o21uGE++rvWQ1iJ1b3WKcoE5Sf21L97HpV4lq055mrVVB/tyGB6nohbKx/98gTaKWTe2I3NoF1xRj
	G6IQ2+VuBmVqlgNxUXQ2RNJpUGwwU3M7EAyXbIhLrIsu4uuyComcXQusYsehJpB+0/S4iCUChVHbI
	oIftmAwWlJ0FSscM9hZlASCcT/zbW0v0SjajVSD3Q/oplpN5EsICYfIkQn534Rprtrp4wXDWArLj9
	YP0Ilt/v9lwcx4JvVizQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNg4F-0003V9-2X; Mon, 06 May 2019 16:02:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNg4A-0003Ul-En
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:02:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 09:02:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="171329230"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2019 09:02:08 -0700
Date: Mon, 6 May 2019 09:56:32 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
Message-ID: <20190506155632.GA2219@localhost.localdomain>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
 <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
 <20190506151727.GB2164@localhost.localdomain>
 <1ced3919-af4a-7899-8d49-026b9cc82e2b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ced3919-af4a-7899-8d49-026b9cc82e2b@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_090210_502522_711400CB 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 12:52:34AM +0900, Minwoo Im wrote:
> 
> I think it's possible to happen in nvme-pci also.  When a CPU is handling a
> request completed with nvme_complete_rq(), the controller reset by sysfs can
> occur.  In this case, blk_mq_tagset_busy_iter() will iterate over the
> requests allocated in nvme_dev_disable().
> 
> Does nvme-pci host driver handle this kind of situation ?

Yes, we have barriers that ensure no other thread can be operating on
a completion queue entry at the point we iterate the tagset.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
