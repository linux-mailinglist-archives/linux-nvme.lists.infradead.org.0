Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2318DC28
	for <lists+linux-nvme@lfdr.de>; Sat, 21 Mar 2020 00:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p6FgZH8PQxAKC4VxiPQ9rrtNVihG81fAJXIr53FW/+E=; b=NI/0150SnE0jFl
	MF9R9+7LkrIQb6p/i/gtkUl0wsKwFvOqHnnOme67isdgJ8xI+uzDm9onpqk5a1q8NxpFrgXQp+Ob5
	CKGTzlPFKjEU7D1C90ZheEN2Duy5Mo/huXmPejT8IWwAplk28/KPKZTV/xXnOY21qn5V8wG8/YCIw
	Mp17vItzhhkBfHesd7zZ7lbg5FTBMz2McZi6uTWwudCTcAiNcNLepQFHGA7kS+jM046qo3JOZw1o+
	fM8ir88fkcPJiiRXbtawn7OXMKMZHyxLYL/J28VXXJWHVx2k/1KYxYch6PoMGH8lfFPC8zN7I/jV5
	gId35J4WsGQ7KBLth9dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFRJ5-0006MS-3Y; Fri, 20 Mar 2020 23:44:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFRIu-0006JA-1d
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 23:43:55 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F2AB20752;
 Fri, 20 Mar 2020 23:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584747830;
 bh=qFsfrhTniNLOqEx/Jn2SvwMsFKcg3+ls5vvJlA9Klms=;
 h=Date:From:To:Cc:Subject:From;
 b=YssQNzWLn0HMsILwpAfhM26+uvBCX4TXHf59+6ldWFGnVsLgzHR3977zAxRegagSY
 8VZiaq/5F0gSuiNmk+5XOB1Hwc82noDubuY9CCZ2A06bT0ISVA9iuP1ZrHj9zM1MGJ
 ZZm2cxDVN3+vaPwEQT69F0lkNI/mnsvxRaBwMBS4=
Date: Sat, 21 Mar 2020 08:43:44 +0900
From: Keith Busch <kbusch@kernel.org>
To: axboe@kernel.dk
Subject: [GIT PULL] linux-nvme 5.6rc
Message-ID: <20200320234344.GA20291@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_164352_134712_B17C320F 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

Two late nvme fabrics fixes for 5.6: a double free with the rdma
transport, and a regression fix for tcp; please pull.

The following changes since commit dcd6589b11d3b1e71f516a87a7b9646ed356b4c0:

  blk-iocost: fix incorrect vtime comparison in iocg_is_idle() (2020-03-10 11:37:00 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.6-rc6

for you to fetch changes up to 98fd5c723730f560e5bea919a64ac5b83d45eb72:

  nvmet-tcp: set MSG_MORE only if we actually have more to send (2020-03-21 04:37:53 +0900)

----------------------------------------------------------------
Prabhath Sajeepa (1):
      nvme-rdma: Avoid double freeing of async event data

Sagi Grimberg (1):
      nvmet-tcp: set MSG_MORE only if we actually have more to send

 drivers/nvme/host/rdma.c  |  8 +++++---
 drivers/nvme/target/tcp.c | 12 +++++++++---
 2 files changed, 14 insertions(+), 6 deletions(-)


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
