Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F14BB6A9
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Sep 2019 16:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zZAc6y2uduf60lFPt8Iw78aBtWiy3pHHDNSvlV4+EM=; b=bcv4oCC8yh6VEY
	uZ+1n3bEOjKLes1lqE4OkHZnbscd+hbgKv7HCvo4fb7lr36nh7/qYzfa1S80hbxzAdaERSPNFepdh
	7Bfsy12hkBup5JjrS+uBvNWkjI+Lj7A9idaY3WqSF3e0mnk2ytdxpLoYMYj5/AbLUyfn93iZ/oT1k
	HVYEc0wrkAJsZwWg227auJtn4fWvev7uKDYdriDNz1mQOSOCCnnCxHfAf9Af8eNCsgfqjD6j1ZPYe
	srYKTczOjxqrTknQPXg0MqVsn6uFhqfNFwUfL9Qzagh8mYIXAZyRqvctPCVnYAks4pujr/0Tdy79l
	b/ebAGgaKGQf4LBe9JNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPIW-00032b-Op; Mon, 23 Sep 2019 14:26:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPIP-00031y-KJ
 for linux-nvme@lists.infradead.org; Mon, 23 Sep 2019 14:26:34 +0000
Received: from C02WT3WMHTD6 (unknown [67.133.97.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 757F520820;
 Mon, 23 Sep 2019 14:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569248792;
 bh=tD/iMTEyNBAhSK5JrhlSYSstldnqfYmpNxrduOLNqs4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IY17oT1Ilf0WMWp7TuCUHzx14ywB/SVQCpuD8BnSDFZ3bwKnLdL1LtSBL+D08r9xM
 KCjYPMFmsbDch7ZmPBEtBBHUG6tzF4ctoRPLkJPnjERvXDn7f6yyeqRT3E2ZpwiTth
 7pV4knZYBw2h8KzGvbHzILBRY8b/sTEH3TbCBsDQ=
Date: Mon, 23 Sep 2019 08:26:30 -0600
From: Keith Busch <kbusch@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] nvme: fix an error code in nvme_init_subsystem()
Message-ID: <20190923142630.GA14804@C02WT3WMHTD6>
References: <20190923141836.GA31251@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923141836.GA31251@mwanda>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_072633_690933_8D0E200F 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [67.133.97.98 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 05:18:36PM +0300, Dan Carpenter wrote:
> "ret" should be a negative error code here, but it's either success or
> possibly uninitialized.
> 
> Fixes: 32fd90c40768 ("nvme: change locking for the per-subsystem controller list")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks, patch looks good.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
