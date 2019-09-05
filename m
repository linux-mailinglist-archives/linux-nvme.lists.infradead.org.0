Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F23AAA82
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 20:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZF06c3LhPi5aAK5lj6rFuw8cYZ3ScLNTqg5hMShejuc=; b=V0OYCL3wwXgqkL
	/lchkXXAsfzK/b6qlM/dc4kGpY35Lcyb85IxsY43gJ4X5rzFexG+X+aRWLCo1DUaF+WAbe8Scto6l
	zXGTNlm803LA0KLMPbzWuKElSjh8ks07/CjoMtgtrUnTPPCiOxp7DE5u4MAz0RRvVDfoh72EjKqbA
	YlvyDkPg+b7aMQhUE9wS/v7MRXInNIc3zFdkmn8M+m2tAQ5WzRLjOhoTanQZkKfGFJNUUoyHLIQ0b
	dFpBEKIua6u75wSyAjJFElwf+Tu8OH4dgi6MyKLN4sapCkr3zF3NXxu3vOsqe8j4QycpMToOfcPKM
	g7+OioyqMbBCrksf0hEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5w7L-0002e0-50; Thu, 05 Sep 2019 18:04:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5w7D-0002de-Ih
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 18:04:16 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 907B568B05; Thu,  5 Sep 2019 20:04:12 +0200 (CEST)
Date: Thu, 5 Sep 2019 20:04:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 2/3] block: don't remap ref tag for T10 PI type 0
Message-ID: <20190905180412.GC24146@lst.de>
References: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
 <1567701836-29725-2-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567701836-29725-2-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_110415_770140_40685F22 
X-CRM114-Status: UNSURE (   6.35  )
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 martin.petersen@oracle.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> @@ -186,7 +186,8 @@ void t10_pi_prepare(struct request *rq)
>  	u32 ref_tag = t10_pi_ref_tag(rq);
>  	struct bio *bio;
>  
> -	if (rq->rq_disk->protection_type == T10_PI_TYPE3_PROTECTION)
> +	if (rq->rq_disk->protection_type == T10_PI_TYPE0_PROTECTION ||
> +	    rq->rq_disk->protection_type == T10_PI_TYPE3_PROTECTION)

Maybe just check for the ones we want to remap instead.  And add
a little helper

stastic inline bool blk_integrity_need_remap(struct gendisk *disk)
{
	return disk->protection_type == T10_PI_TYPE1_PROTECTION ||
		disk->protection_type == T10_PI_TYPE2_PROTECTION;
}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
