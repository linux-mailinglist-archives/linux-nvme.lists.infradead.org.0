Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F4B173DCE
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 18:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s0oqOpOlGHR1Ni10AYIeECRhiZFJSfzz/xX5IdAWBwE=; b=QW5Kq4Cz4y8oQu
	L5c64Tff5KMJD0es7bTVJtzjjAikbRBlEE+Xj9kh9UN3fuxbcj7+IsiLqcHd6Z9Rr0lEnscW23IM2
	OZsq2KjVP4W1qbAKT0zwaC6ubIAi6752LpHd/bFy0TcgX7bp9oDRa127bk4knw4MOSAG8xVBLM1Fc
	3r2YQ95jrccsl+etue2msdlMsaWwlmnP/qx/4vqQhOEzcT7Aa9NEm4yOWNwnf+d4YvNQ3tCTqqp/b
	XMcJhKpqp72cEYGJhLtAjiZVPR7P/O5JbcUzsobRQFszM4onuFxp0VeEOfhz1A0LKbsQJi6D5iAAE
	+bH5dzZmYAHftrsKfT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7j0f-0007ES-MM; Fri, 28 Feb 2020 17:01:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7j0b-0007DY-Q6
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 17:01:07 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EA142467B;
 Fri, 28 Feb 2020 17:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582909265;
 bh=hSHvI2nwFw6e8oy9af1QwZVyzl/91vXH9imMf1qmDm0=;
 h=Date:From:To:Cc:Subject:From;
 b=NgY/GQVJmVZLEd9IeEm5iX+kn2xxh6Jzch4vTMZtJINtb6ygp/vgCDwVIkh8wMt5M
 pU1Dh23EHm9nKXqOCiqrjUi1nsF246xEzauNukTPan2v1VbfzeBo9kV+XzP3NZegel
 uju/+bbMLsvT4BtdilNOme41GNeFGhtMeN95H6vo=
Date: Sat, 29 Feb 2020 02:00:58 +0900
From: Keith Busch <kbusch@kernel.org>
To: axboe@kernel.dk
Subject: [GIT PULL] nvme polling fix
Message-ID: <20200228170058.GA2044@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_090105_865828_F69811C9 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following changes since commit cae740a04b4d6d5166f19ee5faf04ea2a1f34b3d:

  blk-mq: Remove some unused function arguments (2020-02-26 10:34:41 -0700)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.6-rc4

for you to fetch changes up to 9515743bfb39c61aaf3d4f3219a645c8d1fe9a0e:

  nvme-pci: Hold cq_poll_lock while completing CQEs (2020-02-28 01:32:14 +0900)

----------------------------------------------------------------
Bijan Mottahedeh (1):
      nvme-pci: Hold cq_poll_lock while completing CQEs

 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
