Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB053E4085
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 02:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4k0b8ZSkO19ApXMSoZw1Ycqs24WkeHIdn//HZ5O4Lc=; b=ayfuluNgPHmp01
	zqOcDDwDur+SNDUpc3sq2oXhf1QdzIEZbkcumwyjl3ZXaYcbkNwjT5SVYAgAqtltTm0CvOTOVqx7w
	b8kbIQj0uUfk0GSjwMvj2pDairzEqmaREJqNL8oF02VKVlPyM4xHwRFngURfjKaUrgl6EaVQGhFgP
	bHtT5mwrEcLCX4SvGtdOHQtvLfODUAY68reLlGpjC8ec0ykZfyx4+R4OgvReKl9MdaKP8kwBORwZ8
	/piXk4wz3n6f6+fsVqMqPKCeOF4LZRleH9G1dXDDx3agEeAv3Fpj0pvQ3iSQ6AP5kxXs/PNdNgOQ/
	Qpl5E6f1vrYBfM8O2SZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNnKX-0006Zb-0T; Fri, 25 Oct 2019 00:19:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNnKT-0006YO-CB
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 00:19:46 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06BB421929;
 Fri, 25 Oct 2019 00:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571962783;
 bh=qeb+RACViZjfla1NOoCoKbMc/synwBpBMGikLRyGhe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O+qdYz4m2eXzDmke+fcya7AMtL+kYEqJ67POsjO166w1gMwnumAs2fyFdnPBe2Hnv
 1bIOC2Y37sGz5g9YqX+JmfHmBInXQu9sBFduC1jjwyQV1GtJ+sQBHv9IZxVY+iM1fq
 XK5/e8PDMtn4kD4d5vNK75HAi7R5Xj0AZPORRres=
Date: Fri, 25 Oct 2019 09:19:38 +0900
From: Keith Busch <kbusch@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH trivial] nvme-pci: Spelling s/resdicovered/rediscovered/
Message-ID: <20191025001938.GA28602@redsun51.ssa.fujisawa.hgst.com>
References: <20191024152400.30082-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024152400.30082-1-geert+renesas@glider.be>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_171945_438741_8AB69E5F 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jiri Kosina <trivial@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.5

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
