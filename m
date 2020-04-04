Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D05A19E339
	for <lists+linux-nvme@lfdr.de>; Sat,  4 Apr 2020 09:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8qdpfuTqkMrNcGf0qtj8e1DqgehvOlgIfmerxoP35E=; b=V5phX/tDHwAFPo
	VsQ0DEx2B/RYpREh3smiqakk8/mj25NZZ1Y2Yxy/8H1UGrN+rVjYvLHieus5sUCU9nmBg5MPr2ciF
	oB1i3PqIO2bfZIHopv3C+2teSdWwvOiq7u6LmIhsZumasVRqnScYYeqZSBIJ7bubT0kB2BdvSIB+9
	z5LnVgEeq62dRyRvc4GDas9D5VDM94AFVFoix2Mr4+QGOKnO7hhyLsN9L+VZ0TVK5F9Po0WeWAXA/
	im8oYVwkzzfuMR+SI7WZDXLmYJxA2XxjBwYgFr1TZrTy8y8zOPIyyQLdPgh7EcfFhk4zcyZe00vWI
	r14cBpeSACLAwctH6JCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKd0j-0001zt-II; Sat, 04 Apr 2020 07:14:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKd0b-0001xx-Lf
 for linux-nvme@lists.infradead.org; Sat, 04 Apr 2020 07:14:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D060B68C4E; Sat,  4 Apr 2020 09:14:23 +0200 (CEST)
Date: Sat, 4 Apr 2020 09:14:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: remove unused parameter
Message-ID: <20200404071423.GB14645@lst.de>
References: <20200403162409.1324031-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403162409.1324031-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_001425_874045_369B1407 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Apr 03, 2020 at 09:24:09AM -0700, Keith Busch wrote:
> nvme_alloc_ns_head() doesn't use the 'struct nvme_id_ns' parameter.
> Remove it, and update caller accordingly.

applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
