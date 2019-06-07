Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED1D3926F
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KzFzBUI7JwEKsqMghO+AqjRs1Vazw2hyNGTFv1G45Y=; b=TPa+Ntszvn7RLu
	tLUicRNCrBtBcW+QtkpuAQ1kCpePbBr2a4gargNQOEfajv4HcNqMghmX7SpDHza8sHAEjKFLPk4Wo
	aVfnXB7aLD43/UiZ9RbDt8+KojgK5n6YZub+f6AU5HGxYgMbTC9NcKVl3VCQbWKodXDhWmnDdb0Yd
	Ox3bzJJoZ50dmwEyFBs9agtbOZ01/IATIqprvp8VHCFIGQcJUCOO5Yn1wpdTYSXgcO3C+lTu7gTbr
	c+rpk5lrQwQ/kkxM5io0Vkp1f6m5Tpt+2whYjbPsog9xlxoGUW8OXC5fIWQzQOpqEwXKUo9l3SXus
	/h6G9HTatgRc8w3DNTyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHz2-0007AJ-JP; Fri, 07 Jun 2019 16:44:52 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHyw-00079f-1R
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:44:47 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id C599568AFE; Fri,  7 Jun 2019 18:44:19 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:44:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH 0/2] NVMe 1.4 Identify Namespace Support
Message-ID: <20190607164419.GC7307@lst.de>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <CAOSXXT5vsi4Fp20dj9TrouwNAYfOAMxAsbFZADZQ9pZE8uo3VA@mail.gmail.com>
 <yq1a7etjuab.fsf@oracle.com>
 <CAOSXXT55eF5hUqoyyrY1OV1iPs3bKwU6FbmTN6m_-sr2JXQ5dg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT55eF5hUqoyyrY1OV1iPs3bKwU6FbmTN6m_-sr2JXQ5dg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094446_231937_F8732CD0 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 10:26:47AM -0600, Keith Busch wrote:
> The intention for this feature is to communicate potentially larger
> physical blocks than page sizes, so I was just hoping for enforcing
> that access from filesystems. Something like this from xfs
> 
>   https://lwn.net/Articles/770975/
> 
> would be a nice feature.

No need for new NVMe features for that, you just need a controller
that exposes a LBA format with a data size larger than 4k, which has
been perfectly doable since NVMe 1.0.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
