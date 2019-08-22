Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C15B988D6
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QAkWfH+Ex6d314+NSenOBCxfNNQ14BL+UySahKwGBg=; b=txRy8ODk1/LkA1
	p+zORaF7ZZ5YxCVMyqjiWJQBvjE9mhMJpRyOCA5tz11ykNAN92n4jv0MDVqY3sl7SyVHIymGKvNF4
	7vLTfUiqDNS081i2B+i4+Iamym2G1Flxa6Pb6E6o9pKHScozkqOrkd/fKvrgmgaoUyv0DbTYdPS4g
	LAkj5+QJcCT6YzW7TCChdj5S83dFnGZ4aTeOwSAMX9F73pa43RSCtCyKTQzHWBhefi64A/at3x+MH
	+8QbBLA5hfU1HgmuTIKoeAio2nfYQR978nibjwY29IjOgTuOAutKknKol+ByV8XhTIdCGy3s256b+
	HndbHov1N++PqXLBAC3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bUb-0000Vi-Je; Thu, 22 Aug 2019 01:02:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bUT-0000VN-TA
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:02:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 761FA68BFE; Thu, 22 Aug 2019 03:02:10 +0200 (CEST)
Date: Thu, 22 Aug 2019 03:02:10 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 2/7] nvme: return a proper status for sync commands
 failure
Message-ID: <20190822010210.GB11104@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-3-sagi@grimberg.me> <20190822004447.GO10391@lst.de>
 <45d229f3-8bd2-39f9-a5d3-a67e5378cf60@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45d229f3-8bd2-39f9-a5d3-a67e5378cf60@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_180214_308204_ABD04080 
X-CRM114-Status: GOOD (  12.69  )
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

On Wed, Aug 21, 2019 at 05:54:19PM -0700, Sagi Grimberg wrote:
> We started by returning blk_status_to_errno, but Keith said there
> are a few places that rely on the status code to be positive to distinguish 
> between a responsive and unresponsive controller so
> we chose to return blk_status_t.
>
> Do you prefer that we keep it an nvme status and then the callers
> can convert it to an errno with:
>
> blk_status_to_errno(blk_status_to_errno(status))?
>
>
> We need the return code to give us insight to what went wrong...

I don't think we actually need the errno anywhere, see my comment on
the last patch in the series.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
