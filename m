Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15265F693
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 12:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s+4yD2nFyUwoPFk1o6N71U2riiVVsQmlEBef/Rrb7D8=; b=dDu1ejngv6grwu
	tQMRTrpf9faenU3cFtd/U+k1grA21Tnci5v+NZOt3g29bNJIfbAewqWOzuPfuUbkKAXUCKuJAzpPH
	DppdE9yTX+RvyMduy8RNYGzLnaG8mwR01jV57yvFSTP/3lT/KY6L8S52t3wA5X5hcefon9p4cn8P+
	EGdzIwf1dyhZWn87ASFRNpkfBCi02PasURZn/O+/+SXNTduOBjOU1HhGQTtUt6trt55RsPcxDcL9A
	k4iMqDhGl/Sx3HJioyyFmxF88v8MI6zAI83lDlMaQiFwkKbn3NTjVq+R10/yPXZRB7A5PBILPCa9g
	IQcPNMQlRaimS6l8+6Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyvl-00049k-7q; Thu, 04 Jul 2019 10:25:33 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyvH-0002ln-Ku
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 10:25:08 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 10E8680050; 
 Thu,  4 Jul 2019 10:24:54 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 4 Jul 2019
 11:24:49 +0100
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 0/3] Miscellaneous changes for nvme-tcp
Date: Thu, 4 Jul 2019 12:03:25 +0200
Message-ID: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24738.003
X-TM-AS-Result: No-5.826100-8.000000-10
X-TMASE-MatchedRID: CeFUhkA4YSYiLS38rUYb5G0WRq7KHlv4NV9S7O+u3KYgcEd8uJSjxE06
 vY7ZUz/nGR4OqTYtfltdWx3O9Fa7MnWqLenww8qH+CjwEqX1p7kA+JHhu0IR5mSH2/wFpiOoTx9
 jhIf/nmxzbIDXCSpv943TsIQwTqDSMDvZPMbvTD6Q9kHf42ybZHqLr3o+NE+I7XGWBpshCG+jxY
 yRBa/qJcFwgTvxipFa9xS3mVzWUuCgZHIBpyeFpsZJla8C0hwbUYsW811U7DRGXttMD8miOyBmi
 HfPafytftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.826100-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24738.003
X-MDID: 1562235895-7Wt0ZpQA2lIC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_032503_726897_405C4E05 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A few unrelated changes for NVMoF subsystem, that was found during testing
of NVMoF TCP.

I didn't add any special comments inside the code regarding reasons why
that was done, as I assume people who interested in this will take a look
into the git blame\git log. Of cource, I can add this comments into the
code and resend, if it is prefferable.

patch 1: just a hint message
patch 2: found during extensive testing on various filesystems
patch 3: found during testing on debug kernels with VM_DEBUG enabled

Mike Playle (1):
  nvme-tcp: set the STABLE_WRITES flag when data digests are enabled

Mikhail Skorzhinskii (2):
  nvmet: print a hint while rejecting NSID 0 or 0xffffffff
  nvme-tcp: replace sendpage calls with sendmsg calls for SLAB chunks

 drivers/nvme/host/core.c       |  5 +++++
 drivers/nvme/host/tcp.c        | 40 ++++++++++++++++++++++++++++++++++------
 drivers/nvme/target/configfs.c |  4 +++-
 3 files changed, 42 insertions(+), 7 deletions(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
