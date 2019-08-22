Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5F998865
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opOj6o6m6Bq+wZbtCArf2xKxyV/g0psU36oBzo/RtI8=; b=rPcL5vpnvgwXpI
	PHqPXunVkO4ReusWskfxbfK/iv1shSsHdmFe2dFSufoNGV8c+ozH9olue8hPRCAwXZb0m4Q5SAqQp
	CjeGqDRV6+PEtS2Nlf27iftDh03MJ0pH6vDXp38wAOUU/N9aFZRR+nUfmR73EE1DMGlwiVR5KDwF5
	oKV7foPKhkXZIwfd8wxa9RXAWZlxCGa5rvYZEfxnqOgDkt8db0MgowekQib1cxxozglBXYZUctYJQ
	cQZxv2n3Dd5ThJ7jtK/Scu+iV1hAh5kMjvlFgKuKDzablqoWruYBrtciQwumA5MYXo1b0gPnMZ7d9
	7gv3pWGELerWFz1nekwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0amW-0005JJ-Kw; Thu, 22 Aug 2019 00:16:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0amR-0005Iw-7S
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:16:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 83B1868BFE; Thu, 22 Aug 2019 02:16:40 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:16:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
Message-ID: <20190822001640.GM9511@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
 <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
 <20190709212717.GA9636@lst.de>
 <e7e4ec9a-b644-58a3-77b0-7828d73831ca@kernel.dk>
 <4e8ec90b-b2d9-685f-6b39-1113688dce5c@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e8ec90b-b2d9-685f-6b39-1113688dce5c@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_171643_419870_9C87F246 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good for 5.4:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
