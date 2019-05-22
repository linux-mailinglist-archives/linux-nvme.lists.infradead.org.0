Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BEB26872
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cRXz8L/8ZQNSH0J1dw9LwX0XTPPc3/6VEgd9FuIQpdo=; b=kcK
	4bWbV6BjypXL4pkd9XOFul3lOfBWr0XUpabMrQoxDUxqgKy+sDhHfVbfQm2w2Zff6Hxkq1GS2wg/F
	4AYsrFGJbM7D8cnRX5c/FDn4nOe5WSwMWJPmRpadRjP/m2yRufXSCxJIZQJ8iO1SGUiSXH9qZhxi7
	2z+1/o58Xr19Va3wJczPewXKiR8Ucex5LFPHzTdCZvLarW6ugD2zVH9xwNezEUTdebEbgwmiCfO1k
	zH6+ce0x39p5VJakbBesZa7LeBgAALmE7RIJ4MGvLhekP43+DHKClxA9KS0R/uFECuTYk8Ii+7blj
	UfbDEEuKgH8AYk7k7yEQeCw3N/8dyvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUHi-00017c-F7; Wed, 22 May 2019 16:40:10 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHX-0000uZ-0W
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:01 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:53 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAM001383;
 Wed, 22 May 2019 19:39:53 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 0/9] Add Subsystem/Ctrl/Namespace relations
Date: Wed, 22 May 2019 19:39:44 +0300
Message-Id: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_093959_505925_AF8FDEEB 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: maxg@mellanox.com, martin.petersen@oracle.com, shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patchset introduce few small bug fixes for memory leaks, improve
coding style, improve code readability and mainly focus on the "nvme list-subsys"
command. This command will show the whole NVM subsystem list (same as "nvme list"
does for namespaces).
The patchset ends with adding namespaces entry per each ctrl in the system.
Actually, at first stage, we'll print only the namespace handle (nvme0n1 for
example). Later on, we can add more attribute per demand (uuid, nguid, capacity,
etc...).

Max Gurtovoy (9):
  nvme: update list-ns nsid option
  nvme: update description for "nvme list" command
  fabrics: Fix memory leak of subsys list
  nvme-print: fix json object memory leak
  nvme: fix coding style issue
  nvme: update list-subsys command to show the entire list
  nvme-print: Introduce show_nvme_ctrl helper
  nvme-print: Rename "Paths" --> "Ctrls" for json output in list-subsys
  nvme: Retrieve namespaces during list-subsys cmd

 fabrics.c    |   6 +-
 nvme-print.c |  51 +++++++----
 nvme.c       | 274 +++++++++++++++++++++++------------------------------------
 nvme.h       |   9 +-
 4 files changed, 150 insertions(+), 190 deletions(-)

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
