Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E76FB8F
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 16:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t35yfCtzq5R6D8Lrl2iJO+zoveUkNtgJuNwBoLHz4vA=; b=DD9WG8eogOOfN/
	uHE9hdkYkv17Hm/gzH1VaU1xZYdY4uSc5WlEah2i3bziL0VXHx4GVIfxFQutsC0yONfzlBJ4K29hU
	EIdQZUfQMuwzU2Fv8xEC5F89xuWEMDe8xXX+KlWl+dTT62/zSB/VfOtPyx227xoKN0LfiqHd/GsMW
	XUsVHcAqBwO0bsvdM//uvBoeHgNSxBo4q+NzJH++qApW0fww3CbspHwUp65iNbz0BTNFuzD+/zP3u
	A79tZHYF53adh+YkXe++96Z66cMcjtx+cy9PIuG76tcbQy2Agbl8+g84omzEJA8F86jQQPECwHqm6
	dNI6mKSa+Em0i5GMgRKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLToK-0001JM-T3; Tue, 30 Apr 2019 14:32:44 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLToG-0001IS-Ds
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 14:32:41 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 1FD9A67358; Tue, 30 Apr 2019 16:32:23 +0200 (CEST)
Date: Tue, 30 Apr 2019 16:32:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Klaus Birkelund <klaus@birkelund.eu>, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: Re: [PATCH 14/15] nvme-pci: optimize mapping single segment
 requests using SGLs
Message-ID: <20190430143222.GA24666@lst.de>
References: <20190321231037.25104-1-hch@lst.de>
 <20190321231037.25104-15-hch@lst.de>
 <20190430141722.GA19100@apples.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430141722.GA19100@apples.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_073240_619662_D164F491 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:17:22PM +0200, Klaus Birkelund wrote:
> nvme_setup_sgl_simple does not set the PSDT field, so bypassing
> nvme_pci_setup_sgls causing controllers to assume PRP.
> 
> Adding `cmnd->flags = NVME_CMD_SGL_METABUF` in nvme_setup_sgl_simple
> fixes the issue.

Indeed.  Can you send the patch?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
