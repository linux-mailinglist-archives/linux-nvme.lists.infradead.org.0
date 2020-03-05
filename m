Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4E317A49F
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 12:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rvpSvLkUt89BJJAk0SedJaZJB73OO0XPxarHGTHb4iY=; b=q2N
	1kjiuGCQIfYa+ZXKBYahdzBrpGKjZTviCOeOezS/5pPAtgX7UKFkDWCWqcjXqBJ8LiSwdHW3BZMrm
	Nssf2/wFUofnosEvfr7RCAsN2HMzPVOQOed7rkmbLkTuMbDH2qYqQfSagBHG4su5F0OZ9d7KQVlWB
	jL2/9yQj9xLWLkxrvkWVtGe3rOy4hzQqzYrF4991RaioV3q0pgvUjHOptWFuPwmBM2hGoq/bIB7ZE
	diKq041owXNXXlSiNAwCt0MeRYthZ/bqr0c4oVL5ok2c8dv2Q6LEn+uJoZTb648GkumnCUBSWJHmW
	LH0j+LgobAK37tWR8PuzMS30tTUFspg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9p3s-0005Hh-Ux; Thu, 05 Mar 2020 11:53:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9p3o-0005FY-Ur
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 11:53:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4FA8EAD5F;
 Thu,  5 Mar 2020 11:52:59 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Omar Sandoval <osandov@osandov.com>
Subject: [PATCH blktests 0/3] ANA and fcloop tests
Date: Thu,  5 Mar 2020 12:52:36 +0100
Message-Id: <20200305115239.29794-1-hare@suse.de>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_035305_182991_76587618 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Omar,

here are two small tests which have been lingering in my repository
for far too long, so I figured it's time to finally post them.
The first is a rather trivial one for testing ANA states, the second
finally adds a test case for the FC Loop driver.
It also serves as a template on how to actually _use_ the FC Loop
driver itself :-)

However, that one uncovered a use-after-free issue in the NVMe-FC
stack; check the 'Fixme' line in the test. As it _might_ be a generic
issue and not something specific to fcloop I'm posting it now to
allow other people (Hi James!) to reproduce and possibly fix it.

As usual, comments and reviews are welcome.

Hannes Reinecke (3):
  nvme: enable ANA support
  nvme/033: add test for ANA state transition
  tests/nvme/034: Add a test for the fcloop driver

 common/fcloop      |  58 ++++++++++++++++++++++
 tests/nvme/033     | 139 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/033.out |  18 +++++++
 tests/nvme/034     | 122 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/034.out |   3 ++
 tests/nvme/rc      |  88 +++++++++++++++++++++++++++++++--
 6 files changed, 425 insertions(+), 3 deletions(-)
 create mode 100644 common/fcloop
 create mode 100644 tests/nvme/033
 create mode 100644 tests/nvme/033.out
 create mode 100644 tests/nvme/034
 create mode 100644 tests/nvme/034.out

-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
