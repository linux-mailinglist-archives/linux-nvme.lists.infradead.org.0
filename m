Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0B31C6986
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 08:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTEq6mhvJOiXFOOMVE781dC9Q3zmie7EcBY0P7C6RcY=; b=b0bVqk3vunB3Io
	82rjMG2exAjf/KUdEeqJ2MoZyRdIoLjo9RLeVeRyh2HTdixNXmTTbE/73fNp6+pHAnCImRzEK7Dq/
	lioDkX3ZvTFMGCYOKo41Cw0cBoX421dN35Jluwsh0mLs44jZwdsKni3kISYshfN+HfvOYJF5Try/s
	ZWIXsTnvE5zRBzNAcawOqFgro6Pmkr7SjMS/yN4fuEbfj/sK/t0ySiYf6IXx/UcRu/lGdS81+j4VR
	uklipYoeFwHM6zsnxm2pthISJcZcccUIAyaRGUllMuIecch0bG0QTS/PChtYmYNPvXuHzubrWOrLi
	CtRcJOx+TZS5MRMras+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDzv-0008Pq-2w; Wed, 06 May 2020 06:57:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDzc-0008D5-9c
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 06:57:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 59B2568C4E; Wed,  6 May 2020 08:57:18 +0200 (CEST)
Date: Wed, 6 May 2020 08:57:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V2 0/6] nvmet: configfs code clenaup and fix
Message-ID: <20200506065718.GD11866@lst.de>
References: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_235720_514992_80B00488 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
