Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAD974A66
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 11:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zcx0eqwFWM/DLjabP3B1YuzFDFNY2lPq7pb2/SeOezs=; b=TNPpIWZB39gMs1
	UT9SECSU7cd1MqQSYu/m29NUQIQjiMHIuGgdfNR+xcRMCtFBt2vYgEHJ7nHnP+Y/LiJqM2VXxnIyw
	HIKm5bcK+MujC6DybGzvfQBVHYFByzyrYlL3gGqLbIWA/e4r7l1uICl3UNuFDAfLEfFjO53A6XbyE
	XWptANH3PzKx3U9E4gpcclW7l+8McexeeBoPyDQIiMmjybLkdK3DT15Ty8APQWSSqjb19qK6ssg/q
	Pba5CoxmtuUBn558rw3Nmi/nq7MQtNTQ56NcZUpHEwOALFGTuCfMnCLsJefUjHyG9MhBff6/3692S
	q1Bxeaj+JmYP1j/2nuXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaPu-0007Ro-Ri; Thu, 25 Jul 2019 09:52:07 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaPf-0007Qb-Ej
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 09:51:52 +0000
Received: from 79.184.253.188.ipv4.supernova.orange.pl (79.184.253.188) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id 4cf206ac235193a0; Thu, 25 Jul 2019 11:51:41 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <keith.busch@intel.com>
Subject: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Date: Thu, 25 Jul 2019 11:51:41 +0200
Message-ID: <2332799.izEFUvJP67@kreacher>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_025151_653214_95E6B7EB 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Kai Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

Unfortunately,

commit d916b1be94b6dc8d293abed2451f3062f6af7551
Author: Keith Busch <keith.busch@intel.com>
Date:   Thu May 23 09:27:35 2019 -0600

    nvme-pci: use host managed power state for suspend

doesn't universally improve things.  In fact, in some cases it makes things worse.

For example, on the Dell XPS13 9380 I have here it prevents the processor package
from reaching idle states deeper than PC2 in suspend-to-idle (which, of course, also
prevents the SoC from reaching any kind of S0ix).

That can be readily explained too.  Namely, with the commit above the NVMe device
stays in D0 over suspend/resume, so the root port it is connected to also has to stay in
D0 and that "blocks" package C-states deeper than PC2.

In order for the root port to be able to go to D3, the device connected to it also needs
to go into D3, so it looks like (at least on this particular machine, but maybe in
general), both D3 and the NVMe-specific PM are needed.

I'm not sure what to do here, because evidently there are systems where that commit
helps.  I was thinking about adding a module option allowing the user to override the
default behavior which in turn should be compatible with 5.2 and earlier kernels.

Cheers,
Rafael




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
