Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8FE98895
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly6xvuJU+Kj8p9hs12AepK77ZyobhPwAnAKeCQp22lE=; b=WuT+f+GRBMG6eA
	zZXk+Eb8cZlyeNZ0aERUyNzO00bo6BNIKlAd5WE9aQJi5hOjT0Iy87/jUI1f1WNGju+dZRMjBTo2T
	Y53Hodc6v+EKJUzjIIHVzzivTFO72S/jcDOb29eexCr0yuk/IK8ev1Q9FB9uBS1f54rIIOiiKmvaw
	THqV9JAUH1cgmXWIUvqjmWBMB/mufIAgVTFN6m+nXv/K6EQbc6jwG8z4c6rlCyNFwWgjC2mkDTsHv
	g1WIxYrmaAllztcgIqv70jtvYu4KhyUGVaNGse983EVPtM/et542lpNIAA8KHKpuhTd6DaGlQQZXf
	YB6gTiZTfRkreX+3wA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b8i-0006Xz-71; Thu, 22 Aug 2019 00:39:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b8c-0006Xc-Ry
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:39:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9569A68BFE; Thu, 22 Aug 2019 02:39:35 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:39:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 2/6] nvme: return nvme_error_status for sync
 commands failure
Message-ID: <20190822003935.GJ10391@lst.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-3-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173939_055047_8C1543B7 
X-CRM114-Status: UNSURE (   8.42  )
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

On Fri, Aug 02, 2019 at 07:49:51PM -0700, Sagi Grimberg wrote:
> callers should not rely on raw nvme status, blk_status_t
> is more appropriate.

This is changing the userspace inteface for the ioctls, and also in
kernel space we have various callers that careful check for 
a negative vs postive status, which are going to break because of this.
So I don't think we can apply this one.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
