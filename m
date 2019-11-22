Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A8210738C
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 14:45:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2rZ/JxqJYBM5XFxRPIij1rXbmCM1KPoKTcKF0Ex33A=; b=KaSY3gvLIRSYAV
	p/KjMvdklIRmmJ7E0qOoVCHJbTAVRMoq9OLDg23nPiVpqJ/jDMxz5IDeMrdWsdeOBPVP6ubrfuled
	l7kmbSdkvmYjm+VSDInQAncIjDLnaE5mXTAYzWr9kROmuCFNS+zfnGx/pHl3JjY1XQI8MyPIGMkhX
	BvrvsOZveqioMIYIH+vBYvNh1P5unIOv0FSuLWorau/NG5+zkzQ7hLO53S9ALHsL8PWrdqPmuK7+n
	zKEpPP7b0CaBqvAQiX4+JY3GoZigs2YyYyG5X6YOqzYtd2eCqcDuCa5FRZeiJMkIro8aJ+WFqoGup
	FlGUYoIQNwrDaBZghzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY9Fv-0007C1-En; Fri, 22 Nov 2019 13:45:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY9Fq-0007BY-P3
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 13:45:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2318168C4E; Fri, 22 Nov 2019 14:45:44 +0100 (CET)
Date: Fri, 22 Nov 2019 14:45:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V3 2/2] nvmet: make ctrl model configurable
Message-ID: <20191122134543.GB26083@lst.de>
References: <20191122074154.12159-1-chaitanya.kulkarni@wdc.com>
 <20191122074154.12159-3-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122074154.12159-3-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_054547_491757_F1419925 
X-CRM114-Status: UNSURE (   9.64  )
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
Cc: Mark Ruijter <MRuijter@onestopsystems.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 11:41:54PM -0800, Chaitanya Kulkarni wrote:
> From: Mark Ruijter <MRuijter@onestopsystems.com>
> 
> From: Mark Ruijter <MRuijter@onestopsystems.com>

That From line seems duplicated.

> Signed-off-by: Mark Ruijter <MRuijter@onestopsystems.com>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Please add a very short summary of what you changed in [] braces
before your signoff.

> +	down_write(&nvmet_config_sem);
> +	len = strcspn(page, "\n");
> +	if (!len)
> +		goto out_unlock;

No need for the lock until we free the old subsys->model and
assign the new one.  Which will again simplify the error handling.

> +++ b/drivers/nvme/target/core.c
> @@ -1419,6 +1419,7 @@ struct nvmet_subsys *nvmet_subsys_alloc(const char *subsysnqn,
>  		kfree(subsys);
>  		return ERR_PTR(-ENOMEM);
>  	}
> +	subsys->model = NULL;

subsys is allocated using kzalloc a few lines above, no need to zero
->model.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
