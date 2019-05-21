Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E8D24874
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rUiL73AsMz2DLSFqSSSYsFqqMHmLgcRa1gAgHyQ3Q8=; b=alKyut2QCAGd2z
	UDIp7bf69WAR2jJcQLvgNyb0+3v60ITT7Mg22nykw8zDtiKt09mafAzAFagswNitPA9FUWxOBQ+S6
	2FodJ3sl3OqgID5Lof/WGrI7h5pnk7z9cxlMFYsYiJ6XL44cPPe8Y94aZ2/kFUlwAxRMqDNRgEwjG
	x2tBdjs0xZ1FvKTGj/Igyfjs5MNvbB1Ue5u8BWBhLaAnm3WdKiMpkCtY549sEapfXUE4CBrV7UURr
	XnW1J2tPt5m3/+Cc6Zt6Ubmzng2Ww1pyuVthYqRLrjhXFswe3qCK4lbgzqmjJQ5HaDQyrySN88ICs
	7DH64uRKYRiiKHcRmeHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyf7-0004am-UK; Tue, 21 May 2019 06:54:13 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyf2-0004aE-QD
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 06:54:10 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 2BBDE68B05; Tue, 21 May 2019 08:53:47 +0200 (CEST)
Date: Tue, 21 May 2019 08:53:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: xiaolinkui <xiaolinkui@kylinos.cn>
Subject: Re: [PATCH] nvme: target: use struct_size() in kmalloc()
Message-ID: <20190521065346.GG30402@lst.de>
References: <1558076615-8576-1-git-send-email-xiaolinkui@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558076615-8576-1-git-send-email-xiaolinkui@kylinos.cn>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_235408_999202_3B744485 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks ok to me, although for a fixed size argument the whole overflow
detection thing in struct_size() is rather pointless..


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
