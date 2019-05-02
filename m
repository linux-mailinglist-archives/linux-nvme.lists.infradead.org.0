Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B2C119E3
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 15:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INKKF//9aKNqOdjXdZC38fes585RiysnRhv3zDEAyLU=; b=oaQVdbitONL6qG
	jP6L6/h14jeSajT1V5VM9goeZ3kHtxPhWhyNeFr2/WWVl98QRmpKrHWHCesC1pLRYstOKXxxuD9ib
	4QNEgGNdA/ZrXSDQevcEsQnXBRuGVdDTCSvJLYFRYfVVJAKUmQzFx2K/LqLiWZBoLGZ+nEqUCZ6me
	H674XPU8jF59ApDHmAXRmru66oO1xao6x6pY1M9q4b68px1/YcjxsaC11zzLVHXhHXQHWDDB05CtU
	wvc4XyBKbAtfpsxt8MHrKJkyb7ypNWnzfj4ZwMaocJ/UpH/VVoAD9atXeti858vDrGOIATL1WKQxv
	JLK/bPBIUU1k6eLtO/eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBXz-0002jp-BM; Thu, 02 May 2019 13:14:47 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBXu-0002jS-Sz
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 13:14:44 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="296375187"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 02 May 2019 06:14:36 -0700
Date: Thu, 2 May 2019 07:08:51 -0600
From: Keith Busch <keith.busch@intel.com>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH 1/2] nvme/pci: init shadow doorbell after each reset
Message-ID: <20190502130851.GA28496@localhost.localdomain>
References: <20190502113134.20835-1-mlevitsk@redhat.com>
 <20190502113134.20835-2-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502113134.20835-2-mlevitsk@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_061442_947842_35557448 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 02:31:33PM +0300, Maxim Levitsky wrote:
> @@ -2303,8 +2303,6 @@ static int nvme_dev_add(struct nvme_dev *dev)
>  			return ret;
>  		}
>  		dev->ctrl.tagset = &dev->tagset;
> -
> -		nvme_dbbuf_set(dev);
>  	} else {
>  		blk_mq_update_nr_hw_queues(&dev->tagset, dev->online_queues - 1);
>  
> @@ -2312,6 +2310,7 @@ static int nvme_dev_add(struct nvme_dev *dev)
>  		nvme_free_queues(dev, dev->online_queues);
>  	}
>  
> +	nvme_dbbuf_set(dev);
>  	return 0;
>  }

Looks good.

Reviewed-by: Keith Busch <keith.busch@intel.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
