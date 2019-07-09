Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A1D63D3C
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=mNwn4MVNNXgnSX
	LTT4OAIzZI25ZBCJ1h3Od14w2xuHUvql05XMT716XAC8ZGtlEzHMKL89YArn17bxgVDg/T1eUDRpa
	YEG442vMmX082NRT8+rVwLbw7zWrUr6fb6JnnEgL1Aivz2EXVHN5KUJdvEuHEJvRo955t5FYKhoGp
	RTw51i7FhWA9UB/FjtKusHOwgdXVXYR/BO6zZMeL1dF6lsUM4uNRfjeTTYIRpf+aGu7Yu4cAochcr
	pjnT2LZbmcS/Anmmo1xr2PbRU6ufO8RQVcKAya1/0PdBBwa+43agetcjHqdpHcBSTg9LDi5RbXMMe
	Mu1lnw/GZ0uH+qj6Z0mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxZ6-0007FK-T2; Tue, 09 Jul 2019 21:22:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxYu-0007D1-5f
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:22:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 878DB68B02; Tue,  9 Jul 2019 23:22:06 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:22:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] nvme-pci: Check for null on pci_alloc_p2pmem()
Message-ID: <20190709212206.GE9518@lst.de>
References: <1562605511-6564-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562605511-6564-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142208_385660_938CBFE8 
X-CRM114-Status: UNSURE (   5.00  )
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
Cc: sagi@grimberg.me, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, paul.walmsley@sifive.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
