Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F7EB22F6
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 17:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clbnKR092quK24XMIupo4aum1ClVHw+Lr2Z+zjLqvvU=; b=oikyhasSmnbJ5B
	m4eY4PNqTtYFQvPEwW/7TwjcPI/64q/D3EQlj1fA8wiGpocckpLMq45uCPHbjterzRqqtGXJ9sn+N
	CPNTZ132qI/OavoPjjsl+vbQjTWfosFm+4hE0paLzyWlTaRb6URHMPFqgMC/p+4Xgha2fMyfYhjJq
	YqoMT40wzmIZtTQEKzgRRnh3ZFu6nA+5ZtmED5Gb2lttQXxpSVBgSZwzr6wOb56lUELBICc2Ioco3
	1ZAxlnCcF6O6eZZMYTs70FhmskHfU2pJqsqTtD/Lh3Ndb+lm6hSO/U+SkraaRTPo+UQaOJzfnQwYX
	IqkfnDjZiz9ea3nRi1bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8n8z-0006rw-C8; Fri, 13 Sep 2019 15:05:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8n4p-0006MT-Se
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 15:01:37 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4602A2084F;
 Fri, 13 Sep 2019 15:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568386895;
 bh=1Xdo2c6tghvgBDonNRH+go/+Qm0mVaaiS2IQzkpopuA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xqhGnBs1ebUYfju+t+JxkqcgwmsarICITX+0tMz4G+2Jocqt5foDbYBlz90+ReUn2
 l5eoSaBn0REepPR7NFUHWaHJ7MSbFGCREq8Q9gPCSYbOxNaag/RCW5p/btFC1rxaCV
 TbGDbY5FvDgRGfC2M8Jjg8MHAlWG50LvixHczVaA=
Date: Fri, 13 Sep 2019 09:01:33 -0600
From: Keith Busch <kbusch@kernel.org>
To: Balbir Singh <sblbir@amzn.com>
Subject: Re: [PATCH 1/2] nvme/host/pci: Fix a race in controller removal
Message-ID: <20190913150132.GB17139@keith-busch>
References: <20190913024432.7705-1-sblbir@amzn.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913024432.7705-1-sblbir@amzn.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_080136_111536_798C043A 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 02:44:31AM +0000, Balbir Singh wrote:
> Allow the hung tasks a chance by unfreezing the queues after
> setting dying bits on the queue, then call revalidate_disk()
> to update the disk size.

Isn't it enough to just set the queue to dying? That should unblock
everything calling blk_queue_enter().

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
