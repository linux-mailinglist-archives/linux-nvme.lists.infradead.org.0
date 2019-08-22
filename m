Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4C398899
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUU2es4FP2gBPscLbOkkg8fdqSAkLW7L6o4Ht5O0hhQ=; b=nPR7aRBiEpBPeU
	pLCmzes7aGhdG0iHxVK7qVAJB4rn4DG6Du0AbM1rOAA5ZnbkQF8/ssbf/E+LklbZ08eI4s/bCmCq5
	jsoGlP8xNk33lnEw3dRlmOqy0skCjQJUMYfUQQ7jbUSu+HT6j4LCSDxuFQ5xfVxGgVA5jcueXaQ7Y
	61fTTYvWq67i4K3gyRZdUrnNFrynPdi+1p+0aC1CdOq7oWUm9v9/X6I4JHTHp44TdzGqZ/t74ACJj
	o0cirJ+uZoqBkhaK2Moin24MSBlptxHfM9GOQzabi6MmkkmN2rXzEPd2zhZQAc2nozfRYtdg0wi3N
	hSb905D7Rj71Wceqvwzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bBC-0008J0-3W; Thu, 22 Aug 2019 00:42:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bB5-0008Ii-NJ
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:42:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 02AED68BFE; Thu, 22 Aug 2019 02:42:09 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:42:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 4/6] nvme: make nvme_report_ns_ids propagate
 error back
Message-ID: <20190822004208.GL10391@lst.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-5-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-5-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174211_910855_C9447E65 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 07:49:53PM -0700, Sagi Grimberg wrote:
> And make the callers check the return status and propagate
> back accordingly.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
