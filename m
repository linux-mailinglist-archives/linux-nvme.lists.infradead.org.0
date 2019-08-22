Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14732988B3
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsA4lEYPU/sAWsbPUszziB/LGCrxaxolUScF0+L43CQ=; b=l9akQa/AdpYnqa
	cEG324mOzKVe6sAESqKogBw6rPLXCtqjFP4ad6HIMAoMLlTPiIqnb/Us470XpZyJ56hN8Nd7GgKIz
	BOKRXRcWuvdDhAzCwHF4Pq78tm7BgZ0jVX1xc4Hd9OuiuYBS78STqb1CbccgJ2Cfv0uBRw6sn558h
	XVWgXyK+xcLR8b5djQTzleb76GPh3QTSgSlq7qCp1zcNrDFyh4Sw9VGRRL3jZjLKI2ujWRNgi3PeV
	rLmi1pOmE1mN1m59CYpBqlUojDy9u1LHBbgQnxLJ0x+6UQO4ndQDm4nNZWb8MDKsc+iR7CgCM0FWO
	UTVldZc5XpAMZhR5/uRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bIe-00039r-II; Thu, 22 Aug 2019 00:50:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bIZ-00039R-5b
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:49:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A274168BFE; Thu, 22 Aug 2019 02:49:51 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:49:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190822004951.GQ10391@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813064304.7344-8-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174955_359830_822D642B 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -		if (ns->disk && revalidate_disk(ns->disk))
> -			nvme_ns_remove(ns);
> +		if (ns->disk) {
> +			int ret = revalidate_disk(ns->disk);
> +
> +			/*
> +			 * remove the ns only if the return status is
> +			 * not a temporal execution error.
> +			 */
> +			if (ret && ret != -ENOLINK && ret != -ENOMEM &&
> +			    ret != -EAGAIN && ret != -EBUSY)
> +				nvme_ns_remove(ns);
> +		}

Uh, this is pretty ugly.  I'd rather factor the bits in revalidate_disk
after the method call into a helper so that we can call the nvme code
directly without the block layer roundtrip and just change our own
more well defined status code.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
