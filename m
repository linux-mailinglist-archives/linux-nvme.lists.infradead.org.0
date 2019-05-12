Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F267F1ADDD
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LEsGcxUINLXgqldGVd9RzVzr6hIb3NmiO2YybFjheO8=; b=TIz
	I1yWnhKH66CGXtnMKHG9wuXHkTXsVcN527wOvzFPllPSc9f0lwHPIJEScSXtzbfMJilFcnS7CG6Wq
	dp4kTvsOciZlgGHjHjEG6ZJfvBnwBsVwu/Teuzst9jr4yzOll7TtqCeDoBdp13FhP+Mn9fGx45Uw6
	gvfyd4eyP53lEI7Qz3VACGyyMCh2rOw39jAKR9q+JBdTSZSrqmoddimkJUb7fxMrnTtsEC6V9nMCz
	8XKotNpLr5ah1ovaCSrGbfXC1JLuaJBWX24+4hCNn7Xt0nlyJH02FaV11j3/PX9D1WW1PPbp93wwo
	51rdDzg4eMLTscKGZxdHbRwI2hMKJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgH-00058u-77; Sun, 12 May 2019 18:58:41 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgB-00058M-5n
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687515; x=1589223515;
 h=from:to:cc:subject:date:message-id;
 bh=fEZCrLEJE/nzwo4Byk+1eSSkH0ifaPVyaCp82cVK07A=;
 b=Hi0fzqW8p/Zm3+TgBtwblmDEt3eNFtXsbILp+57HZJhRE8zTWn+h9KPL
 sjs+JrAujyoOqB/4ZtoLuVf7H3t0msBQknAqyA3mcglslo+HR6VqQgDTW
 GAiCcn32aTCE2KZAkQupFsjiTxl0G5afYgDyDT/3yiHURhLSGEs302rH1
 dnB0tnj/IEBh+QeRJS2QWYiL2QolNyreTaFw3uzipqRe+SQSPiODdanxb
 b/Opp6LBprx9Q50jxEWVmadhUIqqQ6ELd+p/VciG/k7wJyUaHTf6gRbDD
 5kfR9yCxniV6Awu/oLR+SGnWmoM6Jraz65BpYV8GBc+H9ZRcU6ZvRJ0jY Q==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="214151049"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 02:58:32 +0800
IronPort-SDR: 2O2Fcz+EhBa92/sCzz8xBsyhZV9s5POlLH+ncVOXxCXtOKyu3u8Y4iinvqVXy7HYE+1sTheYi/
 UTQsrK1qDRFjXkSposUsxJTzcuRujmy0EmEoMQct3Wpuv/KjkwewEBC28AS2MGZ36IIDTjkGOJ
 w60iS7CcdFRjUo73PSerefFfc0O1KMiNYZivyhZnTPqAnoV4omXpnbQl2261T+9dEUaO5d+R9G
 hgGvqpf1kvQQO6cxMO7QE5QhDRDvxY2982CmHq3Huiye9RaHh6MBR+AOab0n+ysyrQj3CFYOMO
 +nOJkaYnsBJzHdy8nRh6SDe2
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 12 May 2019 11:34:27 -0700
IronPort-SDR: 3hBgegn7Rd+bSqaOXsD2xJJXQ5GzO0Jx0AtfjR9ONr9G9asrXDUKh2LM/obLPQgM09rH7nHiBS
 1vc5GYe0RJf7N+YdEkjvbSa5cULxfc/XI3Srg030qReIqIAG6m0mdRNPz9/fz5AV7cAva/KIOr
 8WqtG3bz7QBnAe7pH1lr7+izRmKbZ3Hk3Y+vysdA4yt5+Nv3kvMc09ViKDRkrkOJwpb8Nh9T3C
 ivp51sg1GrEHsZn0fxhBH2uIZrM07AKbJM7evzE1xq7VQ/OHKI0heX/7hiTGbcanWVC6hnTXR+
 w1c=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:32 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/6] nvme-cli: code cleanup
Date: Sun, 12 May 2019 11:58:14 -0700
Message-Id: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115835_254855_90E2D261 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is a small code cleanup patch-series for nvme-cli.

Regards,
Chaitanya

Chaitanya Kulkarni (6):
  nvme-cli: cmbloc code cleanup
  nvme-cli: code cleanup adjust if statement
  nvme-cli: remove trailing space
  nvme-cli: use uniform if .. else format
  nvme-cli: use uniform if .. else format
  nvme-cli: use uniform if .. else format

 nvme-ioctl.c    | 2 +-
 nvme-lightnvm.c | 3 +--
 nvme-models.c   | 3 +--
 nvme-print.c    | 7 +++----
 nvme.c          | 6 ++----
 5 files changed, 8 insertions(+), 13 deletions(-)

-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
