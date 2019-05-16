Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462821FF80
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTGf+pnoKoGyVORD5+c/av2spxy5qAxfg3UEKnRokd0=; b=E+nsG53WmbeXUR
	zknvRlFzmDoF0zoVjmztv4Ill5ld4fFTSRIoNOuyjQ184QoV1Xp0XKKQRvr3+GegBE3/WQlz7853V
	9mORTcAs0ZTHEJB+OnBJsIkeRnqwEyjqkF+815nM4JCc5/WJJ7rxoiPzy9AOKhjAxnPNPmmIwhP3r
	AwE9WSsZQTb57OkGPFBu29CuwOF5W0n/cHiiMo7MlmfJRl7kRrFD/KrjjF/AaLBcfO73IZZdAW1md
	WfmE/Ix0pZuYXCBMELoH4N+oCG5KJBf537gXXKjzETN3qWh05GXnEV+5KYgQ3gsa7knj9jWybewgf
	Fg1Nmm79Vuvw3D47DXWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9qq-0007CS-Aj; Thu, 16 May 2019 06:26:48 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9ql-0007C5-4d
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:26:44 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id ABA6467358; Thu, 16 May 2019 08:26:22 +0200 (CEST)
Date: Thu, 16 May 2019 08:26:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 5/6] nvme: Export get and set features
Message-ID: <20190516062622.GB29930@lst.de>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-5-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-5-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_232643_334221_5E6AC9E9 
X-CRM114-Status: UNSURE (   5.79  )
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned fid,
> +		unsigned dword11, void *buffer, size_t buflen, u32 *result)

Nitpick:  an we call this something like
__nvme_getset_features?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
