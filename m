Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E8D1E67A2
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 18:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzcYNYk6m9C/DXAnT8j7tgKRs6+tv7cR355E9HkZhsQ=; b=GHK30OYXvbhvtY
	vj8qQ9+5mbLMbeq2ybLS/Od8retv6Q4WRXbIZSp+97FwU9JMAi8/jwNM9p2EhChWgf21PMBQ4GroU
	WjFSGAdE4aYcIFEYklWfmCnu35GjG/urBvaiQX5gOerlmD1v3/A7zqGaHMe4OWsKwmggsBfogcPeE
	lceDvnsZVeLJMSKQqNfy5RkG9nrkTWdz2i25LNkU4dL7/ZJoc9DoqaH881IKSCgCd+/1U3Pamt33j
	uNaaQQ0Rb//5awwuwyVnjmiT4fPbu6hNARXOXZceJVdyK3im5iuf6kjeTr9yDX2BPsC2XJ8Ef3dD5
	BU4VfOeNLtD1GIF2HszA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLcZ-0007Tw-CK; Thu, 28 May 2020 16:43:07 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLcU-0007T3-PK
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 16:43:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DE5B068AFE; Thu, 28 May 2020 18:42:56 +0200 (CEST)
Date: Thu, 28 May 2020 18:42:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 1/2] blk-mq: export __blk_mq_complete_request
Message-ID: <20200528164256.GA25651@lst.de>
References: <20200528151931.3501506-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528151931.3501506-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_094302_972073_F07D6ADC 
X-CRM114-Status: UNSURE (   6.52  )
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
Cc: linux-block@vger.kernel.org, axboe@kernel.dk, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 08:19:30AM -0700, Keith Busch wrote:
> For when drivers have a need to bypass error injection.

EXPORT_SYMBOL_GPL, and as hinted I think this needs a better name.
It also absolutely needs a kerneldoc comment describing the use case.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
