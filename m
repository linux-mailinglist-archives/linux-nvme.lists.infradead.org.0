Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829D21D7C4C
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 17:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2uS7gCgVIciHmr95BG/czwPNQWBVbRWZOT6MFAXuFk=; b=DOn6vag46WHqK2
	8uwd0RuHpd9eO2PJmKtltt960941WPUFp4Ks0Y6mC2hgeqAKeXO5reLXCQzYNumPT5ilb/l1/tdA+
	PM4X677p+J0SsAUrlKlOWLRMzu0vMRCKGm11QdTXX+gN4X2iHHIDXztmE5LGcl/FayDVHvY/qkNPb
	DWoxHVcKyN4G1lMNy9FQp9wmah2sj1uH3+OQholJFbgl/FHlluLpuja5m6Z4f5DTXWXR91vpEhTTF
	wIZKaWlIGavusA5KLmf6nDsRzMrzBz7UagbB2v6vd4wOFDbtP2Wku0bledJligTP4o6CLL5GChS/1
	JrA4H3pD9Ngd8DKSZavw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahK2-0006Fy-KR; Mon, 18 May 2020 15:04:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahJy-0006Fa-NF
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 15:04:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 816E668B02; Mon, 18 May 2020 17:04:45 +0200 (CEST)
Date: Mon, 18 May 2020 17:04:45 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V3 1/3] nvmet: add helper to revalidate bdev and file ns
Message-ID: <20200518150445.GA8871@lst.de>
References: <20200518043034.48277-1-chaitanya.kulkarni@wdc.com>
 <20200518043034.48277-2-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518043034.48277-2-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_080450_908168_B6E2443E 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +void nvmet_ns_revalidate(struct nvmet_ns *ns)
> +{
> +	loff_t old_size = ns->size;
> +
> +	ns->bdev ? nvmet_bdev_ns_revalidate(ns) : nvmet_file_ns_revalidate(ns);

Please use a good old if/else instead of this obsfucation.

The rest looks good.

> +
> +	if (old_size != ns->size)
> +		nvmet_ns_changed(ns->subsys, ns->nsid);

Also this should probably go into a separate patch with proper
documentation and not into one just saying it adds a helper.

Otherwise this looks fine.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
