Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A978E9888C
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mof86zTN8wkKhKsAEdCqbL0jDSSKoGG20C4rsy+EHhM=; b=DqKRWPfWBRi76d
	nQCha6oj5LdKDo9NBaJhMOED10sHbZiH6PuWE0TWIfgolrxn2VYNDH0cOD1+4Ir8Z6Ta75inbz/tY
	r+4Q29t0dxmAhlL+yiN+WLwnp8FJSHuBVcR3eIortEinCvDHivoyJ6bhsl31e1N7TEIBYeCVpCiDG
	4RaLfJ1AspRTXOil0PZYqQpXNqoHJrKjmCVgRLepBLgdumJ/1FRFsJdTXIvxmW9x+Lgv1AkTOesZR
	CkX0Nv8BLGWlzO5wybG+++d5YERja8mZpdcuLvTJxuCgqVXEzlMUXPgBpjY1yp57TIj3l19rKZ/rW
	d1Odo7MSKoN3wpAGnn5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b3P-0004Aw-1u; Thu, 22 Aug 2019 00:34:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b3J-0004AE-Ln
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:34:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E5AB268BFE; Thu, 22 Aug 2019 02:34:06 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:34:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvmet-tcp: fix possible NULL deref
Message-ID: <20190822003406.GF10391@lst.de>
References: <20190808205522.24638-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808205522.24638-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173409_864039_56E1BB64 
X-CRM114-Status: UNSURE (   8.99  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 01:55:21PM -0700, Sagi Grimberg wrote:
> We must only call sgl_free for sgl that we actually
> allocated.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks ok for now, but can you also look into handling a NULL pointer
in sgl_free like in all other kernel free routines?

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
